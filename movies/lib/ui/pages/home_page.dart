import 'package:flutter/material.dart';
import 'package:movies/data/apiServices.dart';
import 'package:movies/data/moviesRepositery.dart';
import 'package:movies/ui/pages/shared_home_page.dart';
import 'package:movies/utils/constants.dart';

class HomePage extends StatelessWidget {
  MoviesRepositery _moviesRepositery=MoviesRepositery(ApiServices());

  @override
  Widget build(BuildContext context) {
    _moviesRepositery.getMovies(popularMoviesPath);
    _moviesRepositery.getMovies(topMoviesPath);

    return DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Colors.grey,
          appBar: AppBar(
            title: Text("Home"),
            bottom: const TabBar(
              tabs: [
                Tab(text: "Popular",),
                Tab(text: "Top",),
                Tab(text: "Now Playing",),
              ],
            ),
          ),
          body:TabBarView(
            children: [
              SharedHomePage("Popular"),
              SharedHomePage(("top")),
              SharedHomePage(("Now Playing"))
            ],
          )
          // GridView.count(crossAxisCount: 3,children: [MovieWidget(),MovieWidget(),MovieWidget()]),
        ));
  }
}
