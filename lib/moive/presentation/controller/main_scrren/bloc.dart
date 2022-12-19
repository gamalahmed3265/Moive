import 'dart:async';
import 'dart:ffi';

import 'package:ecommarce/moive/core/utils/enums.dart';
import 'package:ecommarce/moive/presentation/controller/main_scrren/events.dart';
import 'package:ecommarce/moive/presentation/controller/main_scrren/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/usecase/get_moive_now_playing_use_case.dart';
import '../../../domain/usecase/get_moive_popular_use_case.dart';
import '../../../domain/usecase/get_moive_top_rate_use_case.dart';

class MoivesBloc extends Bloc<MoiveEvents, MoivesState> {
  final MoiveNowPlayingUseCase useCaseMoiveNowPlayingUseCase;
  final MoivePopularUseCase useCaseMoivePopularUseCase;
  final MoiveTopRateUseCase useCaseMoiveTopRateUseCase;

  MoivesBloc(
    this.useCaseMoiveNowPlayingUseCase,
    this.useCaseMoivePopularUseCase,
    this.useCaseMoiveTopRateUseCase,
  ) : super(const MoivesState()) {
    on<MoiveNowPlayingEvents>(_getNowPlaying);

    on<MoivePopularEvents>(_getPopular);

    on<MoiveTopRateEvents>(_getTopRate);
  }

  FutureOr<void> _getNowPlaying(
      MoiveNowPlayingEvents event, Emitter<MoivesState> emit) async {
    // ignore: void_checks
    final result = await useCaseMoiveNowPlayingUseCase.execute(Void);
    emit(const MoivesState(stateNowPlayingRequest: RequestState.loading));
    result.fold(
        (l) => emit(state.copyWith(
            messagenowPlay: l.message,
            stateNowPlayingRequest: RequestState.error)),
        (r) => emit(state.copyWith(
            moivesNowPlay: r, stateNowPlayingRequest: RequestState.loaded)));
  }

  FutureOr<void> _getPopular(
      MoivePopularEvents event, Emitter<MoivesState> emit) async {
    // ignore: void_checks
    final result = await useCaseMoivePopularUseCase.execute(Void);
    emit(const MoivesState(stateMoivePopularRequest: RequestState.loading));
    result.fold(
        (l) => emit(state.copyWith(
            messageMoivePopular: l.message,
            stateMoivePopularRequest: RequestState.error)),
        (r) => emit(state.copyWith(
            moivesMoivePopular: r,
            stateMoivePopularRequest: RequestState.loaded)));
  }

  FutureOr<void> _getTopRate(
      MoiveTopRateEvents event, Emitter<MoivesState> emit) async {
    // ignore: void_checks
    final result = await useCaseMoiveTopRateUseCase.execute(Void);
    emit(const MoivesState(stateMoiveTopRateRequest: RequestState.loading));
    result.fold(
        (l) => emit(state.copyWith(
            messageMoiveTopRate: l.message,
            stateMoiveTopRateRequest: RequestState.error)),
        (r) => emit(state.copyWith(
            moivesMoiveTopRate: r,
            stateMoiveTopRateRequest: RequestState.loaded)));
  }
}
