import 'package:ecommerce/src/shared/services/http_client.dart';

class ItemsRepository {
  final client = HttpClient();

  Future<List> all() async {
    return await client.all(table: "item");
  }

  Future<List> findById(String id) async {
    return await client.all(table: "item", column: "id=$id");
  }
}
