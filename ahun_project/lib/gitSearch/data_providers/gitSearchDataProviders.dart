import 'dart:convert';
import 'package:ahun_project/gitSearch/models/gitsearchModels.dart';
import 'package:http/http.dart' as http;
import '../models/gitsearchModels.dart';

class GitSearchDataProvider {
  static const String _baseUrl = "https://api.github.com/users";

  Future<GitSearch> fetchByUsername(String username) async {
    final response = await http.get(Uri.parse("$_baseUrl/$username"));
    if (response.statusCode == 200) {
      return GitSearch.fromJson(jsonDecode(response.body));
    } else {
      throw Exception("No User Found");
    }
  }
}
