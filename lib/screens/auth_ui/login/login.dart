import 'package:ecomm_app/widgets/primary_button/primary_button.dart';
import 'package:ecomm_app/widgets/top_titles/top_titles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants/routes.dart';
import '../../home/home.dart';
import '../sign_up/sign_up.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  bool isShowPassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 35,
            ),
            TopTitles(
                subtitle:"Welcome back!" , title: "Login",),
            SizedBox(
              height: 60,
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: "E-mail",
                prefixIcon: Icon(
                  Icons.email_outlined,
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            TextFormField(
              obscureText: isShowPassword,
              decoration: InputDecoration(
                hintText: "Password",
                prefixIcon: Icon(
                  Icons.password_sharp,
                ),
                suffixIcon: CupertinoButton(
                  onPressed: (){
                    setState(() {
                      isShowPassword =! isShowPassword;
                    });
                  },
                    padding: EdgeInsets.zero,
                    child: Icon(Icons.visibility, color: Colors.grey,)),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            PrimaryButton(
              title: "Login",
              onPressed: (){
                Routes.instance.pushAndRemoveUntil(widget: Home(), context: context);
              },
            ),
            SizedBox(
              height: 32,
            ),
            Center(
                child: Text("Don't have an account?",
                style: TextStyle(
                  fontSize: 17,
                ),)
            ),
            SizedBox(
              height: 12,
            ),
            CupertinoButton(
                onPressed: (){
                  Routes.instance.push(widget: SignUp(), context: context);
                },
                child: Text(
                    "Create an account",
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                  ),
                ),
            ),
          ],

        ),
      ),
    );
  }
}
