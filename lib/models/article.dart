/// Article model — generated from the Native Blueprint data model.
class Article {
  final String id;
  final String title;
  final String content;
  final String category;
  final DateTime publishedDate;

  const Article({
    required this.id,
    required this.title,
    required this.content,
    required this.category,
    required this.publishedDate,
  });

  String get displayTitle => title;
  String get displaySubtitle => content;

  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
      id: json['id']?.toString() ?? '',
      title: json['title']?.toString() ?? '',
      content: json['content']?.toString() ?? '',
      category: json['category']?.toString() ?? '',
      publishedDate: json['published_date'] != null ? DateTime.tryParse(json['published_date'].toString()) ?? DateTime.now() : DateTime.now(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'content': content,
      'category': category,
      'published_date': publishedDate,
    };
  }

  /// Realistic sample data used when no backend is connected.
  static List<Article> get seed => [
        Article(
          id: '1',
          title: 'First Item',
          content: 'A great article you will love.',
          category: 'Active',
          publishedDate: DateTime.parse('2025-01-10T09:00:00'),
        ),
        Article(
          id: '2',
          title: 'Second Item',
          content: 'A great article you will love.',
          category: 'Featured',
          publishedDate: DateTime.parse('2025-02-11T09:00:00'),
        ),
        Article(
          id: '3',
          title: 'Third Item',
          content: 'A great article you will love.',
          category: 'Popular',
          publishedDate: DateTime.parse('2025-03-12T09:00:00'),
        ),
        Article(
          id: '4',
          title: 'Fourth Item',
          content: 'A great article you will love.',
          category: 'New',
          publishedDate: DateTime.parse('2025-04-13T09:00:00'),
        ),
        Article(
          id: '5',
          title: 'Fifth Item',
          content: 'A great article you will love.',
          category: 'Standard',
          publishedDate: DateTime.parse('2025-05-14T09:00:00'),
        ),
        Article(
          id: '6',
          title: 'Sixth Item',
          content: 'A great article you will love.',
          category: 'Premium',
          publishedDate: DateTime.parse('2025-06-15T09:00:00'),
        ),
      ];
}
