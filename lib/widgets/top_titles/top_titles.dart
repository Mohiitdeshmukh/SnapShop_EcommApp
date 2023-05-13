import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopTitles extends StatelessWidget {
  final String title;
  final String subtitle;
  const TopTitles({super.key, required this.subtitle, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: kToolbarHeight+35,
        ),
        if(title == "Login" || title == "Create Account")
          // GestureDetector(
          //   onTap: (){
          //     Navigator.of(context).pop();
          //   },
          //   child: Icon(Icons.arrow_back_ios)
          // ),
        Text(
          title,
          style: TextStyle(
            fontSize: 50.0,
            fontWeight: FontWeight.bold,
            color: Colors.deepOrangeAccent
          ),
        ),
        SizedBox(
          height: 23,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Center(
            child: Text(
              subtitle,
              style: TextStyle(
                fontSize: 21.0,
                fontWeight: FontWeight.bold,
                color: Colors.deepOrangeAccent
              ),
            ),
          ),
        ),
      ],

    );
  }
}
