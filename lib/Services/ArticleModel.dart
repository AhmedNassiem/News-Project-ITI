class ArticleModel1 {
  final String? image;
  final String title;
  final String subTitle;
  final String? content;
  final String? publishedAt;

  ArticleModel1({
    this.publishedAt,
    this.content,
    required this.image,
    required this.title,
    required this.subTitle,
  });

  
  ArticleModel1.fromFilteredArticles(List<ArticleModel1> filteredArticles)
      : image = null, 
        title = 'Filtered Articles', 
        subTitle = '', 
        content = null, 
        publishedAt = null; 
}
