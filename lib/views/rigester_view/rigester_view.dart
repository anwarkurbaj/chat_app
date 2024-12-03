import 'package:chat_app/commponant/My_bottom.dart';

import 'package:flutter/material.dart';

import '../../commponant/text_filed_commponent.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({
    super.key,
  });

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  final confirmpasswordcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  final emailcontroller = TextEditingController();

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
            Center(child: Text("welcom to the app")),
            SizedBox(height: 70),
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
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text_Filed_Compnent(
                controller: confirmpasswordcontroller,
                hintText: "confirm the password",
                obscureText: true, // to hidden the pass
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: My_bottom(
                ontap: () {},
                text: "Signup",
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already a member?"),
                SizedBox(width: 10),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    "Login Now",
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
