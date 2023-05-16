part of 'index.dart';

@freezed
class Article with _$Article {
  factory Article({
    required String title,
    String? description,
    String? author,
    required Source source,
    required String url,
    @JsonKey(name: 'urlToImage') String? imageUrl,
  }) = _Article;

  factory Article.fromJson(Map<String, dynamic> json) => _$ArticleFromJson(json);
}

@freezed
class Source with _$Source {
  factory Source({
    required String name,
  }) = _Source;

  factory Source.fromJson(Map<String, dynamic> json) => _$SourceFromJson(json);
}
