import 'package:doctor_app/constants.dart';
import 'package:doctor_app/screens/routesname.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
          toolbarHeight: 70,
          title: Text("My Profile"),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, RoutesName.settingg);
              },
              icon: Icon(
                Icons.settings,
                color: primaryColor,
              ),
            )
          ],
        ),
        body: ListView(children: [
          Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("assets/images/user_pic.png"),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.white),
                        // color: Colors.white,
                        padding: EdgeInsets.all(defaultPadding),
                        child: Text(
                          "Anwar Abir",
                          style: TextStyle(fontSize: 17),
                        ),
                        width: double.infinity,
                        height: 60,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding: EdgeInsets.all(defaultPadding),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.white),
                        // color: Colors.white,
                        child: Text("test@gmail.com",
                            style: TextStyle(fontSize: 17)),
                        width: double.infinity,
                        height: 60,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding: EdgeInsets.all(defaultPadding),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.white),
                        // color: Colors.white,
                        child:
                            Text("+880105567", style: TextStyle(fontSize: 17)),
                        width: double.infinity,
                        height: 60,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding: EdgeInsets.all(defaultPadding),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.white),
                        // color: Colors.white,

                        child: Text("Rampura, Banasree",
                            style: TextStyle(fontSize: 17)),
                        width: double.infinity,
                        height: 60,
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ]));
  }
}
