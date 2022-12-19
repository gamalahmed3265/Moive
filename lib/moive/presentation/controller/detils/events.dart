import 'package:equatable/equatable.dart';

abstract class MoiveDetialEvents extends Equatable {
  const MoiveDetialEvents();
  @override
  List<Object?> get props => [];
}

class MoiveDetialsEventsExt extends MoiveDetialEvents {
  final int id;
  const MoiveDetialsEventsExt(this.id);
}

class MoiveRecommendationsEventsExt extends MoiveDetialEvents {
  final int id;
  const MoiveRecommendationsEventsExt(this.id);
}
