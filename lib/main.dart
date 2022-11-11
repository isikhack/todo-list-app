 import 'package:flutter/material.dart';
import 'package:mesaagehttp/screens/home_page.dart';

void main() {
  runApp(MyApp());
  
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.lightGreen,
      canvasColor: Colors.lightGreen.shade100,
      platform: TargetPlatform.iOS,
      
      ) ,

      
      debugShowCheckedModeBanner: false,
      title: 'TODO LIST',
      home: HomePage(),

    );
  }
}