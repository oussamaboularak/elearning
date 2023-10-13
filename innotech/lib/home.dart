import 'package:flutter/material.dart';
import 'package:innotech/widget/navbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

Gradient btnColor = LinearGradient(
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
  colors: [Color(0xff8bffc7), Color(0xfff1c251)],
);

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
                Container(
                  child: Row(
                    children: [
                      Expanded(
                        flex: 5,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white70,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "Find online teachers & home tutors for free",
                                  style: TextStyle(
                                    fontSize: 64,
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),

                                SizedBox(height: 20),

                                // Button
                                Container(
                                  width: double.infinity,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    gradient: btnColor,
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                  child: ElevatedButton(
                                    onPressed: () => print("it's pressed"),
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.transparent,
                                      onPrimary: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(40),
                                      ),
                                    ),
                                    child: Center(child: Text("Get Started")),
                                  ),
                                ),
                                SizedBox(height: 20),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Online Classes"),
                                    SizedBox(
                                        width:
                                            20), // Adjust the spacing between the text elements
                                    Text("Home Tutoring"),
                                    SizedBox(
                                        width:
                                            20), // Adjust the spacing between the text elements
                                    Text("Exam preparation"),
                                    SizedBox(
                                        width:
                                            20), // Adjust the spacing between the text elements
                                    Text("EILTS"),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Visibility(
                        visible: MediaQuery.of(context).size.width > 768,
                        child: Expanded(
                          flex: 5,
                          child: Container(
                            alignment: Alignment.centerRight,
                            child: Image.network(
                              "images/h1.png",
                              fit: BoxFit.cover,
                              height: 500,
                            ),
                          ),
                        ),
                      ),
                    ],
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
