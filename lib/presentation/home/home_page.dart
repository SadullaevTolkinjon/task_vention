import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_ventio/di/injection.dart';
import 'package:task_ventio/presentation/home/cubit/home_cubit.dart';
import 'package:task_ventio/presentation/home/home_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => locator<HomeCubit>(),
        child: const HomeView(),
      ),
    );
  }
}
