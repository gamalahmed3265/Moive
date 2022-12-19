import 'package:ecommarce/moive/data/repository/repository_imp.dart';
import 'package:ecommarce/moive/domain/repository/repository.dart';
import 'package:ecommarce/moive/domain/usecase/get_moive_details.dart';
import 'package:ecommarce/moive/domain/usecase/get_moive_now_playing_use_case.dart';
import 'package:ecommarce/moive/domain/usecase/get_moive_recommend.dart';
import 'package:ecommarce/moive/presentation/controller/detils/bloc.dart';
import 'package:get_it/get_it.dart';

import '../data/data_source/remote_data_source.dart';
import '../domain/usecase/get_moive_popular_use_case.dart';
import '../domain/usecase/get_moive_top_rate_use_case.dart';
import '../presentation/controller/main_scrren/bloc.dart';

var instance = GetIt.instance;

class ServiceLocator {
  initAppModeule() {
    instance
        .registerLazySingleton<RemoteDataSource>(() => RemoteDataSourceImp());
    instance.registerLazySingleton<MoiveRepository>(
        () => MoiveRepositoryImp(instance<RemoteDataSource>()));

    instance.registerFactory<MoiveNowPlayingUseCase>(
        () => MoiveNowPlayingUseCase(instance<MoiveRepository>()));
    instance.registerFactory<MoivePopularUseCase>(
        () => MoivePopularUseCase(instance<MoiveRepository>()));
    instance.registerFactory<MoiveTopRateUseCase>(
        () => MoiveTopRateUseCase(instance<MoiveRepository>()));
    instance.registerFactory<MoiveDetialsUseCase>(
        () => MoiveDetialsUseCase(instance<MoiveRepository>()));
    instance.registerFactory<MoiveRecommendUseCase>(
        () => MoiveRecommendUseCase(instance<MoiveRepository>()));

    instance.registerFactory<MoivesBloc>(() => MoivesBloc(
          instance<MoiveNowPlayingUseCase>(),
          instance<MoivePopularUseCase>(),
          instance<MoiveTopRateUseCase>(),
        ));
    instance.registerFactory<MoiveseDetialsBloc>(() => MoiveseDetialsBloc(
          instance<MoiveDetialsUseCase>(),
          instance<MoiveRecommendUseCase>(),
        ));
  }

  // initHomePage() {
  //   if (!GetIt.I.isRegistered<MoiveNowPlayingUseCase>()) {
  //     instance.registerFactory<MoiveNowPlayingUseCase>(
  //         () => MoiveNowPlayingUseCase(instance<MoiveRepository>()));
  //     instance.registerFactory<MoivesBloc>(
  //         () => MoivesBloc(instance<MoiveNowPlayingUseCase>()));
  //   }
  // }
}
