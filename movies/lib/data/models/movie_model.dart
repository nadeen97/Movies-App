class Movie {
  late int id;
  late String title;
  String? overview;
  String? posterPath;
  String? backdropPath;
  double? voteAverage;
  String? releaseDate;

  Movie(
      {required this.id,
      required this.title,
      this.overview,
      this.posterPath,
      this.backdropPath,
      this.voteAverage,
      this.releaseDate});
  Movie.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    overview = json['overview'];
    posterPath = json['poster_path'];
    backdropPath = json['backdrop_path'];
    voteAverage = json['vote_average'];
    releaseDate = json['release_date'];
  }
}
