import 'package:flutter/material.dart';

import '../model/ingrediant.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: const Icon(
          Icons.arrow_back_ios,
          size: 30,
        ),
        backgroundColor: const Color(0xffffab40),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_none_outlined,
              size: 30,
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            height: 300,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                color: Color(0xffffab40),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50))),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 40),
                child: Text(
                  "Meal",
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 60),
                child: Row(
                  children: const [
                    Icon(
                      Icons.watch_later,
                      color: Colors.white,
                      size: 20,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "38 min",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 60),
                child: Row(
                  children: const [
                    Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 20,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "3 servings",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 60),
                child: Row(
                  children: const [
                    Icon(
                      Icons.local_fire_department,
                      color: Colors.white,
                      size: 20,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "475 calories",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 60),
                child: Row(
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
                    Icon(
                      Icons.star_rate,
                      color: Colors.white,
                      size: 14,
                    ),
                    Text(
                      "50 reviews",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    )
                  ],
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(left: 200),
            child: CircleAvatar(
              radius: 120,
              backgroundImage: NetworkImage(
                  "https://media.istockphoto.com/photos/brazilian-food-dish-isolated-on-white-background-picture-id1240581148?k=20&m=1240581148&s=612x612&w=0&h=2jtDtZ0aWis-399tfeZjQNGEvr8kLn3zJUy6hfi4LVg="),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 300, left: 20),
            child: Row(
              children: const [
                Text(
                  " Ingredients",
                  style: TextStyle(
                      color: Color.fromARGB(255, 93, 113, 131),
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 330),
            child: Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: ingredientsList.length,
                itemBuilder: (BuildContext context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(7.0),
                    child: Container(
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(255, 255, 255, 255),
                      ),
                      child: Center(
                        child: Text(
                          ingredientsList[index].name,
                          style: const TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: Row(
        children: [
          Container(
            height: 60,
            width: MediaQuery.of(context).size.width / 4,
            decoration: const BoxDecoration(color: Colors.white),
            child: const Icon(
              Icons.home_outlined,
              size: 35,
              color: Colors.grey,
            ),
          ),
          Container(
            height: 60,
            width: MediaQuery.of(context).size.width / 4,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: const Icon(
              Icons.favorite_outline,
              size: 35,
              color: Colors.grey,
            ),
          ),
          Container(
            height: 60,
            width: MediaQuery.of(context).size.width / 4,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: const Icon(
              Icons.search_outlined,
              size: 40,
              color: Colors.grey,
            ),
          ),
          Container(
            height: 60,
            width: MediaQuery.of(context).size.width / 4,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: const Icon(
              Icons.person_outline,
              size: 35,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
