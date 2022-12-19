import 'package:ecommarce/moive/presentation/screens/movie_detail_screen.dart';
import 'package:ecommarce/moive/presentation/screens/movies_screen.dart';
import 'package:ecommarce/moive/presentation/screens/popular_scrren.dart';
import 'package:ecommarce/moive/presentation/screens/top%20_rated_screen.dart';
import 'package:flutter/material.dart';

// import '../../app/di.dart';
import '../main/home_screen.dart';

class RouterManager {
  static const String homePage = "/";
  static const String moviesScrren = "/moviesScrren";
  static const String topRatedScrren = "/topRatedScrren";
  static const String popularScrren = "/popularScrren";
  static const String testScrren = "/test";
  // static const String moiveDetails = "/moiveDetails";
}

class RoutGenerator {
  static Route<dynamic> getRouters(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case RouterManager.homePage:
        // initHomePage();
        return MaterialPageRoute(builder: (_) => const HomeScrren());
      case RouterManager.moviesScrren:
        return MaterialPageRoute(builder: (_) => const MainMoviesScreen());
      case RouterManager.topRatedScrren:
        return MaterialPageRoute(builder: (_) => const TopRatedScrren());
      case RouterManager.popularScrren:
        return MaterialPageRoute(builder: (_) => const PopularScrren());
      // case RouterManager.moiveDetails:
      //   return MaterialPageRoute(builder: (_) => const MovieDetailScreen());
      default:
        return MaterialPageRoute(builder: (_) => const NotFoundPage());
    }
  }
}

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Not Found Page"),
      ),
      body: const Center(child: Text("Not Found Page")),
    );
  }
}
