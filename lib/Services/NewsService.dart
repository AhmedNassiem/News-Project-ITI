import 'package:dio/dio.dart';
import 'package:news_app/Services/ArticleModel.dart';

class NewsService {
  final Dio dio = Dio();

  Future<List<ArticleModel1>> getNews(String? category) async {
    var response = await dio.get(
      'https://newsapi.org/v2/top-headlines?country=us&apiKey=cb5d2b6cc0364e719644cab003c59694&category=$category',
    );

    Map<String, dynamic> jsonData = response.data;
    List<dynamic> articles = jsonData['articles'];

    return articles.map((article) {
      return ArticleModel1(
        image: article['urlToImage'] ?? 'https://media4.s-nbcnews.com/j/newscms/2019_01/2705191/nbc-social-default_b6fa4fef0d31ca7e8bc7ff6d117ca9f4.nbcnews-fp-1024-512.png',
        title: article['title'] ?? 'No Title',
        subTitle: article['description'] ?? 'No Description',
        content: article['content'],
        publishedAt: article['publishedAt'],
      );
    }).toList();
  }

  List<ArticleModel1> filterArticlesByTitle(List<ArticleModel1> articles, String query) {
    return articles.where((article) {
      return article.title.toLowerCase().contains(query.toLowerCase());
    }).toList();
  }
}
