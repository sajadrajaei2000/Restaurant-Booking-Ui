import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Onboarding_2nd extends StatelessWidget {
  const Onboarding_2nd({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: height * 0.145,
            ),
            SvgPicture.asset('assets/2.svg'),
            SizedBox(
              height: height * 0.02,
            ),
            const Text(
              'Select the Favorites Menu',
              style: TextStyle(
                  fontSize: 24,
                  color: Color(0xFF1F2937),
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: height * 0.05,
            ),
            const Text(
              "Now eat well, don't leave the house,You can\n choose your favorite food only with\n one click",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF4B5563)),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
