import 'package:flutter/material.dart';
import 'package:shopping_app/pages/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 231, 186, 234),
        textTheme: TextTheme(
          titleMedium: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold
          ),
          titleSmall: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          fillColor: Color.fromRGBO(911, 911, 911, 1),
          hintStyle: TextStyle(
            fontFamily: 'Lato-Bold',
            fontWeight: FontWeight.bold
          )
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          primary: Colors.deepPurple
        ),
      ),
      home: const product_details_page(),
    );
  }
}
