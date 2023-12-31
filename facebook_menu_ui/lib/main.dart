import 'package:facebook_menu_ui/menu_ui.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override 
  Widget build(BuildContext context){
    return MaterialApp(
      color: Colors.white,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.white
      ),
      home:const MenuUI(),
    );
  }
}