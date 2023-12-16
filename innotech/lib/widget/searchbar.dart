import 'package:flutter/material.dart';

class SearchF extends StatelessWidget {
  const SearchF({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      double screenWidth = constraints.maxWidth;
      double paddingValue = screenWidth > 768 ? 8.0 : 4.0;
      double fontSize = screenWidth > 768 ? 20.0 : 16.0;

      if (screenWidth > 768) {
        return Container(
          width: 1000,
          height: 100, // Adjust the height as needed
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 223, 226, 228),
            borderRadius: BorderRadius.circular(25),
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                spreadRadius: 2,
                blurRadius: 15,
              ),
            ],
          ),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  height: 100,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: DropdownButtonFormField<String>(
                    items: const [
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
                      print(value);
                    },
                    hint: const Text('I want to teach'),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 100,
                  width: 250,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Curriculum',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      ),
                      DropdownButtonFormField<String>(
                        items: const [
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
                          print(value);
                        },
                        hint: const Text(
                          'British',
                          style: TextStyle(
                            fontSize: 12,
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
                  height: 100,
                  width: 250,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Online/Offline',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      ),
                      DropdownButtonFormField<String>(
                        items: const [
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
                          print(value);
                        },
                        hint: const Text(
                          'British',
                          style: TextStyle(
                            fontSize: 12,
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
                  height: 100,
                  width: 250,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Localisation',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      ),
                      DropdownButtonFormField<String>(
                        items: const [
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
                          print(value);
                        },
                        hint: const Text(
                          'British',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 60,
                child: ElevatedButton(
                  onPressed: () {
                    // Handle the search button click
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                  ),
                  child: const Text(
                    'Y',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      } else {
        // For mobile view, display a drop-down menu
        return AppBar(
          title: const Text('Search'),
          actions: [
            PopupMenuButton<String>(
              itemBuilder: (BuildContext context) {
                return [
                  const PopupMenuItem<String>(
                    value: 'Option 1',
                    child: Text('Option 1'),
                  ),
                  const PopupMenuItem<String>(
                    value: 'Option 2',
                    child: Text('Option 2'),
                  ),
                  const PopupMenuItem<String>(
                    value: 'Option 3',
                    child: Text('Option 3'),
                  ),
                ];
              },
              onSelected: (String value) {
                // Handle the selected option
                print(value);
              },
              icon: const Icon(Icons.filter_list),
            ),
          ],
        );
      }
    });
  }
}
