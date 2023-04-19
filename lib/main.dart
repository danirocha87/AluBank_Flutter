import 'package:appLayouts/themes/my_theme.dart';
import 'package:flutter/material.dart';
import 'screens/home.dart';

void main() {
  runApp(Alubank());
}

class Alubank extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Alubank",
      theme: MyTheme,
      home: Home(),
    );
  }
}
