import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import '../models/article.dart';

/// ArticleDetailsScreen — route /article/:id
/// Purpose: Display detailed view of a selected article
/// Components: ArticleBody, CommentsSection
/// Backed by: Article
class ArticleDetailsScreen extends StatelessWidget {
  const ArticleDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ArticleDetails')),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    final item = Article.seed.first;
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(height: 220, width: double.infinity, decoration: BoxDecoration(color: AppColors.primary.withOpacity(0.1), borderRadius: BorderRadius.circular(20)), child: const Icon(Icons.image, size: 64, color: AppColors.primary)),
          const SizedBox(height: 20),
          Text(item.displayTitle, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: AppColors.text)),
          const SizedBox(height: 6),
          Text(item.displaySubtitle, style: const TextStyle(color: Colors.grey)),
          const SizedBox(height: 20),
          Card(child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(children: [
          _DetailRow(label: 'Title', value: item.title),
          _DetailRow(label: 'Content', value: item.content),
          _DetailRow(label: 'Category', value: item.category),
          _DetailRow(label: 'Published Date', value: item.publishedDate.toString()),
            ]),
          )),
          const SizedBox(height: 24),
          SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () {}, child: const Text('Continue'))),
        ],
      ),
    );
  }
}

class _DetailRow extends StatelessWidget {
  const _DetailRow({required this.label, required this.value});
  final String label;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(label, style: const TextStyle(color: Colors.grey)),
        Flexible(child: Text(value, textAlign: TextAlign.right, style: const TextStyle(fontWeight: FontWeight.w600))),
      ]),
    );
  }
}
