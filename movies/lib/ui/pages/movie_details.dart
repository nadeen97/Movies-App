import 'package:flutter/material.dart';
class MovieDetails extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset("assets/images/movie.png")  ,
          Row(
            children: [
              Image.asset("assets/images/movie.png"),
              Text("Movie")
            ],

          ),
          Text("Description")


        ],
      ),
    );
  }
}
