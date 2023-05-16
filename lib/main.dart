import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:http/http.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:url_launcher/url_launcher.dart';

import 'src/actions/index.dart';
import 'src/data/news_api.dart';
import 'src/epics/app_epics.dart';
import 'src/models/index.dart';
import 'src/presentation/containers/index.dart';
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
  store.dispatch(GetArticles.start());

  runApp(MyApp(store: store));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key, required this.store}) : super(key: key);
  final Store<AppState> store;

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        theme: ThemeData.dark().copyWith(
          appBarTheme: AppBarTheme(
            elevation: 0,
          ),
        ),
        home: HomePage(),
        routes: {
          '/articleDetails': (context) => ArticleDetailsPage(),
        },
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _controller = ScrollController();

  @override
  void initState() {
    super.initState();
    _controller.addListener(_onScroll);
  }

  void _onScroll() {
    final Store<AppState> store = StoreProvider.of<AppState>(context);
    final double height = MediaQuery.of(context).size.height;
    final double offset = _controller.position.pixels;
    final double maxRange = _controller.position.maxScrollExtent;

    if (store.state.hasMore && !store.state.isLoading && (maxRange - offset) < height * 3) {
      store.dispatch(GetArticles.start());
    }
  }

  void _openArticleDetails(Article article) {
    Navigator.pushNamed(context, '/articleDetails', arguments: article);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Google Breaking News'),
       
      ),
      body: IsLoadingContainer(builder: (BuildContext context, bool isLoading) {
        return ArticlesContainer(builder: (BuildContext context, List<Article> articles) {
          return ListView.builder(
            controller: _controller,
            itemCount: articles.length + 1,
            itemBuilder: (context, index) {
              if (index == articles.length) {
                return const Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: CircularProgressIndicator(),
                  ),
                );
              }
              final article = articles[index];
              return GestureDetector(
                onTap: () => _openArticleDetails(article),
                child: Card(
                  margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
),
elevation: 2,
child: Padding(
padding: const EdgeInsets.all(12.0),
child: Row(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
if (article.imageUrl != null)
Container(
width: 80,
height: 80,
margin: const EdgeInsets.only(right: 16.0),
decoration: BoxDecoration(
borderRadius: BorderRadius.circular(8.0),
image: DecorationImage(
image: NetworkImage(article.imageUrl!),
fit: BoxFit.cover,
),
),
),
Expanded(
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Text(
article.title,
style: const TextStyle(
fontSize: 18,
fontWeight: FontWeight.bold,
),
maxLines: 2,
overflow: TextOverflow.ellipsis,
),
const SizedBox(height: 8.0),
if (article.author != null)
Text(
'Author: ${article.author}',
style: const TextStyle(fontSize: 14),
maxLines: 1,
overflow: TextOverflow.ellipsis,
),
const SizedBox(height: 4.0),
Text(
'Source: ${article.source.name}',
style: const TextStyle(fontSize: 14),
maxLines: 1,
overflow: TextOverflow.ellipsis,
),
],
),
),
],
),
),
),
);
},
);
});
}),
);
}
}

class ArticleDetailsPage extends StatelessWidget {
  const ArticleDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Article article = ModalRoute.of(context)!.settings.arguments as Article;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Article Details'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (article.imageUrl != null)
              ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.network(
                  article.imageUrl!,
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 300,
                ),
              ),
            const SizedBox(height: 16.0),
            Text(
              article.title,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            if (article.author != null)
              Text(
                'Author: ${article.author}',
                style: const TextStyle(fontSize: 16),
              ),
            const SizedBox(height: 8.0),
            Text(
              'Source: ${article.source.name}',
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16.0),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: article.description ?? 'No description available',
                    style: const TextStyle(fontSize: 16),
                  ),
                  const TextSpan(
                    text: '........',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16.0),
            Center(
              child: ElevatedButton(
                onPressed: () async {
                  if (!await launchUrl(Uri.parse(article.url), mode: LaunchMode.externalApplication)) {
                    throw Exception('Could not launch');
                  }
                },
                child: const Text('Read the Whole Article on the Website'),
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
                  textStyle: const TextStyle(fontSize: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
