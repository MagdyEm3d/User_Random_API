import 'package:apiuserrandom/Models/UserRandomModel.dart';
import 'package:dio/dio.dart';

class UserRandomServic
{
  static Dio dio=Dio();
  static Future<UserRandomModel>getdata()async
  {
    Response response=await dio.get("https://randomuser.me/api/?results=10");
    try
    {
      if(response.statusCode==200)
      {
        return UserRandomModel.jsonform(response.data);
      }else
      {
        throw Exception("Fail to get data");
      }
    }catch(ex)
    {
      throw Exception(ex);
    }
  }
}