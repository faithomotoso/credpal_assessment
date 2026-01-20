import 'package:currency_formatter/currency_formatter.dart';

// Naira symbol doesn't work with the fonts
CurrencyFormat nairaSettings = CurrencyFormat(symbol: "NGN");

String formatCurrency(double amount) {
  return CurrencyFormatter.format(amount, nairaSettings);
}
