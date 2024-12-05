import 'package:doctor_app/models/AvailableDoctor.dart';
import 'package:doctor_app/models/RecommendDoctor.dart';
import 'package:doctor_app/screens/about_doctors.dart';
import 'package:doctor_app/screens/about_doctorsblue.dart';
import 'package:doctor_app/screens/appointment.dart';
import 'package:doctor_app/screens/navbarr.dart';
import 'package:doctor_app/screens/routesname.dart';
import 'package:doctor_app/screens/settingg.dart';
import 'package:doctor_app/signin.dart';
import 'package:doctor_app/splash_screen.dart';
import 'package:flutter/material.dart';

class AppRoute {
  static Route<dynamic> generate(RouteSettings? settings) {
    switch (settings?.name) {
      case RoutesName.navbar:
        return MaterialPageRoute(builder: (_) {
          return const Navbarr();
        });
      case RoutesName.splash:
        return MaterialPageRoute(builder: (_) {
          return const Splash_screen();
        });
      case RoutesName.signin:
        return MaterialPageRoute(builder: (_) {
          return const Signin();
        });
      case RoutesName.settingg:
        return MaterialPageRoute(builder: (_) {
          return const Settingg();
        });
      case RoutesName.appointment:
        return MaterialPageRoute(builder: (_) {
          return const Appointment();
        });
      case RoutesName.about_doctors:
        {
          final args = settings!.arguments as Map<String, dynamic>;
          final recommendedDoctor =
              args['recommendedDoctor'] as RecommendedDoctor?;
          final availableDoctor = args['availableDoctor'] as AvailableDoctor?;

          return MaterialPageRoute(builder: (_) {
            return AboutDoctors(
              info: recommendedDoctor!,
              av: availableDoctor!,
            );
          });
        }
      case RoutesName.about_doctorsblue:
        {
          final args = settings!.arguments as Map<String, dynamic>;
          final recommendedDoctor =
              args['recommendedDoctor'] as RecommendedDoctor?;
          final availableDoctor = args['availableDoctor'] as AvailableDoctor?;

          return MaterialPageRoute(builder: (_) {
            return AboutDoctorsblue(
              info: recommendedDoctor!,
              av: availableDoctor!,
            );
          });
        }
//
      default:
        throw Exception('Route not found!');
    }
  }
}
