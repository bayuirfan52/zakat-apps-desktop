import 'package:intl/intl.dart';

String rupiah(int nominal) {
  final currencyFormatter = NumberFormat.currency(
    locale: 'id',
    symbol: 'Rp',
    decimalDigits: 2,
  );
  return currencyFormatter.format(nominal);
}
