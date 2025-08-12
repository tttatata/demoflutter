import 'package:app/common/widgets/appbar/appbar.dart';
import 'package:app/util/constans/sizes.dart';
import 'package:app/util/helpers/helper_functions.dart';
import 'package:app/views/cart/components/cart_items.dart';
import 'package:app/views/checkout/checkout_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
// import model
import 'package:app/models/cart/cart_model.dart';
// import controller
import 'package:app/controllers/cart/cart_controller.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
        final dark = THelperFunctions.isDarkMode(context);
    CartController viewController = CartController();
    return ChangeNotifierProvider<CartModel>(
      create: (context) => CartModel.instance(),
      child: Consumer<CartModel>(
        builder: (context, viewModel, child) {
          return Scaffold(
            appBar: TAppBar(
              showBackArrow: true,
              title: Text(
                'Giỏ hàng',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
            body: const SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.all(TSizes.defaultSpace),
                    child: 
                    TCartItems()
                  )
                ],
              ),
            ),
            bottomNavigationBar: Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: 
              // userchecked
              //     ? sum == 0
              //         ? Text('Giỏ hàng của bạn đang trống!')
              //         : 
               SizedBox(
                          
                          child: ElevatedButton(
                            onPressed: () =>Get.to(()=>const CheckoutView()),
                            child: const Text('23354 vnd'),
                          ),
                        ),
              //     :
                  // Container(
                  //     padding: const EdgeInsets.symmetric(
                  //         horizontal: TSizes.defaultSpace,
                  //         vertical: TSizes.defaultSpace / 2),
                  //     decoration: BoxDecoration(
                  //       color: dark ? TColors.darkGrey : TColors.light,
                  //       borderRadius: const BorderRadius.only(
                  //         topLeft: Radius.circular(TSizes.cardRadiusLg),
                  //         topRight: Radius.circular(TSizes.cardRadiusLg),
                  //       ),
                  //     ),
                  //     child: Row(
                  //       mainAxisAlignment: MainAxisAlignment.center,
                  //       children: [
                  //         Text(
                  //           'Đăng nhập để tiếp tục',
                  //           style: Theme.of(context).textTheme.titleSmall,
                  //         ),
                  //         const SizedBox(
                  //           width: TSizes.spaceBtwItems,
                  //         ),
                  //         TextButton(
                  //           onPressed: () {

                  //           },
                  //           style: ElevatedButton.styleFrom(
                  //               padding: const EdgeInsets.all(TSizes.md),
                  //               backgroundColor:
                  //                   const Color.fromARGB(255, 255, 255, 255),
                  //               side: const BorderSide(
                  //                   color: Color.fromARGB(255, 255, 15, 15))),
                  //           child: const Text('Login'),
                  //         ),
                  //       ],
                  //     ),
                  //   ),
            ),
          );
        },
      ),
    );
  }
}
