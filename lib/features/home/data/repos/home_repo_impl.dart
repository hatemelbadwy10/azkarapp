import 'package:azkarapp/core/errors/failure.dart';
import 'package:azkarapp/core/utils/api_services.dart';
import 'package:dio/dio.dart';
import 'package:dartz/dartz.dart';

import '../models/elzekr_model/azkar_model.dart';
import 'home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiServices apiServices;
  HomeRepoImpl(this.apiServices);
  @override
  Future<Either<Failure, List<AzkarModel>>> getAllAzkar() async {
    try {
      var data = await apiServices.getElazkar();
      List<AzkarModel> azkar = [];
      for (var item in data['']) {
        azkar.add(AzkarModel.fromjson(item));
        print(item);
      }
      return right(azkar);
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
