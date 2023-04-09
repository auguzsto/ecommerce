import 'package:intl/intl.dart';

class UtilService {
  String convertToBRL(double price) {
    final numberFormat = NumberFormat("R\$ #,##0.00", "pt-BR");
    return numberFormat.format(price);
  }
}
