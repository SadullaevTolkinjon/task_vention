part of 'home_cubit.dart';

abstract class HomeState {}

@freezed
class HomeBuildableState extends HomeState with _$HomeBuildableState {
  const factory HomeBuildableState({
    @Default(false) bool loading,
    @Default(false) bool success,
    @Default(false) bool failed,
    dynamic error,
    List<Character>? characters,
    int? nextPageKey,
  }) = _HomeBuildableState;
}
