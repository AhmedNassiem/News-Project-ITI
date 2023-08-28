import 'package:flutter/material.dart';

class NewsDetailPage extends StatelessWidget {
  final String image;
  final String title;
  final String content;
  final String publishedAt;

  const NewsDetailPage(
      {super.key,
      required this.image,
      required this.title,
      required this.content,
      required this.publishedAt});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('News Details'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(image),
            const SizedBox(height: 16),
            Text(
              title,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Text(
              publishedAt,
              style: const TextStyle(
                fontSize: 30,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              content,
              style: const TextStyle(
                fontSize: 25,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
