import 'dart:convert';

import 'package:dio/dio.dart';

class ApiServices {
  final _endPoint =
      'https://raw.githubusercontent.com/Alsarmad/Adhkar-json/main/adhkar.json';
  final Dio _dio;

  final apiKey ='f5d48627femsh794bf46379f9d0cp12bf27jsn2013915d0d21';
  ApiServices(this._dio);
  Future<List<Map<String, dynamic>>> getElazkar() async {
    var respond = await _dio.get(_endPoint);
    List<Map<String,dynamic>> azkarData= List<Map<String,dynamic>>.from(jsonDecode(respond.data));
    return azkarData;
  }

  Future<Map<String,dynamic>> getElsalahTimes(String cityName) async {
    final elsalahTimesEndPoint = 'https://muslimsalat.p.rapidapi.com/$cityName.json';
    var respond = await _dio.get(elsalahTimesEndPoint,options: Options(
      headers: {'X-RapidAPI-Key': apiKey})
    );
    return respond.data['items'][0];
  }
}
