import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MaterialColor mycolor = MaterialColor(Color.fromRGBO(33, 156, 209, 1).value, <int, Color>{
      50: Color.fromRGBO(33, 156, 209, 0.1),
      100: Color.fromRGBO(33, 156, 209, 0.2),
      200: Color.fromRGBO(33, 156, 209, 0.3),
      300: Color.fromRGBO(33, 156, 209, 0.4),
      400: Color.fromRGBO(33, 156, 209, 0.5), 
      500: Color.fromRGBO(33, 156, 209, 0.6),
      600: Color.fromRGBO(33, 156, 209, 0.7),
      700: Color.fromRGBO(33, 156, 209, 0.8),
      800: Color.fromRGBO(33, 156, 209, 0.9),
      900: Color.fromRGBO(33, 156, 209, 1),
    },
  ); 
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
         primarySwatch: mycolor
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Calculator"),
          toolbarHeight: 65,
        ),
      ),
    );
  }
}
