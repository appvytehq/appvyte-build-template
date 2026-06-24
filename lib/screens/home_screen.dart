import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import '../widgets/section_header.dart';
import '../models/article.dart';

/// HomeScreen — route /
/// Purpose: Showcase latest articles and featured content
/// Components: ArticleListView, FeaturedContentSlider
/// Backed by: —
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        const Text('Showcase latest articles and featured content', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: AppColors.text)),
        const SizedBox(height: 16),
        Row(children: [
          Expanded(child: _StatCard(label: 'Total', value: 'Article.seed.length', icon: Icons.inventory_2)),
          const SizedBox(width: 12),
          Expanded(child: _StatCard(label: 'Active', value: '12', icon: Icons.trending_up)),
          const SizedBox(width: 12),
          Expanded(child: _StatCard(label: 'New', value: '4', icon: Icons.fiber_new)),
        ]),
        const SizedBox(height: 12),
        const SectionHeader(title: 'Featured'),
        ...Article.seed.take(4).map((item) => Card(
          child: ListTile(
            leading: const Icon(Icons.star, color: AppColors.primary),
            title: Text(item.displayTitle),
            subtitle: Text(item.displaySubtitle),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {},
          ),
        )),
      ],
    );
  }
}

class _StatCard extends StatelessWidget {
  const _StatCard({required this.label, required this.value, required this.icon});
  final String label;
  final String value;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Card(child: Padding(
      padding: const EdgeInsets.all(14),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Icon(icon, color: AppColors.primary),
        const SizedBox(height: 10),
        Text(value, style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: AppColors.text)),
        Text(label, style: const TextStyle(color: Colors.grey, fontSize: 12)),
      ]),
    ));
  }
}
