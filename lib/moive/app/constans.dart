class AppConstans {
  static const String baseUrl = "https://api.themoviedb.org/3";
  static const String baseKey = "f90e9b984575c82e1d051b11787faae3";
  static const String pathMoiveNowPlaying =
      "${AppConstans.baseUrl}/movie/now_playing?api_key=${AppConstans.baseKey}";
  static const String pathgetMoivePopular =
      "${AppConstans.baseUrl}/movie/popular?api_key=${AppConstans.baseKey}";
  static const String pathgetMoiveTopRate =
      "${AppConstans.baseUrl}/movie/top_rated?api_key=${AppConstans.baseKey}";

  static String baseUrlOfDetils(int idOfMoive) =>
      "${AppConstans.baseUrl}/movie/$idOfMoive?api_key=${AppConstans.baseKey}";
  static String baseUrlOfRecommendation(int idOfMoive) =>
      "$baseUrl/movie/$idOfMoive/recommendations?api_key=$baseKey&language=en-US";
}





/// movie/550?api_key=f90e9b984575c82e1d051b11787faae3
/// //https://api.themoviedb.org/3/movie/now_playing?api_key=f90e9b984575c82e1d051b11787faae3