import 'dart:convert';
import 'package:http/http.dart' as http;

/// HTTP client for the app backend.
/// Point [baseUrl] at your backend or headless CMS.
class ApiService {
  ApiService({this.baseUrl = 'https://api.example.com'});

  final String baseUrl;
  String? _token;

  /// Store a bearer token (set by AuthService after login).
  void setToken(String? token) => _token = token;

  Map<String, String> get _headers => {
    'Content-Type': 'application/json',
    'Accept': 'application/json',

    if (_token != null) 'Authorization': 'Bearer $_token',
  };

  Uri _uri(String path) => Uri.parse('$baseUrl/$path'.replaceAll(RegExp(r'(?<!:)//+'), '/'));

  Future<List<Map<String, dynamic>>> getList(String path) async {
    final res = await http.get(_uri(path), headers: _headers);
    if (res.statusCode >= 200 && res.statusCode < 300) {
      final data = jsonDecode(res.body);
      if (data is List) return data.cast<Map<String, dynamic>>();
      if (data is Map) {
        for (final key in const ['data', 'items', 'results', 'records']) {
          if (data[key] is List) return (data[key] as List).cast<Map<String, dynamic>>();
        }
        return [data.cast<String, dynamic>()];
      }
    }
    return <Map<String, dynamic>>[];
  }

  Future<Map<String, dynamic>?> getOne(String path) async {
    final res = await http.get(_uri(path), headers: _headers);
    if (res.statusCode >= 200 && res.statusCode < 300) {
      final data = jsonDecode(res.body);
      if (data is Map && data['data'] is Map) return (data['data'] as Map).cast<String, dynamic>();
      return data as Map<String, dynamic>;
    }
    return null;
  }

  Future<Map<String, dynamic>?> post(String path, Map<String, dynamic> body) async {
    final res = await http.post(_uri(path), headers: _headers, body: jsonEncode(body));
    if (res.statusCode >= 200 && res.statusCode < 300 && res.body.isNotEmpty) {
      return jsonDecode(res.body) as Map<String, dynamic>;
    }
    return null;
  }
}
