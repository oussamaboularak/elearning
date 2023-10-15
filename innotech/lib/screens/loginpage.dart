import 'package:flutter/material.dart';
import 'package:innotech/screens/signup.dart';
import 'package:innotech/widget/navbar.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

Gradient btnColor = const LinearGradient(
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
            const Navbar(),
            Row(
              children: [
                Expanded(
                  flex: 4,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white, // Set the background color to blue
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey, // Shadow color
                          offset:
                              Offset(0, 3), // Specify the offset of the shadow
                          blurRadius: 6, // Adjust the blur radius as needed
                          spreadRadius: 2, // Adjust the spread radius as needed
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text("Find Online & Offline Job Opportunity",
                              style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.w700,
                              )),
                          const Text(
                              "Get special opportunity and get more than 10,000 AED/Month",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                              )),
                          // Email Field
                          const TextField(
                            decoration: InputDecoration(
                              hintText: 'Enter email',
                              labelText: 'Email',
                              border: OutlineInputBorder(),
                            ),
                          ),
                          const SizedBox(height: 10),

                          // Password Field
                          const TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: 'Enter password',
                              labelText: 'Password',
                              border: OutlineInputBorder(),
                            ),
                          ),
                          const SizedBox(height: 20),

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
                                foregroundColor: Colors.white, backgroundColor: Colors.transparent,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              child: const Center(child: Text("Sign In")),
                            ),
                          ),

                          const SizedBox(height: 20),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const SignUpPage()));
                            },
                            child: const Text('SignUp',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.amber,
                                )),
                          ),

                          const SizedBox(height: 20),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              _loginWithButton(image: 'images/google.png'),
                              const SizedBox(width: 20),
                              _loginWithButton(image: 'images/facebook.png'),
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
      height: 40,
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
