import 'package:flutter/material.dart';
import 'package:news_app/Services/NewsService.dart';
import '../Services/ArticleModel.dart';
import 'category list 2.dart';

class View2 extends StatefulWidget {
  const View2({Key? key, required this.category, required this.articles}) : super(key: key);
  final String category;
  final List<ArticleModel1> articles;
  @override
  State<View2> createState() => _View2State();
}

class _View2State extends State<View2> {
  List<ArticleModel1> articles = [];

  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    getGeneralNws();
  }

  Future<void> getGeneralNws() async {
    articles = await NewsService().getNews(widget.category);
    print(articles);
    isLoading = false;
    setState(() {});
  }


  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const SliverToBoxAdapter(child: Center(child: CircularProgressIndicator()))
        : SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => CategoryList2(
                articleModel1: articles[index],
              ),
              childCount: articles.length,
            ),
          );
  }
}
