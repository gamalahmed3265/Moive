import 'package:animate_do/animate_do.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommarce/moive/core/utils/enums.dart';
import 'package:ecommarce/moive/presentation/comman/state_renderer.dart';
import 'package:ecommarce/moive/presentation/screens/movie_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';

import '../controller/main_scrren/bloc.dart';
import '../controller/main_scrren/states.dart';
import '../resourse/image_manager.dart';

class TopRatedComponent extends StatelessWidget {
  const TopRatedComponent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MoivesBloc, MoivesState>(
        buildWhen: (previous, current) =>
            previous.stateMoiveTopRateRequest !=
            current.stateMoiveTopRateRequest,
        builder: (context, state) {
          print(
              " stateMoiveTopRateRequest ----- ${state.stateMoiveTopRateRequest} ----");
          return screenSwatich(
              state.stateMoiveTopRateRequest,
              FadeIn(
                duration: const Duration(milliseconds: 500),
                child: SizedBox(
                  height: 170.0,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    itemCount: state.moivesMoiveTopRate.length,
                    itemBuilder: (context, index) {
                      final movie = state.moivesMoiveTopRate[index];
                      return Container(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: InkWell(
                          onTap: () {
                            print(movie.id);
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (_) =>
                                    MovieDetailScreen(id: movie.id)));
                          },
                          child: ClipRRect(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8.0)),
                            child: CachedNetworkImage(
                              width: 120.0,
                              fit: BoxFit.cover,
                              imageUrl: ImageManager.concatPathImage(
                                  movie.backdropPath),
                              placeholder: (context, url) => Shimmer.fromColors(
                                baseColor: Colors.grey[850]!,
                                highlightColor: Colors.grey[800]!,
                                child: Container(
                                  height: 170.0,
                                  width: 120.0,
                                  decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                              ),
                              errorWidget: (context, url, error) =>
                                  const Icon(Icons.error),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ));
        });
  }
}
