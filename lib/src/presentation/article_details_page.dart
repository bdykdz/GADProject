import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../models/index.dart';

class ArticleDetailsPage extends StatelessWidget {
  const ArticleDetailsPage({super.key});

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
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
                  textStyle: const TextStyle(fontSize: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child: const Text('Read the Whole Article on the Website'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
