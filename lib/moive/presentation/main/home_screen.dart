import 'package:ecommarce/moive/presentation/resourse/router_manager.dart';
import 'package:flutter/material.dart';

class HomeScrren extends StatelessWidget {
  const HomeScrren({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(RouterManager.moviesScrren);
                },
                child: const Text("TestScrren"))));
  }
}
