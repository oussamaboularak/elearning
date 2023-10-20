import 'package:flutter/material.dart';
import 'package:innotech/screens/loginpage.dart';
import 'package:innotech/home.dart';
import 'package:innotech/screens/signup.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double screenWidth = constraints.maxWidth;
        double paddingValue = screenWidth > 768 ? 8.0 : 4.0;
        double fontSize = screenWidth > 768 ? 20.0 : 16.0;

        return Material(
          child: Column(
            children: [
              Image.network("images/Vector 1.png"),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // Logo
                  Image.network(
                    "images/logo.png",
                    width: 60,
                    height: 60,
                    fit: BoxFit.cover,
                  ),
                  Image.network("images/Vector 2.png"),

                  if (screenWidth > 768)
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage()),
                        );
                      },
                      child: Padding(
                        padding: EdgeInsets.all(paddingValue),
                        child: Text(
                          "Find Tutors",
                          style: TextStyle(
                            fontSize: fontSize,
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  if (screenWidth > 768)
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUpPage()),
                        );
                      },
                      child: Padding(
                        padding: EdgeInsets.all(paddingValue),
                        child: Text(
                          "Hire a Tutor",
                          style: TextStyle(
                            fontSize: fontSize,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  if (screenWidth > 768)
                    InkWell(
                      onTap: () {
                        // Handle 'Login' tap
                      },
                      child: Padding(
                        padding: EdgeInsets.all(paddingValue),
                        child: Stack(
                          children: [
                            Text(
                              "Become Tutor",
                              style: TextStyle(
                                fontSize: fontSize,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Positioned(
                              left: 0,
                              right: 0,
                              bottom: 0,
                              child: Container(
                                height: 2,
                                color: Colors.green,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  if (screenWidth > 768)
                    InkWell(
                      onTap: () {
                        // Handle 'Share' tap
                      },
                      child: Padding(
                        padding: EdgeInsets.all(paddingValue),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 8),
                          child: Text(
                            "Find Students",
                            style: TextStyle(
                              fontSize: fontSize,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ),
                  if (screenWidth > 768)
                    InkWell(
                      onTap: () {
                        // Handle 'Share' tap
                      },
                      child: Padding(
                        padding: EdgeInsets.all(paddingValue),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 8),
                          child: Text(
                            "Share & Get Points",
                            style: TextStyle(
                              fontSize: fontSize,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ),
                  if (screenWidth > 768)
                    InkWell(
                      onTap: () {
                        // Navigate to another screen when clicked
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginPage()),
                        );
                      },
                      child: Padding(
                        padding: EdgeInsets.all(paddingValue),
                        child: Text(
                          "Login",
                          style: TextStyle(
                            fontSize: fontSize,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  if (screenWidth <= 768)
                    PopupMenuButton(
                      itemBuilder: (context) {
                        return [
                          PopupMenuItem(
                            child: const Text("Find Tutors"),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const HomePage()),
                              );
                            },
                          ),
                          PopupMenuItem(
                            child: const Text("Hire a Tutor"),
                            onTap: () {
                              // Handle 'About' tap
                            },
                          ),
                          PopupMenuItem(
                            child: const Text("Become Tutor"),
                            onTap: () {
                              // Handle 'Login' tap
                            },
                          ),
                          PopupMenuItem(
                            child: const Text("Find Students"),
                            onTap: () {
                              // Handle 'Share' tap
                            },
                          ),
                          PopupMenuItem(
                            child: const Text("Share & Get Points"),
                            onTap: () {
                              // Handle 'Share' tap
                            },
                          ),
                          PopupMenuItem(
                            child: const Text("Login"),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LoginPage()),
                              );
                            },
                          ),
                        ];
                      },
                      icon: const Icon(Icons.menu),
                    ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
