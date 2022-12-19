import 'package:ecommarce/moive/core/utils/enums.dart';
import 'package:ecommarce/moive/domain/entites/moive_entites.dart';
import 'package:equatable/equatable.dart';

class MoivesState extends Equatable {
  final List<MoiveEntites> moivesNowPlay;
  final RequestState stateNowPlayingRequest;
  final String messagenowPlay; //

  final List<MoiveEntites> moivesMoivePopular;
  final RequestState stateMoivePopularRequest;
  final String messageMoivePopular;
//
  final List<MoiveEntites> moivesMoiveTopRate;
  final RequestState stateMoiveTopRateRequest;
  final String messageMoiveTopRate;

  const MoivesState({
    this.moivesNowPlay = const [],
    this.stateNowPlayingRequest = RequestState.loading,
    this.messagenowPlay = "",
//
    this.moivesMoivePopular = const [],
    this.stateMoivePopularRequest = RequestState.loading,
    this.messageMoivePopular = "",
//
    this.moivesMoiveTopRate = const [],
    this.stateMoiveTopRateRequest = RequestState.loading,
    this.messageMoiveTopRate = "",
  });

  MoivesState copyWith({
    List<MoiveEntites>? moivesNowPlay,
    RequestState? stateNowPlayingRequest,
    String? messagenowPlay,
//
    List<MoiveEntites>? moivesMoivePopular,
    RequestState? stateMoivePopularRequest,
    String? messageMoivePopular,
//
    List<MoiveEntites>? moivesMoiveTopRate,
    RequestState? stateMoiveTopRateRequest,
    String? messageMoiveTopRate,
    //
  }) {
    return MoivesState(
      moivesNowPlay: moivesNowPlay ?? this.moivesNowPlay,
      stateNowPlayingRequest:
          stateNowPlayingRequest ?? this.stateNowPlayingRequest,
      messagenowPlay: messagenowPlay ?? this.messagenowPlay,
//
      moivesMoivePopular: moivesMoivePopular ?? this.moivesMoivePopular,
      stateMoivePopularRequest:
          stateMoivePopularRequest ?? this.stateMoivePopularRequest,
      messageMoivePopular: messageMoivePopular ?? this.messageMoivePopular,
//
      moivesMoiveTopRate: moivesMoiveTopRate ?? this.moivesMoiveTopRate,
      stateMoiveTopRateRequest:
          stateMoiveTopRateRequest ?? this.stateMoiveTopRateRequest,
      messageMoiveTopRate: messageMoiveTopRate ?? this.messageMoiveTopRate,
    );
  }

  @override
  List<Object?> get props => [
        moivesNowPlay,
        stateNowPlayingRequest,
        messagenowPlay,
//
        moivesMoivePopular,
        stateMoivePopularRequest,
        messageMoivePopular,
        //
        moivesMoiveTopRate,
        stateMoiveTopRateRequest,
        messageMoiveTopRate,
        //
      ];
}
