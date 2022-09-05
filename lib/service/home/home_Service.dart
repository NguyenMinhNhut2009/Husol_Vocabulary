// ignore: non_constant_identifier_names
import 'dart:convert';

import 'package:vocabulary/bloc/home/Home_bloc.dart';
import 'package:vocabulary/modules/home/home_Modules.dart';
import 'package:vocabulary/network/api.dart';

class HomeService {
  final _apikey = 'your_api_key';
  ApiProvider _provider = ApiProvider();

  Future<Home> fetchHomeById() async {
    String endpoint = "v1/topic?is_shared=$_apikey";
    final response = await _provider.get(endpoint);
    // return Home.fromJson(response);
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      return Home.fromJson(data);
    }else{
      throw Exception('Failed to load post');
    }
  }
}
// class Repository {
//   final moviesApiProvider = HomeBloc();

//   Future<Home> fetchAllMovies() => moviesApiProvider.fetchMovieList();
// }
