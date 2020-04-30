import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/user.dart';

Future<List<User>> getItem() async {
  final response = await http.get('http://192.168.1.3/API/index.php');
  if (response.statusCode == 200) {
    final parsed = jsonDecode(response.body).cast<Map<String, dynamic>>();
    return parsed.map<User>((i) => User.fromJson(i)).toList();
  } else {
    throw Exception('asd');
  }
}
