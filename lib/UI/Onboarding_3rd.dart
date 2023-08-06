import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Onboarding_3rd extends StatelessWidget {
  const Onboarding_3rd({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: height * 0.148,
            ),
            SvgPicture.asset('assets/3.svg'),
            SizedBox(
              height: height * 0.05,
            ),
            const Text(
              'Good food at a cheap price',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF1F2937)),
            ),
            SizedBox(
              height: height * 0.05,
            ),
            const Text(
              "You can eat at expensive restaurants with\n affordable price",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Color(0xFF4B5563)),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
