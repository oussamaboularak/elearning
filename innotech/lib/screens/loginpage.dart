import 'package:flutter/material.dart';
import 'package:innotech/widget/navbar.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

Gradient btnColor = LinearGradient(
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
  colors: [Color(0xff8bffc7), Color(0xfff1c251)],
);

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Navbar(),
            Row(
              children: [
                Expanded(
                  flex: 4,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white70),
                    child: Card(
                      //   color: Colors.white,
                      elevation: 8,
                      shadowColor: Colors.grey, // Add a shadow color
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text("Find Online & Offline Job Opportunity",
                                style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.w700,
                                )),
                            Text(
                                "Get special opportunity and get more than 10,000 AED/Month",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                )),
                            // Email Field
                            TextField(
                              decoration: InputDecoration(
                                hintText: 'Enter email',
                                labelText: 'Email',
                                border: OutlineInputBorder(),
                              ),
                            ),
                            SizedBox(height: 10),

                            // Password Field
                            TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                hintText: 'Enter password',
                                labelText: 'Password',
                                border: OutlineInputBorder(),
                              ),
                            ),
                            SizedBox(height: 20),

                            // Login Button
                            Container(
                              width: double.infinity,
                              height: 40,
                              decoration: BoxDecoration(
                                gradient: btnColor,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: ElevatedButton(
                                onPressed: () => print("it's pressed"),
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.transparent,
                                  onPrimary: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                                child: Center(child: Text("Sign In")),
                              ),
                            ),

                            SizedBox(height: 20),

                            Text('Or continue with'),

                            SizedBox(height: 20),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                _loginWithButton(image: 'images/google.png'),
                                SizedBox(width: 20),
                                _loginWithButton(image: 'images/facebook.png'),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Visibility(
                  visible: MediaQuery.of(context).size.width > 768,
                  child: Expanded(
                    flex: 6,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                          20), // Adjust the radius as needed
                      child: Image.network(
                        "images/login.png", // Replace with your image URL
                        fit: BoxFit.cover,
                        height: 500,
                      ),
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

  Widget _loginWithButton({required String image, bool isActive = false}) {
    return Container(
      width: 90,
      height: 70,
      decoration: isActive
          ? BoxDecoration(
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 10,
                  blurRadius: 30,
                )
              ],
              borderRadius: BorderRadius.circular(15),
            )
          : BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.grey),
            ),
      child: Center(
          child: Container(
        decoration: isActive
            ? BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(35),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.white10,
                    spreadRadius: 2,
                    blurRadius: 15,
                  )
                ],
              )
            : const BoxDecoration(),
        child: Image.network(
          image,
          width: 35,
        ),
      )),
    );
  }
}
