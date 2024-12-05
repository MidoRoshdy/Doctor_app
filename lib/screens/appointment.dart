import 'package:doctor_app/constants.dart';
import 'package:flutter/material.dart';

class Appointment extends StatelessWidget {
  const Appointment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        appBar: AppBar(
          toolbarHeight: 70,
          title: Text("My Appointment"),
        ),
        body: ListView(children: [
          Padding(
            padding: const EdgeInsets.all(defaultPadding),
            child: Container(
              color: Colors.white,
              width: 300,
              height: 180,
              padding: EdgeInsets.all(defaultPadding),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text("Date", style: TextStyle(fontSize: 15)),
                          Text(
                            "18/9/2024",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Text("Time", style: TextStyle(fontSize: 15)),
                          Text(
                            "10.30 pm",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Text("Doctor", style: TextStyle(fontSize: 15)),
                          Text(
                            "Dr. Adam",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          )
                        ],
                      ),
                    ],
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text("Type", style: TextStyle(fontSize: 15)),
                            Text(
                              "Dentiest",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Text("Place", style: TextStyle(fontSize: 15)),
                            Text(
                              "City Clinic",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            )
                          ],
                        ),
                        MaterialButton(
                          onPressed: () {},
                          color: redColor,
                          padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                          child: Text("Cancel",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white)),
                        )
                      ]),
                ],
              ),
            ),
          )
        ]));
  }
}
