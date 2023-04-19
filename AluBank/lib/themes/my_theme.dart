import 'package:appLayouts/themes/theme_colors.dart';
import 'package:flutter/material.dart';

ThemeData MyTheme = ThemeData(
  //aqui usamo para escolher as cores do nosso tema
  primarySwatch: ThemeColors.primaryColor,
  primaryColor: ThemeColors.primaryColor,
  //aqui usamos para deixar o tema dark
  brightness: Brightness.dark,
  fontFamily: 'Raleway',
  //aqui usamos para estilizar os textos, mas o bodyMedium não esta funcionando
  //textTheme: TextTheme(bodyMedium: TextStyle(fontSize: 16)),
  //aqui uso para alterar o tamanho e o peso da $
  //bodyLarge:TextStyle(fontSize: 28, fontWeight: FontWeight.bold)
  //aqui uso para mudar o tamanho e peso do titulo .
  //titleMedium: TextStyle(fontSize: 20, fontWeight:FontWeight.normal )
);
