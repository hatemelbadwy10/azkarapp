import 'dart:convert';

import 'package:dio/dio.dart';

class ApiServices {
  final _endPoint =
      'https://raw.githubusercontent.com/Alsarmad/Adhkar-json/main/adhkar.json';
  final Dio _dio;
  final _elsalahTimesEndPoint = 'https://muslimsalat.p.rapidapi.com/cairo.json';
  ApiServices(this._dio);
  Future<Map<String, dynamic>> getElazkar() async {
    var respond = await _dio.get('$_endPoint');
    print(respond.data);
    return respond.data;
  }

  Future<Map<dynamic,dynamic>> getElsalahTimes() async {
    var respond = await _dio.get('$_elsalahTimesEndPoint');
    print(respond.data);
    return respond.data;
  }
}
