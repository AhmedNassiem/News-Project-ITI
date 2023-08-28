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

  // Additional constructor to create ArticleModel1 instances with filtered articles
  ArticleModel1.fromFilteredArticles(List<ArticleModel1> filteredArticles)
      : image = null, // Set appropriate value if needed
        title = 'Filtered Articles', // Set a title for the filtered articles
        subTitle = '', // Set appropriate value if needed
        content = null, // Set appropriate value if needed
        publishedAt = null; // Set appropriate value if needed
}
