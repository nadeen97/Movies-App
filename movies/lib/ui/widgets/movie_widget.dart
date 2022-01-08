import 'package:flutter/material.dart';
import 'package:movies/data/models/movie_model.dart';
import 'package:movies/ui/pages/movie_details.dart';
class MovieWidget extends StatelessWidget {
  late Movie movie;
  // MovieWidget(this.movie);
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black54,
      margin: EdgeInsets.all(2),
      child: GestureDetector(
        child: Column(
          children: [
            Expanded(flex: 2,child:Image.asset("assets/images/movie.png")),
            Expanded(flex: 1,child: Text("Movie",style: TextStyle(color: Colors.white),))
          ],
        ),
        onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>MovieDetails())),
      ),
      
    );
  }
}
