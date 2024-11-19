import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:pas1_mobile_11pplg2_05/models/post_model.dart';


class PostService {
  final String baseUrl = 'https://www.thesportsdb.com';

   Future<List<PostModelApi>> fetchPosts() async {
    final response = await http.get(Uri.parse('$baseUrl/api/v1/json/3/search_all_teams.php?l=English%20Premier%20League'));

    if (response.statusCode == 200) {
       List data = json.decode(response.body)['teams'];
      return data.map((json) => PostModelApi.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load posts');
    }
  }
}
