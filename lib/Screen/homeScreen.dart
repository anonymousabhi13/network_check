import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:internet_connection_checker/blocks/internet_bloc/internet_bloc.dart';
import 'package:internet_connection_checker/blocks/internet_bloc/internet_state.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Center(
                child: BlocConsumer<InternetBloc, InternetState>(
      listener: (context, state) {
        if (state is InternetLostState) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(
            "No Internet Connection",
            
          ),backgroundColor: Colors.red,));
        } else if (state is InternetGainedState) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(
            "Internet Connection Gained",
           
          ),backgroundColor: Colors.green,));
        }
      },
      builder: (context, state) {
        if (state is InternetGainedState) {
          return Text('Internet Gained');
        } else if (state is InternetLostState) {
          return Text('Internet Lost');
        } else {
          return Text('Loading...');
        }
      },
    ))));
  }
}


// return Text(
//               'Hello World',
//               style: TextStyle(
//                 fontSize: 20.0,
//                 fontWeight: FontWeight.bold,
//                 letterSpacing: 2.0,
//                 color: Colors.grey[600],
//                 fontFamily: 'IndieFlower',
//               ),
//             );