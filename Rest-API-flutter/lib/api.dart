import 'dart:convert';

import 'package:http/http.dart' as http;

void callApi() async {
  var url = Uri.parse('https://dummyjson.com/todos');
  var response = await http.get(url);

  print(response.statusCode);
  print(response.body);
  var data = jsonDecode(response.body);
// print(data['todos']);
  print(data['todos'].map((item) {
    print(item['id']);
    print(item['todo']);
  }));
}
