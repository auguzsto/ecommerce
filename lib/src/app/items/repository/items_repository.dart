import 'package:ecommerce/src/shared/services/http_client.dart';

class ItemsRepository {
  final client = HttpClient();

  Future<List> all() async {
    return client.all(table: "item");
  }
}
