import 'package:flutter/material.dart';
import 'package:innotech/screens/signup.dart';
import 'package:innotech/widget/navbar.dart';

import '../../widget/HoverContainer2.dart';

class Quize12 extends StatefulWidget {
  const Quize12({super.key});

  @override
  State<Quize12> createState() => _Quize12State();
}

int _selectedOption = 0; // 0 for none, 1 for Student, 2 for Parent

class _Quize12State extends State<Quize12> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const Navbar(),
            Stack(
              children: [
                Visibility(
                  visible: MediaQuery.of(context).size.width > 768,
                  child: Container(
                    alignment: Alignment.topRight,
                    child: Image.network(
                      "images/pref.png",
                      fit: BoxFit.cover,
                      height: 500,
                    ),
                  ),
                ),
                Container(
                  width: 720,
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          'Write a small introduction about what you want to learn Specify the year/Grade/Age of the student ?',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontFamily: 'Comic Neue',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Center(
                          child: Column(
                            children: [
                              // Wrap the TextField with a Container to modify its appearance
                              Container(
                                width: 500, // Change the width as needed
                                height: 300, // Change the height as needed
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(
                                      15), // Apply rounded corners
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors
                                          .grey, // Change the shadow color
                                      spreadRadius:
                                          2, // Modify the spread radius
                                      blurRadius: 15, // Modify the blur radius
                                    ),
                                  ],
                                ),
                                child: const TextField(
                                  decoration: InputDecoration(
                                    labelText: 'Entre you message',
                                    border: InputBorder
                                        .none, // Remove the border from the TextField
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(height: 20), // Adjust as needed
                        Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  HoverContainer2(
                                    text: 'Previous',
                                    onTap: () {
                                      Navigator.pop(context);
                                      print('Previous clicked!');
                                    },
                                  ),
                                  const SizedBox(width: 150),
                                  HoverContainer2(
                                    text: 'Next',
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              const SignUpPage(),
                                        ),
                                      );
                                      print('Next clicked!');
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
