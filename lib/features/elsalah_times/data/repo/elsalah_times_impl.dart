import 'dart:developer';

import 'package:azkarapp/core/errors/failure.dart';
import 'package:azkarapp/core/utils/api_services.dart';
import 'package:azkarapp/core/utils/city_service.dart';
import 'package:azkarapp/features/elsalah_times/data/models/elsalah_time_model/elsalah_times_model/elsalah_times_model.dart';
//import 'package:azkarapp/features/elsalah_times/data/models/elsalah_time_model/elsalah_time_model.dart';
import 'package:azkarapp/features/elsalah_times/data/repo/elsalah_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../core/utils/get_it.dart';

class ElsalahTimesImpl implements ElsalahTimesRepo {
  final ApiServices apiServices;

  ElsalahTimesImpl(this.apiServices);
  @override
  Future<Either<Failure, ElsalahTimesModel>> getElsalahTimes() async {
    try {
      final String? cityName = await locator<CityService>().getCityName();
      log('city name ${cityName}');
      var data = await apiServices.getElsalahTimes(cityName!);
      ElsalahTimesModel elsalahTimesModel = ElsalahTimesModel.fromJson(data);
     /* for (var times in data['items']) {
        try {
          elsalahTimesModel.add(ElsalahTimesModel.fromJson(times));
        } catch (e) {
          elsalahTimesModel.add(ElsalahTimesModel.fromJson(times));
        }
      }*/
      return right(elsalahTimesModel);
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFailure.fromDioException(e),
        );
      }
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }
}
