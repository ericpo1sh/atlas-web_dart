import 'dart:convert';
import '4-util.dart';

Future<double> calculateTotal() async {
  try {
    String userData = await fetchUserData();
    Map<String, dynamic> userMap = jsonDecode(userData);
    String userId = userMap['id'];

    String ordersData = await fetchUserOrders(userId);
    List<dynamic> orders = jsonDecode(ordersData) ?? [];

    double total = 0;
    for (var product in orders) {
      String priceData = await fetchProductPrice(product);
      double price = double.tryParse(priceData) ?? 0;
      total += price;
    }

    return total;
  } catch (error) {
    print('error caught: $error');
    return -1;
  }
}
