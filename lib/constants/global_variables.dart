import 'package:flutter/material.dart';

Uri baseUrl(String path) {
  String tempPath = '/api/$path';
  Uri url = Uri(
    scheme: 'http',
    host: 'localhost:12345',
    path: tempPath,
  );

  return url;
}

class GlobalVariables {
  //COLORS
  static const appBarGradient = LinearGradient(colors: [
    Color.fromARGB(255, 29, 201, 192),
    Color.fromARGB(255, 125, 221, 216),
  ], stops: [
    0.5,
    1.0
  ]);
  static const secondaryColor = Color.fromRGBO(255, 153, 0, 1);
  static const background = Colors.white;
  static const greyBackgroundColor = Color(0xffebecee); //0xffebecee
  static var selectedNavBarColor = Colors.cyan[800];
  static const unselectedNavBarColor = Colors.black87;
}
