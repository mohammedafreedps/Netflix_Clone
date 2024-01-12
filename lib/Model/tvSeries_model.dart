class tvSeriesModel {
  String original_name;
  String overview;
  String backdrop_path;
  String first_air_date;
  int vote_count;

  tvSeriesModel(
      {required this.original_name,
      required this.overview,
      required this.backdrop_path,
      required this.first_air_date,
      required this.vote_count});

  factory tvSeriesModel.fromJson(Map<String, dynamic> json) {
    return tvSeriesModel(
        original_name: json['original_name'] ?? '',
        overview: json['overview'] ?? '',
        backdrop_path: json['backdrop_path'] ?? '',
        first_air_date: json['first_air_date'] ?? '',
        vote_count: json['vote_count']);
  }
}
