// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Onboarding_first extends StatelessWidget {
  const Onboarding_first({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/1.svg'),
            SizedBox(
              height: height * 0.1,
            ),
            const Text(
              'Nearby restaurants',
              style: TextStyle(
                fontSize: 24,
                color: Color(0xFF1F2937),
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: height * 0.05,
            ),
            const Text(
              "You don't have to go far to find a good restaurant,\n we have provided all the restaurants that is\n near you",
              style: TextStyle(
                fontSize: 16,
                color: Color(0xFF4B5563),
                fontWeight: FontWeight.w400,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
