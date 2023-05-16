import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/index.dart';



class NewsData {
  Future<List<Article>> getTopHeadlines() async {
    final response = await http.get(Uri.parse(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=eaaa749207514a4ebc6e6ddbfdc25c30'));

    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      final articlesData = jsonData['articles'] as List<dynamic>;
      final articles = articlesData
          .map((articleData) => Article.fromJson(articleData))
          .toList();

      return articles;
    } else {
      throw Exception('Failed to load top headlines');
    }
  }
}
