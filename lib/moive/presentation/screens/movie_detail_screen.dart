import 'package:ecommarce/moive/presentation/controller/detils/events.dart';
import 'package:ecommarce/moive/presentation/controller/detils/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../app/di.dart';
import '../components/details_componet.dart';

class MovieDetailScreen extends StatelessWidget {
  final int id;

  const MovieDetailScreen({Key? key, required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (BuildContext context) => instance<MoiveseDetialsBloc>()
          ..add(MoiveDetialsEventsExt(id))
          ..add(MoiveRecommendationsEventsExt(id)),
        child: Scaffold(
            backgroundColor: Colors.grey.shade900,
            body: const MovieDetailContent()));
  }
}
