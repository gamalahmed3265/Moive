import 'package:equatable/equatable.dart';

abstract class MoiveEvents extends Equatable {
  const MoiveEvents();

  @override
  List<Object?> get props => [];
}

class MoiveNowPlayingEvents extends MoiveEvents {}

class MoivePopularEvents extends MoiveEvents {}

class MoiveTopRateEvents extends MoiveEvents {}
