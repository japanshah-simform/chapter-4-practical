import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:
          BottomNavigationBar(type: BottomNavigationBarType.fixed, items: [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: "Home"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: "Loans"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: "History"),
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: "History"),
      ]),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            height: MediaQuery.of(context).size.height * .34,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/homepage-image.png"),
                fit: BoxFit.cover,
              ),
            ),
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                    spacing: 20,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage("assets/images/profile.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Text(
                        "Olivia Wilson",
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ]),
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Column()
        ]),
      ),
    );
  }
}
