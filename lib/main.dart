import 'package:flutter/material.dart';
import 'package:flutter_app/constants/global_variables.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Amazon Clone',
        theme: ThemeData(
            useMaterial3: true,
            colorScheme: ColorScheme.fromSeed(
              seedColor: GlobalVariables.secondaryColor,
              primary: GlobalVariables.secondaryColor,
              secondary: GlobalVariables.secondaryColor,
            ),
            scaffoldBackgroundColor: GlobalVariables.background,
            fontFamily: GoogleFonts.firaSans().fontFamily,
            appBarTheme: const AppBarTheme(
                elevation: 0,
                iconTheme: IconThemeData(color: Colors.black),
                backgroundColor: GlobalVariables.secondaryColor)),
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Hello'),
          ),
          body: Column(
            children: [
              const Center(
                child: Text('你好'),
              ),
              ElevatedButton(onPressed: () {}, child: const Text('click'))
            ],
          ),
        ));
  }
}
