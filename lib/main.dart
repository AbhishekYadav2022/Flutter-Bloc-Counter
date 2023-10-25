import 'package:bloc_counter/logic/cubit/counter_cubit.dart';
import 'package:bloc_counter/presentation/screens/home_screen.dart';
import 'package:bloc_counter/presentation/screens/second_screen.dart';
import 'package:bloc_counter/presentation/screens/third_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final CounterCubit _counterCubit = CounterCubit();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: true,
      ),
      routes: {
        '/': (context) => BlocProvider.value(
              value: _counterCubit,
              child: const HomeScreen(
                title: "HomeScreen",
                color: Colors.blueAccent,
              ),
            ),
        '/second': (context) => BlocProvider.value(
              value: _counterCubit,
              child: const SecondScreen(
                title: "Second",
                color: Colors.redAccent,
              ),
            ),
        '/third': (context) => BlocProvider.value(
              value: _counterCubit,
              child: const ThirdScreen(
                title: "Third",
                color: Colors.greenAccent,
              ),
            ),
      },
      debugShowCheckedModeBanner: false,
    );
  }

  @override
  void dispose() {
    _counterCubit.close();
    super.dispose();
  }
}