import 'package:flutter/material.dart';
import 'package:innotech/screens/forms/form1.dart';
import 'package:innotech/widget/constants.dart';
import 'package:innotech/widget/navbar.dart';
import 'package:innotech/widget/searchbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                      "images/h1.png",
                      fit: BoxFit.cover,
                      height: 500,
                    ),
                  ),
                ),
                Container(
                  width: 620,
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          "Find online teachers & home tutors for free",
                          style: TextStyle(
                            fontSize: 64,
                            color: Color(0xFF5F82CC),
                            fontWeight: FontWeight.w700,
                          ),
                        ),

                        const SizedBox(height: 20),

                        // Button
                        Container(
                          width: double.infinity,
                          height: 62,
                          decoration: BoxDecoration(
                            gradient: btnColor,
                            borderRadius: BorderRadius.circular(38.5),
                          ),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Quize1(),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor: Colors.transparent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40),
                              ),
                            ),
                            child: const Center(child: Text("Get Started")),
                          ),
                        ),
                        const SizedBox(height: 20),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Online Classes"),
                            SizedBox(
                              width: 20,
                            ), // Adjust the spacing between the text elements
                            Text("Home Tutoring"),
                            SizedBox(
                              width: 20,
                            ), // Adjust the spacing between the text elements
                            Text("Exam preparation"),
                            SizedBox(
                              width: 20,
                            ), // Adjust the spacing between the text elements
                            Text("IELTS"),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const SearchF(),
            const SizedBox(height: 50)
          ],
        ),
      ),
    );
  }
}
