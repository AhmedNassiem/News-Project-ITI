import 'package:flutter/material.dart';
import 'CategoryInfo.dart';
import 'NewsCategory.dart';

class View1 extends StatelessWidget {
  const View1({super.key});

  @override
  Widget build(BuildContext context) {
    final List<CategoryInfo> category = [
      CategoryInfo(image: 'assets/business.png', text: 'Business'),
      CategoryInfo(image: 'assets/entertaiment.jpg', text: 'Entertainment'),
      CategoryInfo(image: 'assets/health.jpg', text: 'Health'),
      CategoryInfo(image: 'assets/science.avif', text: 'Science'),
      CategoryInfo(image: 'assets/sports.avif', text: 'Sports'),
      CategoryInfo(image: 'assets/Technology.webp', text: 'Technology'),
    ];

    return Padding(
      padding: const EdgeInsets.only(top: 16.0, bottom: 16.0, left: 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Category : ",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
          const SizedBox(
            height: 35,
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 2.0),
            ),
            height: 90,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: category.length,
                itemBuilder: (context, index) {
                  return NewsCategory(
                    category: category[index],
                  );
                },
              ),
            ),
          ),
          const SizedBox(
            height: 35,
          ),
          const Text("General News : ",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
