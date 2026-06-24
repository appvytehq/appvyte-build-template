import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import '../models/user_profile.dart';

/// ProfileScreen — route /profile
/// Purpose: User account management and settings
/// Components: UserProfileForm
/// Backed by: UserProfile
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile')),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    final m = UserProfile.seed.first;
    return ListView(
      padding: const EdgeInsets.all(20),
      children: [
        const SizedBox(height: 12),
        const CircleAvatar(radius: 44, backgroundColor: AppColors.surface, child: Icon(Icons.person, size: 48, color: AppColors.primary)),
        const SizedBox(height: 16),
        const Center(child: Text('Jordan Avery', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: AppColors.text))),
        const Center(child: Text('jordan.avery@email.com', style: TextStyle(color: Colors.grey))),
        const SizedBox(height: 24),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
              _ProfileStat(label: 'Subscription Status', value: m.subscriptionStatus),
          ],
        ),
        const SizedBox(height: 24),
        Card(child: Column(children: const [
          ListTile(leading: Icon(Icons.settings, color: AppColors.primary), title: Text('Settings'), trailing: Icon(Icons.chevron_right)),
          Divider(height: 1),
          ListTile(leading: Icon(Icons.notifications, color: AppColors.primary), title: Text('Notifications'), trailing: Icon(Icons.chevron_right)),
          Divider(height: 1),
          ListTile(leading: Icon(Icons.help_outline, color: AppColors.primary), title: Text('Help & Support'), trailing: Icon(Icons.chevron_right)),
        ])),
      ],
    );
  }
}

class _ProfileStat extends StatelessWidget {
  const _ProfileStat({required this.label, required this.value});
  final String label;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(value, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: AppColors.primary)),
      const SizedBox(height: 4),
      Text(label, style: const TextStyle(color: Colors.grey, fontSize: 12)),
    ]);
  }
}
