import 'package:flutter/material.dart';
import 'package:innotech/widget/navbar.dart';

import '../../widget/HoverContainer2.dart';
import 'form2.dart';

class Quize5 extends StatefulWidget {
  const Quize5({super.key});

  @override
  State<Quize5> createState() => _Quize5State();
}

int _selectedOption = 0; // 0 for none, 1 for Student, 2 for Parent

class _Quize5State extends State<Quize5> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Navbar(),
            Stack(
              children: [
                Visibility(
                  visible: MediaQuery.of(context).size.width > 768,
                  child: Container(
                    alignment: Alignment.topRight,
                    child: Image.network(
                      "images/hero4.png",
                      fit: BoxFit.cover,
                      height: 400,
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
                        Text(
                          'Sigment needed',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontFamily: 'Comic Neue',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: 20),

                        Center(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        _selectedOption = 1;
                                      });
                                    },
                                    child: AnimatedContainer(
                                      duration:
                                          const Duration(milliseconds: 200),
                                      width: 200,
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
                                          'English',
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

                                  const SizedBox(
                                      height: 20), // Adjust as needed
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        _selectedOption = 2;
                                      });
                                    },
                                    child: AnimatedContainer(
                                      duration:
                                          const Duration(milliseconds: 200),
                                      width: 200,
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
                                          'Arabic',
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

                                  const SizedBox(
                                      height: 20), // Adjust as needed
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        _selectedOption = 3;
                                      });
                                    },
                                    child: AnimatedContainer(
                                      duration:
                                          const Duration(milliseconds: 200),
                                      width: 200,
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
                                          'French',
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
                              const SizedBox(
                                height: 20,
                              ), // Adjust as needed

                              Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        _selectedOption = 4;
                                      });
                                    },
                                    child: AnimatedContainer(
                                      duration:
                                          const Duration(milliseconds: 200),
                                      width: 200,
                                      height: 57,
                                      decoration: BoxDecoration(
                                        gradient: _selectedOption == 4
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
                                          if (_selectedOption == 4)
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
                                          'Maths',
                                          style: TextStyle(
                                            color: _selectedOption == 4
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

                                  const SizedBox(
                                      height: 20), // Adjust as needed
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        _selectedOption = 5;
                                      });
                                    },
                                    child: AnimatedContainer(
                                      duration:
                                          const Duration(milliseconds: 200),
                                      width: 200,
                                      height: 57,
                                      decoration: BoxDecoration(
                                        gradient: _selectedOption == 5
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
                                          if (_selectedOption == 5)
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
                                          'QURAN',
                                          style: TextStyle(
                                            color: _selectedOption == 5
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

                                  const SizedBox(
                                      height: 20), // Adjust as needed
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        _selectedOption = 6;
                                      });
                                    },
                                    child: AnimatedContainer(
                                      duration:
                                          const Duration(milliseconds: 200),
                                      width: 200,
                                      height: 57,
                                      decoration: BoxDecoration(
                                        gradient: _selectedOption == 6
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
                                          if (_selectedOption == 6)
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
                                          'STEM Programme',
                                          style: TextStyle(
                                            color: _selectedOption == 6
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
                              const SizedBox(
                                height: 20,
                              ), // Adjust as needed

                              const SizedBox(height: 20), // Adjust as needed

                              Row(children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _selectedOption = 7;
                                    });
                                  },
                                  child: AnimatedContainer(
                                    duration: const Duration(milliseconds: 200),
                                    width: 600,
                                    height: 57,
                                    decoration: BoxDecoration(
                                      gradient: _selectedOption == 7
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
                                        if (_selectedOption == 7)
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
                                        'Other',
                                        style: TextStyle(
                                          color: _selectedOption == 7
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
                              ])
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
                                              Quize2(),
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
