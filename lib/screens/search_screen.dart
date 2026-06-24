import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import '../widgets/section_header.dart';

/// SearchScreen — route /search
/// Purpose: Allow users to search for articles and events
/// Components: SearchBar, SearchResults
/// Backed by: —
class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Search')),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        SectionHeader(title: 'Search'),
        Text('Allow users to search for articles and events', style: const TextStyle(color: Colors.grey)),
      ],
    );
  }
}

