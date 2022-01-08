
import 'package:movies/data/apiServices.dart';
import 'package:movies/data/models/movie_model.dart';

class MoviesRepositery {
  ApiServices _apiServices;
  MoviesRepositery(this._apiServices);
  // Future<List<Movie>>
  getMovies(String targetPath)async{
     final data=await _apiServices.getMovies(targetPath);
     List movies=data.map((item)=>Movie.fromJson(item)).toList();
    print(movies);
  }
}