import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import '../models/event.dart';
import '../widgets/section_header.dart';

/// EventsScreen — route /events
/// Purpose: List of upcoming TechCrunch events
/// Components: EventListView
/// Backed by: Event
class EventsScreen extends StatelessWidget {
  const EventsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Events')),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    final items = Event.seed;
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        SectionHeader(title: 'Events'),
        ...items.map((item) => Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: Card(
            child: ListTile(
              leading: const Icon(Icons.label_important, color: AppColors.primary),
              title: Text(item.displayTitle),
              subtitle: Text(item.displaySubtitle),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {},
            ),
          ),
        )),
      ],
    );
  }
}

