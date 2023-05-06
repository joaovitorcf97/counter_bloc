import 'package:counter_bloc/bloc/bloc/counter_bloc.dart';
import 'package:counter_bloc/bloc/counter_bloc_page.dart';
import 'package:counter_bloc/cubit/counter_cubit_page.dart';
import 'package:counter_bloc/cubit/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/bloc': (_) => BlocProvider(
              create: (_) => CounterBloc(),
              child: const CounterBlocPage(),
            ),
        '/cubit': (_) => BlocProvider(
              create: (_) => CounterCubit(),
              child: const CounterCubitPage(),
            ),
      },
      home: const HomePage(),
    );
  }
}
