part of 'index.dart';

@freezed
class GetArticles with _$GetArticles {
  const factory GetArticles.start() = GetArticlesStart;
  const factory GetArticles.successful(List<Article> articles) = GetArticlesSuccessful;
  const factory GetArticles.error(Object error, StackTrace stackTrace) = GetArticlesError;
}
