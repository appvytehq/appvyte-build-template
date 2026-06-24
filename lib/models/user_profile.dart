/// UserProfile model — generated from the Native Blueprint data model.
class UserProfile {
  final String userId;
  final String name;
  final String email;
  final String subscriptionStatus;
  final List<dynamic> favoriteArticles;

  const UserProfile({
    required this.userId,
    required this.name,
    required this.email,
    required this.subscriptionStatus,
    required this.favoriteArticles,
  });

  String get displayTitle => name;
  String get displaySubtitle => email;

  factory UserProfile.fromJson(Map<String, dynamic> json) {
    return UserProfile(
      userId: json['user_id']?.toString() ?? '',
      name: json['name']?.toString() ?? '',
      email: json['email']?.toString() ?? '',
      subscriptionStatus: json['subscription_status']?.toString() ?? '',
      favoriteArticles: (json['favorite_articles'] as List<dynamic>?) ?? const [],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'user_id': userId,
      'name': name,
      'email': email,
      'subscription_status': subscriptionStatus,
      'favorite_articles': favoriteArticles,
    };
  }

  /// Realistic sample data used when no backend is connected.
  static List<UserProfile> get seed => const [
        UserProfile(
          userId: 'Jordan Avery',
          name: 'First Item',
          email: 'Jordan Avery',
          subscriptionStatus: 'Confirmed',
          favoriteArticles: const [],
        ),
        UserProfile(
          userId: 'Sam Rivera',
          name: 'Second Item',
          email: 'Sam Rivera',
          subscriptionStatus: 'Pending',
          favoriteArticles: const [],
        ),
        UserProfile(
          userId: 'Taylor Brooks',
          name: 'Third Item',
          email: 'Taylor Brooks',
          subscriptionStatus: 'Completed',
          favoriteArticles: const [],
        ),
        UserProfile(
          userId: 'Casey Morgan',
          name: 'Fourth Item',
          email: 'Casey Morgan',
          subscriptionStatus: 'Cancelled',
          favoriteArticles: const [],
        ),
        UserProfile(
          userId: 'Riley Chen',
          name: 'Fifth Item',
          email: 'Riley Chen',
          subscriptionStatus: 'Waitlisted',
          favoriteArticles: const [],
        ),
        UserProfile(
          userId: 'Alex Quinn',
          name: 'Sixth Item',
          email: 'Alex Quinn',
          subscriptionStatus: 'Confirmed',
          favoriteArticles: const [],
        ),
      ];
}
