import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_ventio/domain/model/character/character_model.dart';
import 'package:task_ventio/presentation/home/cubit/home_cubit.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final PagingController<int, Character> _pagingController =
      PagingController(firstPageKey: 0);
  @override
  void initState() {
    _pagingController.addPageRequestListener(
      (pageKey) {
        context.read<HomeCubit>().fetch(pageKey);
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<HomeCubit, HomeState>(
      listener: (context, state) {
        if (state is HomeBuildableState) {
          _pagingController.value = PagingState(
            nextPageKey: state.nextPageKey,
            itemList: state.characters,
            error: state.error,
          );
        }
      },
      child: SafeArea(
        child: Column(
          children: [
            const Text("Home"),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: PagedListView<int, Character>(
                pagingController: _pagingController,
                builderDelegate: PagedChildBuilderDelegate<Character>(
                  itemBuilder: (_, character, __) {
                    return SizedBox(
                      height: 200,
                      width: double.infinity,
                      child: CachedNetworkImage(
                          imageUrl: character.image.toString()),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _pagingController.dispose();
    super.dispose();
  }
}
