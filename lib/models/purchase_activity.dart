import 'package:flutter/foundation.dart';

@immutable
class PurchaseActivity {
  final String brandName;
  final String details;
  final DateTime purchaseDate;

  const PurchaseActivity({
    required this.brandName,
    required this.details,
    required this.purchaseDate,
  });
}

final dummyPurchaseActivities = [
  PurchaseActivity(
    brandName: 'Brand Name',
    details: 'Lorem ipsum dolor sit amen, consectetur adipi\nLorem ipsum dolor',
    purchaseDate: DateTime(2023, 11, 11),
  ),
  PurchaseActivity(
    brandName: 'Brand Name',
    details: 'Lorem ipsum dolor sit amen, consectetur adipi\nLorem ipsum dolor',
    purchaseDate: DateTime(2023, 9, 21),
  ),
  PurchaseActivity(
    brandName: 'Brand Name',
    details: 'Lorem ipsum dolor sit amen, consectetur adipi\nLorem ipsum dolor',
    purchaseDate: DateTime(2023, 8, 7),
  ),
];
