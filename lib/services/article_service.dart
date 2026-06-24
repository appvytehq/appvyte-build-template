import '../models/article.dart';
import 'api_service.dart';

/// Repository for Article records.
class ArticleService {
  ArticleService({ApiService? api}) : _api = api ?? ApiService();

  final ApiService _api;

  /// Falls back to realistic seed data ([Article.seed]) until a backend is connected.
  Future<List<Article>> fetchAll() async {
    final raw = await _api.getList('articles');
    if (raw.isEmpty) return Article.seed;
    return raw.map(Article.fromJson).toList();
  }

  Future<Article> fetchOne(String id) async {
    final all = await fetchAll();
    return all.firstWhere(
      (e) => e.toJson()['id']?.toString() == id,
      orElse: () => all.first,
    );
  }
}
