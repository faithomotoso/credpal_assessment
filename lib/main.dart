import 'package:credpal_assessment/home.dart';
import 'package:credpal_assessment/ui/utils/colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Credpal Assessment',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.cD0DAFF),
        buttonTheme: ButtonThemeData(
          buttonColor: AppColors.c274FED
        ),
        filledButtonTheme: FilledButtonThemeData(
          style: FilledButton.styleFrom(
            backgroundColor: AppColors.c274FED,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
            textStyle: TextStyle(
              fontFamily: "Axiforma",
              fontWeight: FontWeight.w700,
              fontSize: 13,
            ),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: AppColors.c274FED,
            textStyle: TextStyle(
              fontFamily: "ProductSans",
              fontWeight: FontWeight.normal,
              fontSize: 12,
            ),
          )
        ),
        fontFamily: "Avenir"
      ),
      home: const Home(),
    );
  }
}
