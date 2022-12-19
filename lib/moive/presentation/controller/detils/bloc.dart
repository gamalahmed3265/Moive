import 'package:ecommarce/moive/domain/usecase/get_moive_details.dart';
import 'package:ecommarce/moive/domain/usecase/get_moive_recommend.dart';

import 'dart:async';

import 'package:ecommarce/moive/presentation/controller/detils/events.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/utils/enums.dart';
import 'state.dart';

class MoiveseDetialsBloc extends Bloc<MoiveDetialEvents, MoivesDetialState> {
  final MoiveDetialsUseCase useCaseMoiveDetialsUseCase;
  final MoiveRecommendUseCase useCasemoiveRecommendUseCase;

  MoiveseDetialsBloc(
      this.useCaseMoiveDetialsUseCase, this.useCasemoiveRecommendUseCase)
      : super(const MoivesDetialState()) {
    on<MoiveDetialsEventsExt>(_getMoiveDetials);
    on<MoiveRecommendationsEventsExt>(_getRecommend);
  }
  FutureOr<void> _getMoiveDetials(
      MoiveDetialsEventsExt event, Emitter<MoivesDetialState> emit) async {
    // ignore: void_checks
    final result = await useCaseMoiveDetialsUseCase.execute(event.id);
    emit(const MoivesDetialState(
        statemoiveDetialsRequest: RequestState.loading));
    result.fold(
        (l) =>
            emit(state.copyWith(statemoiveDetialsRequest: RequestState.error)),
        (r) => emit(state.copyWith(
            moiveDetials: r, statemoiveDetialsRequest: RequestState.loaded)));
  }

  FutureOr<void> _getRecommend(MoiveRecommendationsEventsExt event,
      Emitter<MoivesDetialState> emit) async {
    // ignore: void_checks

    emit(const MoivesDetialState(
        statemRecommendationRequest: RequestState.loading));
    final result = await useCasemoiveRecommendUseCase.execute(event.id);

    result.fold(
        (l) => emit(
            state.copyWith(statemRecommendationRequest: RequestState.error)),
        (r) => emit(state.copyWith(
            recommendationEnities: r,
            statemRecommendationRequest: RequestState.loaded)));
  }
}
