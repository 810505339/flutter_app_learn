import 'package:flutter/material.dart';
import 'package:flutter_app/constants/global_variables.dart';
import 'package:flutter_app/features/auth/screens/auth_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'router.dart';

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
          useMaterial3: false,
          colorScheme: ColorScheme.fromSeed(
            seedColor: GlobalVariables.secondaryColor,
            primary: GlobalVariables.secondaryColor,
            secondary: GlobalVariables.secondaryColor,
            brightness :Brightness.light,
          ),
          scaffoldBackgroundColor: GlobalVariables.background,
          fontFamily: GoogleFonts.firaSans().fontFamily,
          appBarTheme: const AppBarTheme(
              elevation: 0,
              iconTheme: IconThemeData(color: Colors.black),
              backgroundColor: GlobalVariables.secondaryColor)),
      onGenerateRoute: (settings) => generateRoute(settings), //路由拦截器
      home: const AuthScreen(),
    );
  }
}
