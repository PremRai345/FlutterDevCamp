import 'package:flutter/material.dart';
import 'package:flutter_dev_camp/models/data.dart';
import '../models/category.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xfffdd037),
        title: const Text(
          "Travel App",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              "https://img.freepik.com/free-photo/travel-concept-with-landmarks_23-2149153256.jpg?w=1380&t=st=1663463115~exp=1663463715~hmac=974df8f389794863672cce65a005b61e229c99303f1adb04bfdd78fcbe56cd4e",
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 55,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: CategotyList.length,
                itemBuilder: (BuildContext context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Container(
                      height: 50,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xfffdd037),
                      ),
                      child: Center(
                        child: Text(
                          CategotyList[index].name,
                          style: const TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                "Popular Destinations",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Places(),
          ],
        ),
      ),
    );
  }
}
