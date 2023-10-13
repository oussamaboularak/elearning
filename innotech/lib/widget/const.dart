import 'package:flutter/material.dart';
import 'package:innotech/screens/loginpage.dart';
import 'package:innotech/home.dart';

class Later extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("Your App Name"),
      actions: [
        IconButton(
          icon: Icon(Icons.person), // Replace with your user icon
          onPressed: () {
            // Handle user profile action
          },
        ),
        ResponsiveNavBar(),
      ],
    );
  }
}

class ResponsiveNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MediaQuery.of(context).size.width > 1200
        ? Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              NavBarItem("Find Tutors", () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              }),
              NavBarItem("Hire a Tutor", () {
                // Handle 'Hire a Tutor' tap
              }),
              NavBarItemWithUnderline("Become Tutor", () {
                // Handle 'Become Tutor' tap
              }),
              NavBarItem("Find Students", () {
                // Handle 'Find Students' tap
              }),
              NavBarItem("Share & Get Points", () {
                // Handle 'Share & Get Points' tap
              }),
              NavBarItem("Login", () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              }),
            ],
          )
        : PopupMenuButton(
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  child: Text("Find Tutors"),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
                ),
                PopupMenuItem(
                  child: Text("Hire a Tutor"),
                  onTap: () {
                    // Handle 'Hire a Tutor' tap
                  },
                ),
                PopupMenuItem(
                  child: Text("Become Tutor"),
                  onTap: () {
                    // Handle 'Become Tutor' tap
                  },
                ),
                PopupMenuItem(
                  child: Text("Find Students"),
                  onTap: () {
                    // Handle 'Find Students' tap
                  },
                ),
                PopupMenuItem(
                  child: Text("Share & Get Points"),
                  onTap: () {
                    // Handle 'Share & Get Points' tap
                  },
                ),
                PopupMenuItem(
                  child: Text("Login"),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                ),
              ];
            },
            icon: Icon(Icons.menu),
          );
  }
}

class NavBarItem extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  NavBarItem(this.title, this.onTap);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}

class NavBarItemWithUnderline extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  NavBarItemWithUnderline(this.title, this.onTap);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 20,
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
    );
  }
}
