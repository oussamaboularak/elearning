import 'package:flutter/material.dart';
import 'package:innotech/widget/navbar.dart';

import '../widget/constants.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

String dropdownValue = "hello";

const List<String> list = <String>[
  'none',
  'Only Phone Number',
  'All',
  'Only Email'
];

const List<String> category = <String>[
  'person',
  'teacher',
  'institu',
];

class _SignUpPageState extends State<SignUpPage> {
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
                          const Text("Sign Up with US ",
                              style: TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.w700,
                              )),
                          const SizedBox(height: 10),

                          DropdownMenu<String>(
                            initialSelection: "Show you contact ",
                            onSelected: (String? value) {
                              // This is called when the user selects an item.
                              setState(() {
                                dropdownValue = value!;
                              });
                            },
                            dropdownMenuEntries: category
                                .map<DropdownMenuEntry<String>>((String value) {
                              return DropdownMenuEntry<String>(
                                  value: value, label: value);
                            }).toList(),
                          ),
                          const SizedBox(height: 20),

                          // Username Field
                          const TextField(
                            decoration: InputDecoration(
                              hintText:
                                  'Enter username', // Add a hint for the username
                              labelText: 'Username',
                              border: OutlineInputBorder(),
                            ),
                          ),
                          const SizedBox(height: 10),
                          // Email Field
                          const TextField(
                            decoration: InputDecoration(
                              hintText: 'Enter email',
                              labelText: 'Email',
                              border: OutlineInputBorder(),
                            ),
                          ),
                          const SizedBox(height: 10),

                          // Username Field
                          const TextField(
                            decoration: InputDecoration(
                              hintText: 'Mobile', // Add a hint for !
                              labelText: 'Mobile',
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

                          DropdownMenu<String>(
                            initialSelection: "Show you contact ",
                            onSelected: (String? value) {
                              // This is called when the user selects an item.
                              setState(() {
                                dropdownValue = value!;
                              });
                            },
                            dropdownMenuEntries: list
                                .map<DropdownMenuEntry<String>>((String value) {
                              return DropdownMenuEntry<String>(
                                  value: value, label: value);
                            }).toList(),
                          ),
                          const SizedBox(height: 10),

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
                                foregroundColor: Colors.white, backgroundColor: Colors.transparent,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              child: const Center(child: Text("Sign Up")),
                            ),
                          ),

                          const SizedBox(height: 20),
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
