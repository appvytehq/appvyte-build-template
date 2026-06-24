import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import '../widgets/section_header.dart';

/// CategoriesScreen — route /categories
/// Purpose: User can browse articles by category
/// Components: CategoryListView
/// Backed by: —
class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Categories')),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        SectionHeader(title: 'Categories'),
        Text('User can browse articles by category', style: const TextStyle(color: Colors.grey)),
      ],
    );
  }
}

