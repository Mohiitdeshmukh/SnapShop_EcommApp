import 'dart:math';

import 'package:ecomm_app/screens/auth_ui/welcome/welcome.dart';
import 'package:flutter/material.dart';

import 'constants/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E Commerce',
      theme: themeData,
      home: Welcome(),
    );
  }
}


