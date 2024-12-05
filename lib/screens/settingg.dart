import 'package:doctor_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Settingg extends StatefulWidget {
  const Settingg({super.key});

  @override
  State<Settingg> createState() => _SettinggState();
}

class _SettinggState extends State<Settingg> {
  // bool isCallOptionEnabled = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
          toolbarHeight: 70,
          title: Text("Settings"),
        ),
        body: ListView(children: [
          Padding(
            padding: const EdgeInsets.only(top: defaultPadding),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(defaultPadding),
                  decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                            color: const Color.fromARGB(255, 170, 172, 225))),
                    color: Colors.white,
                  ),
                  width: double.infinity,
                  height: 70,
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        "assets/icons/Notificatio_box.svg",
                        width: 50,
                        height: 50,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Notifications",
                        style: TextStyle(fontSize: 17),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(defaultPadding),
                  width: double.infinity,
                  height: 70,
                  decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                            color: const Color.fromARGB(255, 170, 172, 225))),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        "assets/icons/Chat_box.svg",
                        width: 50,
                        height: 50,
                      ),
                      SizedBox(
                        width: 10,
                      ), // svg.asset("assets/icons/Call_box.svg"),
                      Text(
                        "Message Option",
                        style: TextStyle(fontSize: 17),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(defaultPadding),
                  width: double.infinity,
                  height: 70,
                  decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                            color: const Color.fromARGB(255, 170, 172, 225))),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        "assets/icons/Call_box.svg",
                        width: 50,
                        height: 50,
                      ),
                      SizedBox(
                        width: 10,
                      ), // svg.asset("assets/icons/Call_box.svg"),
                      Text(
                        "Call Option",
                        style: TextStyle(fontSize: 17),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(defaultPadding),
                  width: double.infinity,
                  height: 70,
                  decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                            color: const Color.fromARGB(255, 170, 172, 225))),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        "assets/icons/Video_box.svg",
                        width: 50,
                        height: 50,
                      ),
                      SizedBox(
                        width: 10,
                      ), // svg.asset("assets/icons/Call_box.svg"),
                      Text(
                        "Video Call Option",
                        style: TextStyle(fontSize: 17),
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
