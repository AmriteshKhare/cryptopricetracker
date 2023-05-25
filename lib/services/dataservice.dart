import 'dart:async';
import 'dart:convert';
import 'package:cryptotracker/models/crypto.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class DataService {
  Future<List<Crypto>> fetchPost() async {
    List<Crypto> _postList = <Crypto>[];
    final response = await http.get(Uri.parse(
        "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=100&page=1&sparkline=false"));

    if (response.statusCode == 200) {
      // If the call to the server was successful, parse the JSON
      List<dynamic> values = <dynamic>[];
      values = json.decode(response.body);
      if (values.length > 0) {
        for (int i = 0; i < values.length; i++) {
          if (values[i] != null) {
            Map<String, dynamic> map = values[i];
            _postList.add(Crypto.fromJson(map));
            print(Crypto.fromJson(map).toString());
          }
          print(_postList.length.toString());
        }
        //_cryptoList = _postList;
      }
      return _postList;
    } else {
      // If that call was not successful, throw an error.
      throw Exception('Failed to load post');
    }
  }
}
