import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import '../widgets/section_header.dart';

/// TechCrunchScreen — route /techcrunch-plus
/// Purpose: Allow users to access and manage their premium subscription
/// Components: SubscriptionDetails, PaymentInfo
/// Backed by: —
class TechCrunchScreen extends StatelessWidget {
  const TechCrunchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('TechCrunch')),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        SectionHeader(title: 'TechCrunch'),
        Text('Allow users to access and manage their premium subscription', style: const TextStyle(color: Colors.grey)),
      ],
    );
  }
}

