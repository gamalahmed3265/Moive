import 'package:dio/dio.dart';
import 'package:ecommarce/moive/app/constans.dart';
import 'package:ecommarce/moive/data/model/moive_detils_model.dart';
import 'package:ecommarce/moive/data/model/moives_recomme_model.dart';
import 'package:ecommarce/moive/data/network/erroe_message.model.dart';

import '../../core/error/exception.dart';
import '../model/moive_model.dart';

abstract class RemoteDataSource {
  Future<List<MoiveModel>> getMoiveNowPlaying();
  Future<List<MoiveModel>> getMoivePopular();
  Future<List<MoiveModel>> getMoiveTopRate();
  Future<MoiveDetialsModel> getMoiveMoiveDetials(int idOfMoive);
  Future<List<RecommendationModel>> getMoiveRecommend(int idOfMoive);
}

class RemoteDataSourceImp implements RemoteDataSource {
  @override
  Future<List<MoiveModel>> getMoiveNowPlaying() async {
    final response = await Dio().get(AppConstans.pathMoiveNowPlaying);
    print(response);
    if (response.statusCode == 200) {
      return List<MoiveModel>.from((response.data["results"] as List)
          .map((e) => MoiveModel.fromJson(e)));
    } else {
      throw ServerException(failure: ErrorMessageModel.formJson(response.data));
    }
  }

  @override
  Future<List<MoiveModel>> getMoivePopular() async {
    final response = await Dio().get(AppConstans.pathgetMoivePopular);

    if (response.statusCode == 200) {
      return List<MoiveModel>.from((response.data["results"] as List)
          .map((e) => MoiveModel.fromJson(e)));
    } else {
      throw ServerException(failure: ErrorMessageModel.formJson(response.data));
    }
  }

  @override
  Future<List<MoiveModel>> getMoiveTopRate() async {
    final response = await Dio().get(AppConstans.pathgetMoiveTopRate);

    if (response.statusCode == 200) {
      return List<MoiveModel>.from((response.data["results"] as List)
          .map((e) => MoiveModel.fromJson(e)));
    } else {
      throw ServerException(failure: ErrorMessageModel.formJson(response.data));
    }
  }

  @override
  Future<MoiveDetialsModel> getMoiveMoiveDetials(int idOfMoive) async {
    final response = await Dio().get(AppConstans.baseUrlOfDetils(idOfMoive));
    if (response.statusCode == 200) {
      return MoiveDetialsModel.fromJson(response.data);
    } else {
      throw ServerException(failure: ErrorMessageModel.formJson(response.data));
    }
  }

  @override
  Future<List<RecommendationModel>> getMoiveRecommend(int idOfMoive) async {
    final response =
        await Dio().get(AppConstans.baseUrlOfRecommendation(idOfMoive));

    if (response.statusCode == 200) {
      return List<RecommendationModel>.from((response.data["results"] as List)
          .map((e) => RecommendationModel.fromJson(e)));
    } else {
      throw ServerException(failure: ErrorMessageModel.formJson(response.data));
    }
  }
}
