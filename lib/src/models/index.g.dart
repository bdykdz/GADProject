// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'index.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Article _$$_ArticleFromJson(Map<String, dynamic> json) => _$_Article(
      title: json['title'] as String,
      description: json['description'] as String?,
      author: json['author'] as String?,
      source: Source.fromJson(json['source'] as Map<String, dynamic>),
      url: json['url'] as String,
      imageUrl: json['urlToImage'] as String?,
    );

Map<String, dynamic> _$$_ArticleToJson(_$_Article instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'author': instance.author,
      'source': instance.source,
      'url': instance.url,
      'urlToImage': instance.imageUrl,
    };

_$_Source _$$_SourceFromJson(Map<String, dynamic> json) => _$_Source(
      name: json['name'] as String,
    );

Map<String, dynamic> _$$_SourceToJson(_$_Source instance) => <String, dynamic>{
      'name': instance.name,
    };

_$_AppState$ _$$_AppState$FromJson(Map<String, dynamic> json) => _$_AppState$(
      articles: (json['articles'] as List<dynamic>?)
              ?.map((e) => Article.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      isLoading: json['isLoading'] as bool? ?? false,
      hasMore: json['hasMore'] as bool? ?? true,
    );

Map<String, dynamic> _$$_AppState$ToJson(_$_AppState$ instance) =>
    <String, dynamic>{
      'articles': instance.articles,
      'isLoading': instance.isLoading,
      'hasMore': instance.hasMore,
    };
