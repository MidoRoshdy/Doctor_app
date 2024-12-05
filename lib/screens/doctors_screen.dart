import 'package:doctor_app/components/available_doctor_card.dart';
import 'package:doctor_app/models/AvailableDoctor.dart';
import 'package:doctor_app/models/RecommendDoctor.dart';
import 'package:doctor_app/screens/routesname.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class DoctorsScreen extends StatelessWidget {
  const DoctorsScreen({
    Key? key,
    required this.info,
  }) : super(key: key);

  final AvailableDoctor info;
//

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: demoAvailableDoctors.length,
        itemBuilder: (context, index) {
          return GestureDetector(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  RoutesName.about_doctors,
                  arguments: {
                    'recommendedDoctor': demo_recommended_doctor[index],
                    'availableDoctor': demoAvailableDoctors[index],
                  },
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0), // إضافة مسافة بين العناصر
                child: AvailableDoctorCard(
                    info: demoAvailableDoctors[index]), // عنصر من القائمة
              ));
        });
  }
}
