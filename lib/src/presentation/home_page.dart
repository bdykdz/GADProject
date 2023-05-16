import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '../actions/index.dart';
import '../models/index.dart';
import '../presentation/containers/index.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

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
      store.dispatch(const GetArticles.start());
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
