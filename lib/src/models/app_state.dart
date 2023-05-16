part of 'index.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    @Default([]) List<Article> articles,
     @Default(false) bool isLoading,
     @Default(true) bool hasMore,
  }) = _AppState$;

   factory AppState.fromJson(Map<dynamic, dynamic> json) => _$AppStateFromJson(Map<String, dynamic>.from(json));
}
