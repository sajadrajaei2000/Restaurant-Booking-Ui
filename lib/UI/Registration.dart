// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:bottom_sheet/bottom_sheet.dart';
import 'package:project5/UI_helper/RegistrationState.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  RegistrationState registrationState = RegistrationState();
  ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: height * 0.17,
            ),
            SvgPicture.asset('assets/4.svg'),
            SizedBox(
              height: height * 0.05,
            ),
            const Text(
              'Welcome',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF1F2937)),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            const Text(
              "Before Enjoying Foodmedia Services\n Please Register First",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF4B5563)),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: height * 0.1,
            ),
            SizedBox(
              width: 256,
              height: 49,
              child: ElevatedButton(
                  onPressed: () {
                    showStickyFlexibleBottomSheet(
                      minHeight: 0,
                      initHeight: 0.75,
                      maxHeight: 1,
                      headerHeight: height,
                      isSafeArea: true,
                      bottomSheetColor:
                          const Color.fromARGB(202, 120, 113, 113),
                      context: context,
                      headerBuilder: (BuildContext context, double offset) {
                        return registrationState.bottomSheetDesign(height);
                      },
                      bodyBuilder: (BuildContext context, double offset) {
                        return SliverChildListDelegate(
                          <Widget>[
                            // Your content widgets here
                          ],
                        );
                      },
                      anchors: [0, 0.5, 1],
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      backgroundColor: const Color(0xFF32B768)),
                  child: const Text(
                    'Create Account',
                    style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  )),
            ),
            SizedBox(
              height: height * 0.025,
            ),
            SizedBox(
              width: 256,
              height: 49,
              child: ElevatedButton(
                  onPressed: () {
                    showStickyFlexibleBottomSheet(
                      minHeight: 0,
                      initHeight: 0.75,
                      maxHeight: 1,
                      headerHeight: height,
                      isSafeArea: true,
                      bottomSheetColor:
                          const Color.fromARGB(202, 120, 113, 113),
                      context: context,
                      headerBuilder: (BuildContext context, double offset) {
                        return registrationState.bottomSheetDesign(height);
                      },
                      bodyBuilder: (BuildContext context, double offset) {
                        return SliverChildListDelegate(
                          <Widget>[
                            // Your content widgets here
                          ],
                        );
                      },
                      anchors: [0, 0.5, 1],
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      backgroundColor: const Color(0xFFD1FAE5)),
                  child: const Text(
                    'Login',
                    style: TextStyle(
                        color: Color(0xFF10B981),
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  )),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "By Logging In Or Registering, You Have Agreed To ",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Color(0xFF242323)),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "The Terms And",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Color(
                        0xFF32B768), // Set the text color to green (#32B768)
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Conditions",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Color(
                        0xFF32B768), // Set the text color to green (#32B768)
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  " And",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Color(0xFF242323),
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  " Privacy Policy",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Color(
                        0xFF32B768), // Set the text color to green (#32B768)
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
