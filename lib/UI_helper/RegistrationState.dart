// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RegistrationState extends StatefulWidget {
  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<RegistrationState> {
  bool isOption1Selected = true; // Set this based on your logic
  bool isOption2Selected = false;
  final _keyForm = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  //UserDataProvider? userProvider;

  @override
  void dispose() {
    nameController.dispose();
    passwordController.dispose();
    emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Container(
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
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: () {
                      setState(() {
                        isOption1Selected = true;
                        isOption2Selected = false;
                      });

                      // Handle option 1
                    },
                    child: Column(
                      children: [
                        Text(
                          'Create Account',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: isOption1Selected
                                ? const Color(0xFF32B768)
                                : const Color(0xFF89909E),
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Container(
                              height: 2,
                              width: 28,
                              color: isOption1Selected
                                  ? const Color(0xFF32B768)
                                  : Colors.white),
                        ),
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      // Handle option 2
                      setState(() {
                        isOption1Selected = false;
                        isOption2Selected = true;
                      });
                    },
                    child: Column(
                      children: [
                        Text(
                          'Login',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: isOption2Selected
                                ? const Color(0xFF32B768)
                                : const Color(0xFF89909E),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Container(
                              height: 2,
                              width: 28,
                              color: isOption2Selected
                                  ? const Color(0xFF32B768)
                                  : Colors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: showFirstBottomData(isOption1Selected, height, width),
            ),
            showSecondBottomData(isOption2Selected)
          ],
        ),
      ),
    );
  }

  Widget showFirstBottomData(bool isOption1Selected, var height, var width) {
    if (isOption1Selected == true) {
      return Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 50),
            child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Full Name',
                  style: TextStyle(
                      color: Color(0xFF374151),
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: SizedBox(
              height: 48,
              width: width * 0.82,
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Enter your full name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                ),
                controller: nameController,
                // The validator receives the text that the user has entered.
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter username';
                  } else if (value.length < 4) {
                    return 'at least enter 4 characters';
                  } else if (value.length > 13) {
                    return 'maximum character is 13';
                  }
                  return null;
                },
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 50, top: 8),
            child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Email address',
                  style: TextStyle(
                      color: Color(0xFF374151),
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: SizedBox(
              width: width * 0.82,
              height: 48,
              child: TextFormField(
                controller: emailController,
                decoration: const InputDecoration(
                  hintText: 'Eg namaemail@emailkamu.com',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                ),
                // The validator receives the text that the user has entered.
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter gmail';
                  } else if (!value.endsWith('@gmail.com')) {
                    return 'please enter valid gmail';
                  }
                  return null;
                },
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 50, top: 8),
            child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Password',
                  style: TextStyle(
                      color: Color(0xFF374151),
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                )),
          ),
          SizedBox(
            height: height * 0.01,
          ),
          SizedBox(
            height: 48,
            width: width * 0.82,
            child: TextFormField(
              controller: passwordController,
              decoration: const InputDecoration(
                hintText: '**** **** ****',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
              ),
              // The validator receives the text that the user has entered.
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                } else if (value.length < 7) {
                  return 'at least enter 6 characters';
                } else if (value.length > 13) {
                  return 'maximum character is 13';
                }
                return null;
              },
            ),
          ),
          SizedBox(
            height: height * 0.06,
          ),
          SizedBox(
            height: 49,
            width: 256,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFF4F4F4),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)))),
                onPressed: () {},
                child: const Text(
                  'Registration',
                  style: TextStyle(
                      color: Color(0xFF9CA3AF),
                      fontSize: 14,
                      fontWeight: FontWeight.w700),
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Container(
              width: width * 0.3,
              height: 0.1,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: SizedBox(
              height: 49,
              width: 256,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFF4F4F4),
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12)))),
                  onPressed: () {},
                  child: Row(
                    children: [
                      SvgPicture.asset('assets/ic_google.svg'),
                      const Padding(
                        padding: EdgeInsets.only(left: 30),
                        child: Text(
                          'Sign up with Google',
                          style: TextStyle(
                              color: Color(0xFF222222),
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  )),
            ),
          ),
        ],
      );
    } else {
      return Container();
    }
  }

  Widget showSecondBottomData(bool isOption2Selected) {
    if (isOption2Selected == true) {
      return const Column(
        children: [Text('hi'), Text('hihihihiih')],
      );
    } else {
      return Container();
    }
  }
}
