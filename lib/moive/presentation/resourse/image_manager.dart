class ImageManager {
  static const String baseUrlImageNetwork = "https://image.tmdb.org/t/p/w500";

  static String concatPathImage(String img) => "$baseUrlImageNetwork$img";
}
