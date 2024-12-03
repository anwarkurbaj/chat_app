import 'package:chat_app/commponant/My_bottom.dart';
import 'package:chat_app/commponant/text_filed_commponent.dart';

import 'package:flutter/material.dart';

class Login_View extends StatefulWidget {
  const Login_View({
    super.key,
  });

  @override
  State<Login_View> createState() => _Login_ViewState();
}

class _Login_ViewState extends State<Login_View> {
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();

  @override
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Center(
              child: Icon(Icons.message, size: 60),
            ),
            Center(child: Text("welcome to my app")),
            SizedBox(height: 90),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text_Filed_Compnent(
                controller: emailcontroller,
                hintText: "enter the email",
                obscureText: false, //to show the Email
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text_Filed_Compnent(
                controller: passwordcontroller,
                hintText: "enter the password",
                obscureText: true, // to hidden the pass
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: My_bottom(
                ontap: () {},
                text: "Sign in",
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Not a member?"),
                SizedBox(width: 10),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    "Register Now",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
