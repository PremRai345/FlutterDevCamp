import 'package:flutter/material.dart';
import 'package:flutter_dev_camp/model/list.dart';
import 'package:flutter_dev_camp/screens/detail.dart';

import 'second_detail.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 96, 131, 148),
      appBar: AppBar(
        leading: const Icon(
          Icons.sort_outlined,
          size: 35,
        ),
        backgroundColor: const Color.fromARGB(255, 96, 131, 148),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_none_outlined),
          ),
        ],
      ),
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
            padding: const EdgeInsets.only(left: 18, right: 15),
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
            padding: EdgeInsets.only(left: 18),
            child: Text(
              "Most Popular Recipes",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Container(
            height: 270,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const DetailPage()));
                    },
                    child: Stack(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height,
                          width: 190,
                          decoration: BoxDecoration(
                            color: const Color(0xffffab40),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 35, top: 20),
                          child: CircleAvatar(
                            radius: 80,
                            backgroundImage: NetworkImage(
                                "https://media.istockphoto.com/photos/brazilian-food-dish-isolated-on-white-background-picture-id1240581148?k=20&m=1240581148&s=612x612&w=0&h=2jtDtZ0aWis-399tfeZjQNGEvr8kLn3zJUy6hfi4LVg="),
                          ),
                        ),
                        const Positioned(
                          left: 80,
                          top: 185,
                          child: Text(
                            "Meal",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                        Positioned(
                          left: 20,
                          top: 212,
                          child: Container(
                            height: 1,
                            color: Colors.white,
                            width: 150,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 220, left: 20),
                          child: Column(
                            children: [
                              Row(
                                children: const [
                                  Icon(
                                    Icons.watch_later,
                                    color: Colors.white,
                                    size: 14,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "38 min",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 14),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Icon(
                                    Icons.person,
                                    color: Colors.white,
                                    size: 14,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "3 servings",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 14),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: const [
                                  Icon(
                                    Icons.star_rate,
                                    color: Colors.white,
                                    size: 14,
                                  ),
                                  Icon(
                                    Icons.star_rate,
                                    color: Colors.white,
                                    size: 14,
                                  ),
                                  Icon(
                                    Icons.star_rate,
                                    color: Colors.white,
                                    size: 14,
                                  ),
                                  Icon(
                                    Icons.star_rate,
                                    color: Colors.white,
                                    size: 14,
                                  ),
                                  Text(
                                    "50 reviews",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 14),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const SecondDetailPage()));
                    },
                    child: Stack(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height,
                          width: 190,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(159, 183, 84, 200),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 35, top: 20),
                          child: CircleAvatar(
                            radius: 80,
                            backgroundImage: NetworkImage(
                                "https://media.istockphoto.com/photos/spaghetti-pasta-with-meatballs-picture-id1155681995?k=20&m=1155681995&s=612x612&w=0&h=-ZRbbToBmu8HzE-LiqQSbUDnL4xDY_PfyZz3nkv2V0M="),
                          ),
                        ),
                        const Positioned(
                          left: 60,
                          top: 185,
                          child: Text(
                            "Chowmen",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                        Positioned(
                          left: 20,
                          top: 212,
                          child: Container(
                            height: 1,
                            color: Colors.white,
                            width: 150,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 220, left: 20),
                          child: Column(
                            children: [
                              Row(
                                children: const [
                                  Icon(
                                    Icons.watch_later,
                                    color: Colors.white,
                                    size: 14,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "20 min",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 14),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Icon(
                                    Icons.person,
                                    color: Colors.white,
                                    size: 14,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "2 servings",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 14),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: const [
                                  Icon(
                                    Icons.star_rate,
                                    color: Colors.white,
                                    size: 14,
                                  ),
                                  Icon(
                                    Icons.star_rate,
                                    color: Colors.white,
                                    size: 14,
                                  ),
                                  Text(
                                    "4 reviews",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 14),
                                  )
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Stack(
            children: [
              Container(
                width: 100,
                height: 70,
                color: const Color.fromARGB(255, 96, 131, 148),
                child: const Icon(
                  Icons.tune,
                  size: 45,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 80),
                child: Container(
                  height: 70,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: nameList.length,
                    itemBuilder: (BuildContext context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: Container(
                          width: 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromARGB(255, 53, 90, 109),
                          ),
                          child: Center(
                            child: Text(
                              nameList[index].name,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: Row(
        children: [
          Container(
            height: 60,
            width: MediaQuery.of(context).size.width / 4,
            decoration: const BoxDecoration(),
            child: const Icon(
              Icons.home_outlined,
              size: 35,
              color: Colors.white,
            ),
          ),
          Container(
            height: 60,
            width: MediaQuery.of(context).size.width / 4,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 96, 131, 148),
            ),
            child: const Icon(
              Icons.favorite_outline,
              size: 35,
              color: Colors.white,
            ),
          ),
          Container(
            height: 60,
            width: MediaQuery.of(context).size.width / 4,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 96, 131, 148),
            ),
            child: const Icon(
              Icons.search_outlined,
              size: 40,
              color: Colors.white,
            ),
          ),
          Container(
            height: 60,
            width: MediaQuery.of(context).size.width / 4,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 96, 131, 148),
            ),
            child: const Icon(
              Icons.person_outline,
              size: 35,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
