part of 'index.dart';


class ArticlesContainer extends StatelessWidget {
  const ArticlesContainer({super.key, required this.builder});

  final ViewModelBuilder<List<Article>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<Article>>(
      builder: builder,
      converter: (Store<AppState> store) => store.state.articles,
    );
  }
}
