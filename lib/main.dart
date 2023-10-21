//toda app de dart / flutter tiene una funcion main
import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/screens/counter/counter_functions_screens.dart';
//import 'package:flutter_application_1/presentation/screens/counter/counter_screen.dart';

void main(){
  //Toda aplicacion de flutter tiene en su main una ejecucion de un widget inicial
  runApp(const MyApp());
}

//Todas las clases que hereden de statelessWidget necesitan un build
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //Elimina la etiqueta "Debug" del emulador
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        //colorSchemeSeed: Colors.amber
      ),
      home: const CounterFunctionsScreen()
    );
  }
}