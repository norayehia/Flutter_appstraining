import 'package:http/http.dart' as http;

import 'model.dart';
import 'dart:convert';

class FetchApi {
//futur function with delyed
  Future<List<Guests>?> fetchGests() async {
    //1
    http.Response response = await http
        .get(Uri.parse("http://127.0.0.1:8000/jsongghfrommodel/"));
//work api status code 200 if not work not 200
    if (response.statusCode == 200) {
      //all items
      var body = jsonDecode(response.body);

// 2then put it in list with loop
//empty list
      List<Guests> gests = [];
      for (var item in body) {
        //3from json in model call it
        gests.add(Guests.fromJson(item));
      }
      //list of gists
      return gests;
    }
    //not workin return null
    return null;
  }
}
