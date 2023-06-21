import 'dart:convert';

import 'package:flutter_practice_all/projects/search_API_practice/models/user_modal.dart';
import 'package:http/http.dart' as http;

class FetchUser {
  var data = [];
  List<User> results = [];
  String fetchUrl = "https://jsonplaceholder.typicode.com/users/";

  Future<List<User>> getUserList({String? query}) async {
    var url = Uri.parse(fetchUrl);
    var response = await http.get(url);
    try {
      if (response.statusCode == 200) {
        data = json.decode(response.body);
        results = data.map((e) => User.fromJson(e)).toList();
        if (query != null) {
          results = results
              .where((element) =>
                  element.name!.toLowerCase().contains(query.toLowerCase()))
              .toList();
        }
      } else {
        print('Api Error');
      }
    } on Exception catch (e) {
      print('error: $e');
    }
    return results;
  }
}
