import 'package:doctor_app/models/RecommendDoctor.dart';
import 'package:flutter/material.dart';
import '../constants.dart';

//
class Doctorsblue extends StatefulWidget {
  const Doctorsblue({
    Key? key,
    required this.info,
  }) : super(key: key);

  final RecommendedDoctor info;

  @override
  State<Doctorsblue> createState() => _DoctorsblueState();
}

class _DoctorsblueState extends State<Doctorsblue> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
          width: 290,
          height: 150,
          padding: EdgeInsets.all(defaultPadding),
          decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: const BorderRadius.all(Radius.circular(12)),
          ),
          child: Row(children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "Looking for Your Desire\n Specialist Doctor",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                widget.info.name,
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Text(
                widget.info.speciality,
                style: TextStyle(fontSize: 10, color: Colors.white),
              ),
              Text(
                widget.info.institute,
                style: TextStyle(fontSize: 10, color: Colors.white),
              ),
            ]),
            Image.asset(
              widget.info.image,
              height: 100,
              fit: BoxFit.cover,
            )
          ])),
    );
  }
}
