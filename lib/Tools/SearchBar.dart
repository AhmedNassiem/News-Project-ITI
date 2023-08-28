import 'package:flutter/material.dart';
import 'package:news_app/Services/ArticleModel.dart';

import '../Services/NewsService.dart';
import 'FilteredPage.dart'; 

class SearchBar1 extends StatefulWidget {
  final List<ArticleModel1> allArticles;


  const SearchBar1({
    required this.allArticles,

  });

  @override
  _SearchBar1State createState() => _SearchBar1State();
}

class _SearchBar1State extends State<SearchBar1> {
  String _searchQuery = '';

  void _onSearchSubmitted(String query) async {

await getFilteredNws(query);
print("Hello");
print(filteredArticles);
print(widget.allArticles);
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => FilteredArticlesPage(filteredArticles: filteredArticles),
      ),
    );
  }

  List<ArticleModel1> filteredArticles=[];
  Future<void> getFilteredNws(String query) async {
    filteredArticles.clear();
    for(ArticleModel1 item in widget.allArticles){
      if(item.title.contains(query)){
        filteredArticles.add(item);


      }

    }
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        style: TextStyle(color: Colors.black),
        onSubmitted: _onSearchSubmitted, 
        decoration: InputDecoration(
          hintText: 'Search...',
          hintStyle: TextStyle(color: Colors.grey),
          prefixIcon: Icon(Icons.search, color: Colors.grey),
          contentPadding: EdgeInsets.symmetric(vertical: 12.0),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
            borderRadius: BorderRadius.zero,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
            borderRadius: BorderRadius.zero,
          ),
        ),
      ),
    );
  }
}




