import '../models/user_profile.dart';
import 'api_service.dart';

/// Repository for UserProfile records.
class UserProfileService {
  UserProfileService({ApiService? api}) : _api = api ?? ApiService();

  final ApiService _api;

  /// Falls back to realistic seed data ([UserProfile.seed]) until a backend is connected.
  Future<List<UserProfile>> fetchAll() async {
    final raw = await _api.getList('user_profiles');
    if (raw.isEmpty) return UserProfile.seed;
    return raw.map(UserProfile.fromJson).toList();
  }

  Future<UserProfile> fetchOne(String id) async {
    final all = await fetchAll();
    return all.firstWhere(
      (e) => e.toJson()['id']?.toString() == id,
      orElse: () => all.first,
    );
  }
}
