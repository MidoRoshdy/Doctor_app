import 'package:doctor_app/models/AvailableDoctor.dart';
import 'package:doctor_app/screens/appointment.dart';
import 'package:doctor_app/screens/doctors_screen.dart';
import 'package:doctor_app/screens/home_screen.dart';
import 'package:doctor_app/screens/profile.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

List<Widget> pages = [
  HomeScreen(),
  DoctorsScreen(info: demoAvailableDoctors[0]),
  Appointment(),
  Profile(),
];

class Navbarr extends StatefulWidget {
  const Navbarr({
    super.key,
  });

  @override
  State<Navbarr> createState() => _NavbarrState();
}

class _NavbarrState extends State<Navbarr> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: GNav(
        backgroundColor: Colors.white,
        activeColor: Colors.white,
        tabBackgroundColor: primaryColor,
        tabBorderRadius: 20,
        padding: EdgeInsets.all(20),
        iconSize: 30,
        textSize: 30,
        gap: 8,
        tabs: [
          GButton(
            icon: Icons.home,
            text: "Home",
          ),
          GButton(icon: Icons.people, text: "Doctors"),
          GButton(icon: Icons.sticky_note_2_outlined, text: "Appointment"),
          GButton(icon: Icons.person, text: "Profile"),
        ],
        onTabChange: (value) {
          setState(() {
            index = value;
          });
        },
      ),
      body: Container(
        child: pages[index],
      ),
    );
  }
}
