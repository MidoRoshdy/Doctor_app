import 'package:doctor_app/models/AvailableDoctor.dart';
import 'package:doctor_app/models/RecommendDoctor.dart';
import 'package:doctor_app/screens/routesname.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import 'package:flutter_lorem/flutter_lorem.dart'; //

class AboutDoctorsblue extends StatelessWidget {
  const AboutDoctorsblue({
    Key? key,
    required this.info,
    required this.av,
  }) : super(key: key);

  final RecommendedDoctor info;
  final AvailableDoctor av;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: backgroundColor,
            appBar: AppBar(
              toolbarHeight: 70,
              title: Text(info.name),
            ),
            body: ListView(children: [
              Center(
                child: Image.asset(
                  info.image,
                  scale: .5,
                ),
              ),
              Spacer(),

              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        btn(
                            " Voice Call",
                            const Color.fromARGB(255, 83, 172, 236),
                            Icons.call),
                        btn(
                            " Video Call",
                            const Color.fromARGB(255, 98, 100, 168),
                            Icons.videocam_sharp),
                        btn(" Message", const Color.fromARGB(255, 230, 142, 9),
                            Icons.message),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(info.speciality, style: TextStyle(fontSize: 20)),
                    Text(info.institute, style: TextStyle(fontSize: 20)),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.orange,
                          size: 20,
                        ),
                        Icon(Icons.star, color: Colors.orange, size: 20),
                        Icon(Icons.star, color: Colors.orange, size: 20),
                        Icon(Icons.star, color: Colors.orange, size: 20),
                        Icon(Icons.star, color: Colors.orange, size: 20),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text("About  ${info.name} ",
                        style: TextStyle(fontSize: 20)),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      lorem(paragraphs: 1, words: 20), // تحديد عدد الكلمات هنا
                      style: TextStyle(fontSize: 17),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Patients", style: TextStyle(fontSize: 17)),
                        Text("experience", style: TextStyle(fontSize: 17)),
                        Text("reviews", style: TextStyle(fontSize: 17)),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(av.patients!, style: TextStyle(fontSize: 24)),
                        Text("${av.experience}K",
                            style: TextStyle(fontSize: 24)),
                        Text("   2.05K", style: TextStyle(fontSize: 24)),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Center(
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.pushNamed(context, RoutesName.appointment);
                        },
                        padding: EdgeInsets.fromLTRB(90, 20, 90, 20),
                        color: primaryColor,
                        child: Text(
                          "Book an Appointment",
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        ),
                      ),
                    )
                  ],
                ),
              )
              //     ),
            ])));
  }

  MaterialButton btn(String text, Color? color, IconData? icon) {
    return MaterialButton(
      onPressed: () {},
      padding: EdgeInsets.all(15),
      color: color,
      child: Row(
        children: [
          Icon(
            icon,
            size: 15,
            color: Colors.white,
          ),
          Text(
            text,
            style: TextStyle(color: Colors.white, fontSize: 15),
          )
        ],
      ),
    );
  }
}
