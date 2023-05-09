import 'package:ecomm_app/constants/asset_images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants/routes.dart';
import '../../../widgets/primary_button/primary_button.dart';
import '../../../widgets/top_titles/top_titles.dart';
import '../login/login.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TopTitles( subtitle: 'Buy anything, anytime, anywhere!', title: 'SnapShop'),
            Center(child:
            Image.asset("assets/images/welcome.png",
            alignment: Alignment.center,),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CupertinoButton(
                  onPressed: (){

                  },
                  padding: EdgeInsets.zero,
                  child: Image.asset("assets/images/googlelogo.png",
                      scale: 30.0
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                CupertinoButton(
                  onPressed: (){
                  },
                  padding: EdgeInsets.zero,
                  child: Icon(
                    Icons.facebook,
                    size: 35,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 18,
            ),
            //
            // SizedBox(
            //   height: 18,
            // ),
            SizedBox(
              height: 45,
              width: double.infinity,
              child: ElevatedButton(
                  onPressed:(){
                    Routes.instance.push(widget: Login(), context: context);
                  },
                  child: Text("Login")
              ),
            ),

            SizedBox(
              height: 18,
            ),
            SizedBox(
              height: 45,
              width: double.infinity,
              child: ElevatedButton(
                  onPressed:(){
                  },
                  child: Text("Sign Up")
              ),
            ),
          ],
        ),
      ),
    );
  }
}
