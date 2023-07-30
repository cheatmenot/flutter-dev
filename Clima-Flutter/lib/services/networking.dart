import 'package:http/http.dart';
import 'dart:convert';

class NetworkHelper {
  final Uri uri;

  NetworkHelper(this.uri);

  Future getData() async {
    Response response = await get(uri);

    if (response.statusCode == 200) {
      String data = response.body;
      print(data);
      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }

}