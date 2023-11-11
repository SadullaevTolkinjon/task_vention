import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:task_ventio/domain/model/character/character_model.dart';
import 'package:task_ventio/domain/repository/main_repository.dart';
import 'package:task_ventio/presentation/widgets/buildable_cubit.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

@injectable
class HomeCubit extends BuildableCubit<HomeState, HomeBuildableState> {
  final MainRepository _mainRepository;
  HomeCubit(this._mainRepository) : super(const HomeBuildableState());
  String _search = "";
  Timer? _debounce;
  fetch(int page) async {
    build((buildable) => buildable.copyWith(loading: true));
    try {
      final CharacterModel characterModel =
          await _mainRepository.fetchCharacters(page, _search);
      final nextPageKey = characterModel.info!.next != null ? page++ : null;
      build(
        (buildable) => buildable.copyWith(
          characters: [
            ...buildable.characters ?? [],
            ...characterModel.results!
          ],
          nextPageKey: nextPageKey,
          error: null,
        ),
      );
    } catch (e) {
      build((buildable) => buildable.copyWith(error: e));
    }
  }

  onSearchChanged(String query) {
    if (_debounce?.isActive ?? false) _debounce?.cancel();
    _debounce = Timer(
      const Duration(milliseconds: 500),
      () {
        _search = query;
        build((buildable) => const HomeBuildableState());
      },
    );
  }

  dispose() {
    _debounce?.cancel();
  }
}
