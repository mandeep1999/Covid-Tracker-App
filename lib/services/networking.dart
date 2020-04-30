import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class Networking{
  final String url = 'https://api.covid19india.org/data.json';
  Future<dynamic> getResponse()async{
        var response = await http.get(url);
        if (response.statusCode == 200) {
          var jsonResponse = convert.jsonDecode(response.body);
          return jsonResponse['statewise'];
        } else {
          print('Request failed with status: ${response.statusCode}.');
          return response.statusCode;
        }
  }
}

