import 'package:flutter/material.dart';
import 'package:instagramclone/screen/home.dart';

void main() {
  runApp(PantallaPrincipal());
}

class PantallaPrincipal extends StatelessWidget {
  Color principal = Color(0XFF181818);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rediseño Instagram',
      theme: ThemeData(
        primaryColorDark: principal,
        accentColor: Color(0XFF23B66F),
        backgroundColor: Color(0xFFEDF0F6),
        textTheme: TextTheme(
          headline1: TextStyle(
            fontFamily: 'Billabong',
            color: Colors.black,
            fontWeight: FontWeight.w300,
            fontSize: 30,
          ),
          headline2: TextStyle(
            fontSize: 15,
            color: principal,
            fontWeight: FontWeight.bold,
          ),
          bodyText1: TextStyle(
            color: principal,
          ),
        ),
      ),
      home: Home(),
    );
  }
}
