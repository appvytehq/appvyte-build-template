import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

/// Generic content card used across list and grid screens.
class ItemCard extends StatelessWidget {
  const ItemCard({super.key, required this.title, this.subtitle, this.icon = Icons.image, this.onTap});

  final String title;
  final String? subtitle;
  final IconData icon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 90,
                decoration: BoxDecoration(
                  color: AppColors.primary.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(icon, size: 36, color: AppColors.primary),
              ),
              const SizedBox(height: 12),
              Text(title, style: const TextStyle(fontWeight: FontWeight.w600), maxLines: 1, overflow: TextOverflow.ellipsis),
              if (subtitle != null) ...[
                const SizedBox(height: 4),
                Text(subtitle!, style: const TextStyle(color: Colors.grey, fontSize: 12), maxLines: 2, overflow: TextOverflow.ellipsis),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
