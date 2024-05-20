import 'package:acikeczaneleruygulama/ui/cubit/anasayfacubit.dart';
import 'package:acikeczaneleruygulama/ui/view/anasayfa.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [BlocProvider(create:(context)=>anasayfacubit())],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: anasayfa(),
      ),
    );
  }
}

