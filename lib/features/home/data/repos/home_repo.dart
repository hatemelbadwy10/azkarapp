import 'package:azkarapp/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

import '../models/elzekr_model/azkar_model.dart';

abstract class HomeRepo{
Future<Either<Failure,List<AzkarModel>>>getAllAzkar();
}