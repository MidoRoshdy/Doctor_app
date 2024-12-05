// ignore_for_file: unused_import, unnecessary_import

import 'package:doctor_app/models/Categoryy.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryStyle extends StatelessWidget {
  const CategoryStyle({
    Key? key,
    required this.categ,
  }) : super(key: key);

  final Categoryy categ;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Spacer(),
          SvgPicture.asset(
            categ.icon,
          ),
          Spacer(),
          Text(
            categ.title,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
