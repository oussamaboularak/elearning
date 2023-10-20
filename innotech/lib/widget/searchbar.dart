import 'package:flutter/material.dart';

class SearchF extends StatelessWidget {
  const SearchF({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1000,
      height: 100, // Adjust the height as needed
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 223, 226, 228), // Background color
        borderRadius: BorderRadius.circular(25), // Rounded corners
        boxShadow: [
          BoxShadow(
            color: Colors.grey, // Shadow color
            spreadRadius: 2, // Modify the spread radius
            blurRadius: 15, // Modify the blur radius
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 100, // Adjust the height as needed
              width: 150, // Adjust the width as needed
              decoration: BoxDecoration(
                color: Colors.white, // Background color for the dropdown
                borderRadius: BorderRadius.circular(15), // Rounded corners
              ),
              child: DropdownButtonFormField<String>(
                items: [
                  DropdownMenuItem<String>(
                    value: 'option1',
                    child: Text('Option 1'),
                  ),
                  DropdownMenuItem<String>(
                    value: 'option2',
                    child: Text('Option 2'),
                  ),
                  DropdownMenuItem<String>(
                    value: 'option3',
                    child: Text('Option 3'),
                  ),
                ],
                onChanged: (value) {
                  // Handle dropdown value change
                  print(value);
                },
                hint: Text('I want to teach'),
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 100, // Adjust the height as needed
              width: 250, // Adjust the width as needed
              decoration: BoxDecoration(
                color: Colors.white, // Background color for the dropdown
                borderRadius: BorderRadius.circular(15), // Rounded corners
              ),
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start, // Align the text to the left
                children: [
                  Text(
                    'Cirriculum', // Your subtitle text
                    style: TextStyle(
                      fontSize: 16, // Adjust the font size as needed
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                  DropdownButtonFormField<String>(
                    items: [
                      DropdownMenuItem<String>(
                        value: '1',
                        child: Text('Option 1'),
                      ),
                      DropdownMenuItem<String>(
                        value: '2',
                        child: Text('Option 2'),
                      ),
                      DropdownMenuItem<String>(
                        value: '3',
                        child: Text('Option 3'),
                      ),
                    ],
                    onChanged: (value) {
                      // Handle dropdown value change
                      print(value);
                    },
                    hint: Text(
                      'British',
                      style: TextStyle(
                        fontSize: 12, // Adjust the font size as needed
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 100, // Adjust the height as needed
              width: 150, // Adjust the width as needed
              decoration: BoxDecoration(
                color: Colors.white, // Background color for the dropdown
                borderRadius: BorderRadius.circular(15), // Rounded corners
              ),
              child: DropdownButtonFormField<String>(
                items: [
                  DropdownMenuItem<String>(
                    value: 'option1',
                    child: Text('Option 1'),
                  ),
                  DropdownMenuItem<String>(
                    value: 'option2',
                    child: Text('Option 2'),
                  ),
                  DropdownMenuItem<String>(
                    value: 'option3',
                    child: Text('Option 3'),
                  ),
                ],
                onChanged: (value) {
                  // Handle dropdown value change
                  print(value);
                },
                hint: Text('Dropdown 1'),
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 100, // Adjust the height as needed
              width: 150, // Adjust the width as needed
              decoration: BoxDecoration(
                color: Colors.white, // Background color for the dropdown
                borderRadius: BorderRadius.circular(15), // Rounded corners
              ),
              child: DropdownButtonFormField<String>(
                items: [
                  DropdownMenuItem<String>(
                    value: 'option1',
                    child: Text('Option 1'),
                  ),
                  DropdownMenuItem<String>(
                    value: 'option2',
                    child: Text('Option 2'),
                  ),
                  DropdownMenuItem<String>(
                    value: 'option3',
                    child: Text('Option 3'),
                  ),
                ],
                onChanged: (value) {
                  // Handle dropdown value change
                  print(value);
                },
                hint: Text('Dropdown 1'),
              ),
            ),
          ),
          SizedBox(
            width: 60, // Adjust the width as needed
            child: ElevatedButton(
              onPressed: () {
                // Handle the search button click
              },
              child: Text(
                'Y',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.blue, // Button background color
              ),
            ),
          ),
        ],
      ),
    );
  }
}
