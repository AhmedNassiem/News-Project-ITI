import 'package:flutter/material.dart';
import 'package:news_app/List1/CategoryInfo.dart';
import 'package:news_app/List1/CategoryView.dart';

class NewsCategory extends StatelessWidget {
  const NewsCategory({super.key, required this.category});
  final CategoryInfo category;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return CategoryView(
                category: category.text.toLowerCase(),
              );
            },
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 20),
        child: Column(
          children: [
            CircleAvatar(
              radius: 26,
              backgroundColor: Colors.red,
              child: CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage(
                  category.image,
                ),
              ),
            ),
            Center(
              child: Text(
                category.text,
                style: const TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
