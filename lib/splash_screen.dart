import 'package:doctor_app/constants.dart';
import 'package:doctor_app/screens/routesname.dart';
import 'package:flutter/material.dart';

class Splash_screen extends StatelessWidget {
  const Splash_screen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.blue,
        body: Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/splash_bg.png"))),
      padding: EdgeInsets.fromLTRB(20, 50, 20, 50),
      alignment: Alignment.center,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Spacer(),
          Text(
            "Gerda",
            textAlign: TextAlign.center,
            style: TextStyle(color: backgroundColor, fontSize: 50),
          ),
          Spacer(),
          Container(
            width: double.infinity,
            child: Column(
              children: [
                MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, RoutesName.signin);
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  color: secondaryColor,
                  padding: EdgeInsets.fromLTRB(100, 5, 100, 5),
                  child: Text(
                    "Sign up",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: backgroundColor,
                      fontSize: 30,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, RoutesName.signin);
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(color: backgroundColor)),
                  // color: secondaryColor,
                  padding: EdgeInsets.fromLTRB(100, 5, 100, 5),
                  child: Text(
                    "Sign in",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: backgroundColor,
                      fontSize: 30,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
