import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 96, 131, 148),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 96, 131, 148),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_none_outlined),
          ),
        ],
      ),
      drawer: const Drawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "Hi, Prem",
              style: TextStyle(
                  color: Color.fromARGB(255, 198, 196, 196), fontSize: 20),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 18),
            child: Text(
              "What do you want to cook today?",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: BorderSide.none,
                ),
                hintText: "Search recipes",
                hintStyle: const TextStyle(
                  color: Color.fromARGB(255, 171, 169, 169),
                ),
                prefixIcon: const Icon(Icons.search_outlined),
                prefixIconColor: const Color.fromARGB(255, 158, 157, 157),
              ),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              "Most Popular Recipes",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 96, 131, 148),
        items: const [
          BottomNavigationBarItem(
            label: "  ",
            icon: Icon(
              Icons.home_outlined,
              size: 14,
              color: Colors.white,
            ),
          ),
          BottomNavigationBarItem(
            label: "  ",
            icon: Icon(
              Icons.favorite_outline,
              size: 14,
              color: Colors.white,
            ),
          ),
          BottomNavigationBarItem(
            label: "   ",
            icon: Icon(
              Icons.search_outlined,
              size: 14,
              color: Colors.white,
            ),
          ),
          BottomNavigationBarItem(
            label: "   ",
            icon: Icon(
              Icons.person_outline,
              size: 14,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
