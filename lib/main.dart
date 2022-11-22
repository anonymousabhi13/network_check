import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:internet_connection_checker/Screen/homeScreen.dart';
import 'package:internet_connection_checker/blocks/internet_bloc/internet_bloc.dart';

void main() {
  runApp(BlocProvider(
    create: (context) => InternetBloc(),
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    ),
  ));
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: homeScreen(),
    );
  }
}
