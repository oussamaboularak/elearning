import 'package:flutter/material.dart';
import 'package:innotech/widget/navbar.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

Gradient btnColor = LinearGradient(
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
  colors: [Color(0xff8bffc7), Color(0xfff1c251)],
);

class _SignupState extends State<Signup> {
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
                      color: Colors.blue, // Set the background color to blue
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text("Sign Up with US ",
                              style: TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.w700,
                                color:
                                    Colors.white, // Set the text color to white
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

                          // Username Field
                          TextField(
                            decoration: InputDecoration(
                              hintText:
                                  'Enter username', // Add a hint for the username
                              labelText: 'Username',
                              border: OutlineInputBorder(),
                            ),
                          ),
                          SizedBox(height: 10),

                          // // Location Dropdown
                          // DropdownButton(
                          //   items: [
                          //     DropdownMenuItem(child: Text('Location 1')),
                          //     DropdownMenuItem(child: Text('Location 2')),
                          //     // Add more locations as needed
                          //   ],
                          //   onChanged: (value) {
                          //     // Handle location selection
                          //   },
                          // ),

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

                          // Sign Up Button
                          Container(
                            width: double.infinity,
                            height: 40,
                            decoration: BoxDecoration(
                              gradient: btnColor,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: ElevatedButton(
                              onPressed: () => print("Sign Up button pressed"),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.transparent,
                                onPrimary: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              child: Center(child: Text("Sign Up")),
                            ),
                          ),

                          SizedBox(height: 20),

                          Text('Or continue with'),
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
                        "images/signup.png", // Replace with your image URL
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
}
