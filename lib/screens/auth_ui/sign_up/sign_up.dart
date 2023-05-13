import 'package:ecomm_app/widgets/primary_button/primary_button.dart';
import 'package:ecomm_app/widgets/top_titles/top_titles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants/routes.dart';
import '../../home/home.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  bool isShowPassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 35,
              ),
              TopTitles(
                subtitle:"Create Account" , title: "Create an account",),
              SizedBox(
                height: 60,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Name",
                  prefixIcon: Icon(
                    Icons.person_outline,
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: "Email",
                  prefixIcon: Icon(
                    Icons.email_outlined,
                  ),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              TextFormField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  hintText: "Phone",
                  prefixIcon: Icon(
                    Icons.phone_outlined,
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
              SizedBox(
                height: 45,
                width: double.infinity,
                child: ElevatedButton(
                    onPressed:(){
                      Routes.instance.pushAndRemoveUntil(widget: Home(), context: context);
                    },
                    child: Text("Create An Account")
                ),
              ),
              SizedBox(
                height: 32,
              ),
              Center(
                  child: Text("I already have an account?",
                    style: TextStyle(
                      fontSize: 17,
                    ),)
              ),
              SizedBox(
                height: 12,
              ),
              CupertinoButton(
                onPressed: (){
                  Navigator.of(context).pop();
                },
                child: Text(
                  "Login",
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
            ],

          ),
        ),
      ),
    );
  }
}
