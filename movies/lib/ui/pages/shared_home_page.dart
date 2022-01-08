import 'package:flutter/material.dart';
import 'package:movies/ui/widgets/movie_widget.dart';
class SharedHomePage extends StatelessWidget {
late String pageName;
SharedHomePage(this.pageName);
  @override
  Widget build(BuildContext context) {
    return Center(child: Text(pageName),);
   // return GridView.count(crossAxisCount: 3,children: [MovieWidget(),MovieWidget(),MovieWidget()]);

  }
}
