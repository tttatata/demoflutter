
import 'package:app/util/constans/sizes.dart';
import 'package:app/views/oders/components/orders_list.dart';
import 'package:flutter/material.dart';

class TOrderTabs extends StatelessWidget {
  final String orderStatus;
  const TOrderTabs({super.key, required this.orderStatus});

  @override
  Widget build(BuildContext context) {
    return ListView(physics: const NeverScrollableScrollPhysics(), children: [
      Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            TOrderListItems(
                orderStatus: orderStatus), // Truyền orderStatus vào đây
            const SizedBox(height: TSizes.spaceBtwItems),
          ],
        ),
      ),
    ]);
  }
}
