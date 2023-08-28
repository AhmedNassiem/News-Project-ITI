import 'package:flutter/material.dart';

import '../List2/ListView2.dart';
import '../Services/ArticleModel.dart';
import '../Services/NewsService.dart';
import '../Tools/SearchBar.dart';

class CategoryView extends StatefulWidget {
  const CategoryView({super.key, required this.category});
  final String category;

  @override
  State<CategoryView> createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  List<ArticleModel1> allArticles = [];
  void initState() {
    super.initState();
    start(); // Fetch news articles
    print(allArticles);

  }
  Future<void> getGeneralNws() async {
    allArticles = await NewsService().getNews(widget.category);
    print(allArticles);
    setState(() {});
  }

  Future<void> start()async{
    await getGeneralNws();

  }// Store all articles
   // Store all articles

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        backgroundColor: Colors.red,
        title: Text(widget.category),
      ),
      body: Column(
        children: [
          SearchBar1(
            allArticles: allArticles,

          ),
          Expanded(
            child: CustomScrollView(
              slivers: [

                View2(category: widget.category, articles: [],),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
