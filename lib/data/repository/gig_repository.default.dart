import 'dart:convert';

import 'package:gig_today_1/data/entity/gig.dart';
import 'package:gig_today_1/data/repository/gig_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;

@Singleton(as: GigRepository)
class DefaultGigRepository extends GigRepository {


  @override
  Future<List<Gig>> getTodayGigs() async {
    final response = await http.get(Uri.parse('http://localhost:8080/gig/today'));

    if (response.statusCode == 200) {
      return json.decode(response.body);
    }

    throw Exception('Failed to load data');
  }
}