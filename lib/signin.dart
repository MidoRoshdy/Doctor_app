import 'package:doctor_app/constants.dart';
import 'package:doctor_app/screens/routesname.dart';
import 'package:flutter/material.dart';

class Signin extends StatelessWidget {
  const Signin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: backgroundColor,
          resizeToAvoidBottomInset: true,
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.fromLTRB(defaultPadding, defaultPadding,
                  defaultPadding, MediaQuery.of(context).viewInsets.bottom),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Sign in",
                    textAlign: TextAlign.right,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Text(
                        "Don't have an account?     ",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        "Sign up!",
                        style: TextStyle(
                            fontSize: 15,
                            color: const Color.fromARGB(255, 90, 51, 152)),
                      )
                    ],
                  ),
                  SizedBox(height: 30),
                  TextField(
                    decoration: InputDecoration(
                        hintText: "Email*", hintStyle: TextStyle(fontSize: 18)),
                  ),
                  SizedBox(height: 15),
                  TextField(
                    decoration: InputDecoration(
                        hintText: "Password*",
                        hintStyle: TextStyle(fontSize: 18)),
                  ),
                  SizedBox(height: 25),
                  Text(
                    "Forget your Password?",
                    style: TextStyle(
                        fontSize: 15,
                        color: const Color.fromARGB(255, 90, 51, 152)),
                  ),
                  SizedBox(height: 25),
                  Center(
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.pushNamed(context, RoutesName.navbar);
                      },
                      color: primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      padding: EdgeInsets.fromLTRB(140, 5, 140, 5),
                      height: 40,
                      child: Text(
                        "Sign in",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: backgroundColor,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
