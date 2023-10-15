import 'package:flutter/material.dart';
import 'package:innotech/widget/navbar.dart';

import '../../widget/HoverContainer2.dart';
import 'form3.dart';

class Quize2 extends StatefulWidget {
  const Quize2({super.key});

  @override
  State<Quize2> createState() => _Quize2State();
}

int _selectedOption = 0; // 0 for none, 1 for Student, 2 for Parent

class _Quize2State extends State<Quize2> {
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
                      "images/hero1.png",
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
                          'The courses are for ?',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontFamily: 'Comic Neue',
                            fontWeight: FontWeight.w700,
                          ),
                        ),

                        const SizedBox(height: 10), // Adjust as needed

                        Center(
                          child: Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _selectedOption = 1;
                                  });
                                },
                                child: AnimatedContainer(
                                  duration: const Duration(milliseconds: 200),
                                  width: 400,
                                  height: 57,
                                  decoration: BoxDecoration(
                                    gradient: _selectedOption == 1
                                        ? const LinearGradient(
                                            begin: Alignment(1.00, -0.03),
                                            end: Alignment(-1, 0.03),
                                            colors: [
                                              Color(0xFFF8BC29),
                                              Color(0xFF59FFAF)
                                            ],
                                          )
                                        : const LinearGradient(
                                            // Use white color for the non-selected state
                                            begin: Alignment(1.00, -0.03),
                                            end: Alignment(-1, 0.03),
                                            colors: [
                                              Colors.white,
                                              Colors.white
                                            ],
                                          ),
                                    borderRadius: BorderRadius.circular(13),
                                    border: Border.all(
                                      width: 0.50,
                                      color: const Color(0xFFE0E0E0),
                                    ),
                                    boxShadow: [
                                      if (_selectedOption == 1)
                                        const BoxShadow(
                                          color: Color(0x3F000000),
                                          blurRadius: 4,
                                          offset: Offset(0, 4),
                                          spreadRadius: 0,
                                        ),
                                    ],
                                  ),
                                  child: Center(
                                    child: Text(
                                      'My Daughter',
                                      style: TextStyle(
                                        color: _selectedOption == 1
                                            ? Colors.black
                                            : Colors.grey,
                                        fontSize: 20,
                                        fontFamily: 'Comic Neue',
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                              const SizedBox(height: 20), // Adjust as needed
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _selectedOption = 2;
                                  });
                                },
                                child: AnimatedContainer(
                                  duration: const Duration(milliseconds: 200),
                                  width: 400,
                                  height: 57,
                                  decoration: BoxDecoration(
                                    gradient: _selectedOption == 2
                                        ? const LinearGradient(
                                            begin: Alignment(1.00, -0.03),
                                            end: Alignment(-1, 0.03),
                                            colors: [
                                              Color(0xFFF8BC29),
                                              Color(0xFF59FFAF)
                                            ],
                                          )
                                        : const LinearGradient(
                                            // Use white color for the non-selected state
                                            begin: Alignment(1.00, -0.03),
                                            end: Alignment(-1, 0.03),
                                            colors: [
                                              Colors.white,
                                              Colors.white
                                            ],
                                          ),
                                    borderRadius: BorderRadius.circular(13),
                                    border: Border.all(
                                      width: 0.50,
                                      color: const Color(0xFFE0E0E0),
                                    ),
                                    boxShadow: [
                                      if (_selectedOption == 2)
                                        const BoxShadow(
                                          color: Color(0x3F000000),
                                          blurRadius: 4,
                                          offset: Offset(0, 4),
                                          spreadRadius: 0,
                                        ),
                                    ],
                                  ),
                                  child: Center(
                                    child: Text(
                                      'My Son',
                                      style: TextStyle(
                                        color: _selectedOption == 2
                                            ? Colors.black
                                            : Colors.grey,
                                        fontSize: 20,
                                        fontFamily: 'Comic Neue',
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ),
                              ),

                              const SizedBox(height: 20), // Adjust as needed
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _selectedOption = 3;
                                  });
                                },
                                child: AnimatedContainer(
                                  duration: const Duration(milliseconds: 200),
                                  width: 400,
                                  height: 57,
                                  decoration: BoxDecoration(
                                    gradient: _selectedOption == 3
                                        ? const LinearGradient(
                                            begin: Alignment(1.00, -0.03),
                                            end: Alignment(-1, 0.03),
                                            colors: [
                                              Color(0xFFF8BC29),
                                              Color(0xFF59FFAF)
                                            ],
                                          )
                                        : const LinearGradient(
                                            // Use white color for the non-selected state
                                            begin: Alignment(1.00, -0.03),
                                            end: Alignment(-1, 0.03),
                                            colors: [
                                              Colors.white,
                                              Colors.white
                                            ],
                                          ),
                                    borderRadius: BorderRadius.circular(13),
                                    border: Border.all(
                                      width: 0.50,
                                      color: const Color(0xFFE0E0E0),
                                    ),
                                    boxShadow: [
                                      if (_selectedOption == 3)
                                        const BoxShadow(
                                          color: Color(0x3F000000),
                                          blurRadius: 4,
                                          offset: Offset(0, 4),
                                          spreadRadius: 0,
                                        ),
                                    ],
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Me',
                                      style: TextStyle(
                                        color: _selectedOption == 3
                                            ? Colors.black
                                            : Colors.grey,
                                        fontSize: 20,
                                        fontFamily: 'Comic Neue',
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
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
                                              const Quize3(),
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
