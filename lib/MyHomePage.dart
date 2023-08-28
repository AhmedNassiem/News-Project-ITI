import 'package:flutter/material.dart';
import 'package:news_app/Tools/SearchBar.dart';
import 'List1/ListView1.dart';
import 'List2/ListView2.dart';
import 'Services/ArticleModel.dart';
import 'Services/NewsService.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<ArticleModel1> allArticles = []; 
  List<ArticleModel1> filteredArticles = []; 

  @override
  void initState() {
    super.initState();
    start(); 
    print(allArticles);

  }
  Future<void> getGeneralNws() async {
    allArticles = await NewsService().getNews('general');
    print(allArticles);
    setState(() {});
  }

Future<void> start()async{
    await getGeneralNws();

}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Hot",
              style: TextStyle(fontSize: 20, color: Colors.red),
            ),
            Text(
              "News",
              style: TextStyle(fontSize: 20, color: Colors.brown[600]),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 16),
          SearchBar1(
            allArticles: allArticles,

          ), 
          Expanded(
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(child: View1()),
                View2(
                  category: 'general',
                  articles: filteredArticles, 
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

