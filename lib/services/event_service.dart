import '../models/event.dart';
import 'api_service.dart';

/// Repository for Event records.
class EventService {
  EventService({ApiService? api}) : _api = api ?? ApiService();

  final ApiService _api;

  /// Falls back to realistic seed data ([Event.seed]) until a backend is connected.
  Future<List<Event>> fetchAll() async {
    final raw = await _api.getList('events');
    if (raw.isEmpty) return Event.seed;
    return raw.map(Event.fromJson).toList();
  }

  Future<Event> fetchOne(String id) async {
    final all = await fetchAll();
    return all.firstWhere(
      (e) => e.toJson()['id']?.toString() == id,
      orElse: () => all.first,
    );
  }
}
