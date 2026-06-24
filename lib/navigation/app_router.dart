import 'package:flutter/material.dart';
import '../screens/home_screen.dart';
import '../screens/categories_screen.dart';
import '../screens/article_details_screen.dart';
import '../screens/tech_crunch_screen.dart';
import '../screens/events_screen.dart';
import '../screens/event_details_screen.dart';
import '../screens/profile_screen.dart';
import '../screens/search_screen.dart';

/// Centralized named-route table generated from the blueprint screen routes.
class AppRouter {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case '/categories':
        return MaterialPageRoute(builder: (_) => const CategoriesScreen());
      case '/article/:id':
        return MaterialPageRoute(builder: (_) => const ArticleDetailsScreen());
      case '/techcrunch-plus':
        return MaterialPageRoute(builder: (_) => const TechCrunchScreen());
      case '/events':
        return MaterialPageRoute(builder: (_) => const EventsScreen());
      case '/event/:id':
        return MaterialPageRoute(builder: (_) => const EventDetailsScreen());
      case '/profile':
        return MaterialPageRoute(builder: (_) => const ProfileScreen());
      case '/search':
        return MaterialPageRoute(builder: (_) => const SearchScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(body: Center(child: Text('Route not found'))),
        );
    }
  }
}
