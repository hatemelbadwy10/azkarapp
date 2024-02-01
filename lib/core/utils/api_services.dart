import 'package:dio/dio.dart';

class ApiServices {
  final _endPoint =
      'https://raw.githubusercontent.com/nawafalqari/azkar-api/56df51279ab6eb86dc2f6202c7de26c8948331c1/azkar.json';
  final Dio _dio;
  final _elsalahTimesEndPoint =
      'https://api.aladhan.com/v1/timingsByCity/01-02-aswan?city=mansoura&country=egypt&method=8';
  ApiServices(this._dio);
  Future<Map<String, dynamic>> getElazkar() async {
    var respond = await _dio.get('$_endPoint');
    print(respond.data);
    return respond.data;
  }

  Future<Map<String, dynamic>> getElsalahTimes() async {
    var respond = await _dio.get('$_elsalahTimesEndPoint');
    print(respond.data);
    return respond.data;
  }
}
