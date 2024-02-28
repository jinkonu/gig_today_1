// abstract class ItemRepository {
//   const ItemRepository();
//
//   Future<List<Item>> getAllItems();
//
//   Future<List<Item>> getItems({required int limit, required int page});
// }

import 'package:gig_today_1/data/entity/gig.dart';

abstract class GigRepository {
  const GigRepository();

  Future<List<Gig>> getAllTodayGigs();
  Future<List<Gig>> getTodayGigs({required int limit, required int page});
}