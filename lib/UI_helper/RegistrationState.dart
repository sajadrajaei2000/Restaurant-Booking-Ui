// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RegistrationState {
  Container bottomSheetDesign(double height) {
    return Container(
      width: double.infinity,
      height: height,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(36.0),
          topRight: Radius.circular(36.0),
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 24),
            child: SvgPicture.asset('assets/Line_1.svg'),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20),
            child: Text('data'),
          ),
        ],
      ),
    );
  }
}
