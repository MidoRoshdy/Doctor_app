import 'package:device_preview/device_preview.dart';
import 'package:doctor_app/app_theme.dart';
import 'package:doctor_app/screens/generate.dart';
import 'package:doctor_app/screens/routesname.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => MyApp(), // Wrap your app
      ),
    );

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'Doctor App',
      theme: AppTheme.light(context),
      initialRoute: RoutesName.splash,
      onGenerateRoute: AppRoute.generate,

      // home: ,
      // initialRoute: '/',
      // routes: {
      //   '/':(context)=>Splash_screen(),

      //    '/nav':(context)=>Navbarr(),

      //   '/Signin':(context)=>Signin(),
      //   '/navbar':(context)=> Navbarr(),
      //   '/doc':(context)=> Doctorsblue(info: demo_recommended_doctor[0],),
      // '/available':(context)=> AvailableDoctorCard(info: AvailableDoctor(
      //         name: "Dr. Serena Gome",
      //         sector: "Medicine Specialist",
      //         experience: 8,
      //         patients: '1.08K',
      //         image: "assets/images/Serena_Gome.png",)
      //         ,)
      // },
    );
  }
}
