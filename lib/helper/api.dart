import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
class Api{
Dio dio ;
Api(this.dio);

Future<dynamic>get({ required String url,@required String ?token})async{
Map<String , String >headers={};
if(token !=null){
  headers.addAll({'Authorization': 'Bearer $token}'});
}
  Response response=await dio.get(url,options: Options(headers: headers));
  if (response.statusCode==200 )
  {
    List<dynamic>data=response.data;
    return data;
  }
  else{throw Exception('there is problem with status code${response.statusCode} with${response.data}');}
}

Future <dynamic> Post({required String url,@required dynamic data,@required String ?token})async {
  Map<String , String>headers={};
   if(token!=null)
     {
       headers.addAll({'Authorization': 'Bearer $token}'});
     }
    Response response=await dio.post(
        url,
      data:data
       , options: Options(headers:headers),        );
   if(response.statusCode==200)
   {
     Map<String,dynamic>Data = response.data;
     return Data;
   }
   else{throw Exception('there is problem with status code${response.statusCode} with${response.data}');}
}
Future<dynamic>Put({ required String url,@required dynamic data,@required String? token})async {
  Map<String, String>headers = {};
  headers.addAll({'Content-Type': 'application/x-www-form-urlencoded'});
  if (token != null) {
    headers.addAll({'Authorization': 'Bearer $token'});
  }
  print('url=$url,data:$data, token=$token ');

  Response response = await dio.put(
      url, data: data, options: Options(headers: headers));
  if (response.statusCode == 200) {
    Map<String, dynamic>Data = response.data;
    print(Data);
    return Data;
  }
  else {
    throw Exception(
        'there is problem with status code${response.statusCode} with${response
            .data}');
  }
}}