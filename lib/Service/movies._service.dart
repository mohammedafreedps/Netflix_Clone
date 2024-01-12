import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:netflixclone/Model/movie_model.dart';
import 'package:netflixclone/Model/tvSeries_model.dart';


class getFromDatabase {
  Future <List<movieModel>> fechData(String url)async {
    final response = await http.get(Uri.parse(url));
    print(response.statusCode);
    if (response.statusCode == 200) {
      final  decodedData = json.decode(response.body)['results'] as List;
      return decodedData.map((movie) => movieModel.fromJson(movie)).toList();
    }else{
      throw Exception('Something Error with the URL');
    }
  }
  Future <List<tvSeriesModel>> fechDataTVS(String url) async {
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final decodedData = json.decode(response.body)['results'] as List;
      return decodedData.map((TVs) => tvSeriesModel.fromJson(TVs)).toList();
    }else{
      throw Exception('Something Error with the Url');
    }
  }
}
