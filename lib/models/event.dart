/// Event model — generated from the Native Blueprint data model.
class Event {
  final String id;
  final String name;
  final DateTime date;
  final String location;
  final String details;

  const Event({
    required this.id,
    required this.name,
    required this.date,
    required this.location,
    required this.details,
  });

  String get displayTitle => name;
  String get displaySubtitle => details;

  factory Event.fromJson(Map<String, dynamic> json) {
    return Event(
      id: json['id']?.toString() ?? '',
      name: json['name']?.toString() ?? '',
      date: json['date'] != null ? DateTime.tryParse(json['date'].toString()) ?? DateTime.now() : DateTime.now(),
      location: json['location']?.toString() ?? '',
      details: json['details']?.toString() ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'date': date,
      'location': location,
      'details': details,
    };
  }

  /// Realistic sample data used when no backend is connected.
  static List<Event> get seed => [
        Event(
          id: '1',
          name: 'First Item',
          date: DateTime.parse('2025-01-10T09:00:00'),
          location: 'Jordan Avery',
          details: 'A great event you will love.',
        ),
        Event(
          id: '2',
          name: 'Second Item',
          date: DateTime.parse('2025-02-11T09:00:00'),
          location: 'Sam Rivera',
          details: 'A great event you will love.',
        ),
        Event(
          id: '3',
          name: 'Third Item',
          date: DateTime.parse('2025-03-12T09:00:00'),
          location: 'Taylor Brooks',
          details: 'A great event you will love.',
        ),
        Event(
          id: '4',
          name: 'Fourth Item',
          date: DateTime.parse('2025-04-13T09:00:00'),
          location: 'Casey Morgan',
          details: 'A great event you will love.',
        ),
        Event(
          id: '5',
          name: 'Fifth Item',
          date: DateTime.parse('2025-05-14T09:00:00'),
          location: 'Riley Chen',
          details: 'A great event you will love.',
        ),
        Event(
          id: '6',
          name: 'Sixth Item',
          date: DateTime.parse('2025-06-15T09:00:00'),
          location: 'Alex Quinn',
          details: 'A great event you will love.',
        ),
      ];
}
