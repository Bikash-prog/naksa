import 'dart:convert';

import 'package:http/http.dart' as http;

//use of http : to connect api and to get the required things out of it
//Response will be green (successful) while status code is 200

class RequestHelper
{
  static Future<dynamic> getRequest(String url) async{
    http.Response response = await http.get(url);
    try{
      if(response.statusCode == 200)
      {
        String data = response.body;
        var decodedData =jsonDecode(data);
        return decodedData;
      }
      else
        return 'failed';
    }
    catch(e)
    {
      return 'failed';
    }
  }

}
