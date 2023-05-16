import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';

import 'src/actions/index.dart';
import 'src/data/news_api.dart';
import 'src/epics/app_epics.dart';
import 'src/models/index.dart';
import 'src/presentation/article_details_page.dart';
import 'src/presentation/home_page.dart';
import 'src/reducer/app_reducer.dart';

void main() {
  final NewsData api = NewsData();
  final AppEpics epic = AppEpics(api);

  final Store<AppState> store = Store<AppState>(
    reducer,
    initialState: const AppState(),
    middleware: <Middleware<AppState>>[
      EpicMiddleware<AppState>(epic.call).call,
    ],
  );
  store.dispatch(const GetArticles.start());

  runApp(MyApp(store: store));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.store});

  final Store<AppState> store;

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        theme: ThemeData.dark().copyWith(
          appBarTheme: const AppBarTheme(
            elevation: 0,
          ),
        ),
        home: const HomePage(),
        routes: {
          '/articleDetails': (context) => const ArticleDetailsPage(),
        },
      ),
    );
  }
}
