import 'package:flutter/material.dart';

import '../List2/category list 2.dart';
import '../Services/ArticleModel.dart';

class FilteredArticlesPage extends StatelessWidget {
  final List<ArticleModel1> filteredArticles;

  const FilteredArticlesPage({required this.filteredArticles});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Filtered Articles'),
      ),
      body: ListView.builder(
        itemCount: filteredArticles.length,
        itemBuilder: (context, index) {
          return CategoryList2(
            articleModel1: filteredArticles[index],
          );
        },
      ),
    );
  }
}
