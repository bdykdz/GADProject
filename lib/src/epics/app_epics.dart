import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';
import '../actions/index.dart';
import '../data/news_api.dart';
import '../models/index.dart';

class AppEpics implements EpicClass<AppState> {
  AppEpics(this._api);

  final NewsData _api;

  @override
  Stream<dynamic> call(Stream<dynamic> actions, EpicStore<AppState> store) {
    return combineEpics(<Epic<AppState>>[TypedEpic<AppState, GetArticlesStart>(_getArticlesStart).call])(
        actions, store);
  }

  Stream<GetArticles> _getArticlesStart(Stream<GetArticlesStart> actions, EpicStore<AppState> store) {
    return actions
        .asyncMap((GetArticlesStart action) => _api.getTopHeadlines())
        .map((List<Article> articles) => GetArticles.successful(articles))
        .onErrorReturnWith((Object error, StackTrace stackTrace) => GetArticles.error(error, stackTrace));
  }
}
