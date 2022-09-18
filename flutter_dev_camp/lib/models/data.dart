import 'package:flutter/material.dart';

class Places extends StatefulWidget {
  const Places({Key? key}) : super(key: key);

  @override
  State<Places> createState() => _PlacesState();
}

class _PlacesState extends State<Places> {
  final List<Map<String, dynamic>> gridMap = [
    {
      "title": "Nepal",
      "images":
          "https://cdn.pixabay.com/photo/2021/02/23/11/06/mountains-6043079_960_720.jpg",
    },
    {
      "title": "Switzerland",
      "images":
          "https://cdn.pixabay.com/photo/2020/09/01/06/10/lake-5534341__340.jpg",
    },
    {
      "title": "Norway",
      "images":
          "https://cdn.pixabay.com/photo/2021/08/27/18/50/water-6579313__340.jpg",
    },
    {
      "title": "London",
      "images":
          "https://cdn.pixabay.com/photo/2017/06/11/18/03/big-ben-2393098_960_720.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12.0,
          mainAxisSpacing: 12.0,
          mainAxisExtent: 230,
        ),
        itemCount: gridMap.length,
        itemBuilder: (_, index) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                16.0,
              ),
              color: Colors.amberAccent.shade100,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16.0),
                    topRight: Radius.circular(16.0),
                  ),
                  child: Image.network(
                    "${gridMap.elementAt(index)['images']}",
                    height: 170,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(
                            "${gridMap.elementAt(index)['title']}",
                            style: Theme.of(context).textTheme.subtitle1!.merge(
                                  const TextStyle(
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
