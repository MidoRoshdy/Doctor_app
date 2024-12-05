// ignore_for_file: unnecessary_import, prefer_const_constructors, sized_box_for_whitespace

import 'package:doctor_app/components/available_doctor_card.dart';
import 'package:doctor_app/components/custom_app_bar.dart';
import 'package:doctor_app/components/section_title.dart';
import 'package:doctor_app/models/AvailableDoctor.dart';
import 'package:doctor_app/models/Categoryy.dart';
import 'package:doctor_app/models/RecommendDoctor.dart';
import 'package:doctor_app/screens/category_style.dart';
import 'package:doctor_app/screens/doctorsblue.dart';
import 'package:doctor_app/screens/routesname.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // int index=0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: const Color.fromARGB(255, 178, 204, 235),
            body: ListView(
              children: [
                CustomAppBar(text: "Find Your", title: "Specialist"),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 200,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: demo_recommended_doctor.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(
                            context,
                            RoutesName.about_doctorsblue,
                            arguments: {
                              'recommendedDoctor':
                                  demo_recommended_doctor[index],
                              'availableDoctor': demoAvailableDoctors[index],
                            },
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Doctorsblue(
                            info: demo_recommended_doctor[index],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SectionTitle(title: "Categories", pressOnSeeAll: () {}),
                Container(
                  height: 110, // تأكد من تحديد ارتفاع للـ ListView
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal, // ضبط المحور الأفقي
                    itemCount: demo_categories.length, // عدد العناصر
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(
                            8.0), // إضافة مسافة بين العناصر
                        child: CategoryStyle(categ: demo_categories[index]),
                      );
                    },
                  ),
                ),
                SectionTitle(title: "Available Doctor", pressOnSeeAll: () {}),
                Container(
                  height: 200, // تأكد من تحديد ارتفاع للـ ListView
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal, // ضبط المحور الأفقي
                    itemCount: demo_recommended_doctor.length, // عدد العناصر
                    itemBuilder: (context, index) {
                      return GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(
                              context,
                              RoutesName.about_doctors,
                              arguments: {
                                'recommendedDoctor':
                                    demo_recommended_doctor[index],
                                'availableDoctor': demoAvailableDoctors[index],
                              },
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(
                                8.0), // إضافة مسافة بين العناصر
                            child: AvailableDoctorCard(
                                info: demoAvailableDoctors[
                                    index]), // عنصر من القائمة
                          ));
                    },
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            )));
  }
}
