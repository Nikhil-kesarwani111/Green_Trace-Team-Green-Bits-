import 'dart:convert';
import 'package:http/http.dart' as http;

import '../Models/Model1.dart';
import 'Api_url_Name.dart';

class FutureFunction{
  Future <Model1> getEventApi() async{
    final response=await http.get(Uri.parse(AppUrl.baseUrl));
    var  data =jsonDecode(response.body);
    print(data);
    if(response.statusCode==200){
      return Model1.fromJson(data);
    }else
    {
      return Model1.fromJson(data);
    }
  }


}