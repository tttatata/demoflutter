
import 'package:app/common/widgets/products/cart/cart_item.dart';
import 'package:app/util/constans/sizes.dart';
import 'package:flutter/material.dart';

class TCartItemsCheckout extends StatelessWidget {
  const TCartItemsCheckout({
    super.key,
    this.showAddRemoveButtons = false,
  });
  final bool showAddRemoveButtons;

  @override
  Widget build(BuildContext context) {
    // final user = context.watch<UserProvider>().user;
    // List<Map<String, dynamic>> cartItems = [];
    // int sum = 0;
    // user.cart?.forEach((e) {
    //   final price = e['sellPrice'];
    //   if (price != null) {
    //     sum += e['qty'] * (price as int) as int; // Convert to double
    //   }
    // });
    // // Tính toán và lấy thông tin giỏ hàng...
    // user.cart?.forEach((e) {
    //   // Cập nhật thông tin sản phẩm với quantity mới
    //   e['qty'] = e['qty'];
    //   cartItems.add(e); // Thêm thông tin sản phẩm vào danh sách
    // });

    return ListView.separated(
        shrinkWrap: true,
        itemCount: 4,
        separatorBuilder: (_, __) =>
            const SizedBox(height: TSizes.spaceBtwSections),
        itemBuilder: (_, index) => Column(
              children: [
                TCartItem(index: index),
              ],
            ));
  }
}
