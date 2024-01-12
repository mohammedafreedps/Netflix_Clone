

class movieModel {
  String original_title;
  String overview;
  String poster_path;
  String release_date;
  int vote_count;

  movieModel(
      {required this.original_title,
      required this.overview,
      required this.poster_path,
      required this.release_date,
      required this.vote_count});

  factory movieModel.fromJson(Map<String, dynamic> json) {
    return movieModel(
        original_title: json['original_title'] ?? '',
        overview: json['overview'] ?? '',
        poster_path: json['poster_path'] ?? 'https://image.tmdb.org/t/p/w500/k7rEpZfNPB35FFHB00ZhXHKTL7X.jpg',
        release_date: json['release_date'] ?? '',
        vote_count: json['vote_count'] ?? 0);
  }
}
