import 'package:ecomm_app/widgets/top_titles/top_titles.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              TopTitles(subtitle:"" , title: "Login"),
            ],
          ),
        ),
      ),
    );
  }
}
