import 'package:flutter/foundation.dart';
import 'package:redux/redux.dart';

import '../actions/index.dart';
import '../models/index.dart';

AppState reducer(AppState state, dynamic action) {
  if (kDebugMode) {
    print(action);
  }

  return _reducer(state, action);
}

Reducer<AppState> _reducer = combineReducers(<Reducer<AppState>>[
  TypedReducer<AppState, GetArticlesStart>(_getArticlesStart).call,
  TypedReducer<AppState, GetArticlesSuccessful>(_getArticlesSuccesful).call,
  TypedReducer<AppState, GetArticlesError>(_getArticlesError).call,
]);

AppState _getArticlesStart(AppState state, GetArticlesStart action) {
  return state.copyWith(isLoading: true);
}

AppState _getArticlesSuccesful(AppState state, GetArticlesSuccessful action) {
  return state.copyWith(
      isLoading: false,
      hasMore: action.articles.isNotEmpty,
      articles: <Article>[...state.articles, ...action.articles]);
}

AppState _getArticlesError(AppState state, GetArticlesError action) {
  return state.copyWith(isLoading: false);
}
