import 'package:dio/dio.dart';
import 'package:movies/utils/constants.dart';

class ApiServices {
  //return response data
  getMovies(String moviesPath) async {
   var   params={'api_key': apiKey};
    try {
      Response response = await Dio().get('$baseUrl$moviesPath', queryParameters: params);
      if(response.statusCode==200) {
        print("responseeeeee");
        print(response.data['results']);
        return response.data['results'];
      }
    } catch (e) {
      print(e);
    }
  }
}
