import 'dart:convert';
import 'package:http/http.dart' as http;
import '/model/popular_movies.dart';

class ApiProvider {
  String apiKey = "cc8e75fed2b49fe34a48dd1470cd9b6b";
  String baseUrl = "https://api.themoviedb.org/3/movie/popular?";
  late int id;
  
  Future<PupularMovies> getMovies() async {
    var response = await http.get(Uri.parse("${baseUrl}api_key=$apiKey"));
    return  PupularMovies.fromJson(json.decode(response.body));
  }
}
