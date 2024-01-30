import 'package:dio/dio.dart';

class ApiServices{
  final _endPoint='https://raw.githubusercontent.com/nawafalqari/azkar-api/56df51279ab6eb86dc2f6202c7de26c8948331c1/azkar.json';
  final Dio _dio;
  ApiServices(this._dio);
  Future<Map<String,dynamic>> getElazkar() async{
var respond = await _dio.get('$_endPoint');
  print(respond.data);
  return respond.data;

}
}