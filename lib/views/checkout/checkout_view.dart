import 'package:app/common/widgets/appbar/appbar.dart';
import 'package:app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:app/common/widgets/products/cart/coupon_widgets.dart';
import 'package:app/common/widgets/success_screen/success_screen.dart';
import 'package:app/navigation_menu.dart';
import 'package:app/util/constans/colors.dart';
import 'package:app/util/constans/image_strings.dart';
import 'package:app/util/constans/sizes.dart';
import 'package:app/util/formatters/formatter.dart';
import 'package:app/util/helpers/helper_functions.dart';
import 'package:app/views/cart/components/cart_items.dart';
import 'package:app/views/checkout/components/billing_address_section.dart';
import 'package:app/views/checkout/components/billing_amount_section.dart';
import 'package:app/views/checkout/components/billing_paymentmethod.dart';
import 'package:app/views/checkout/components/billing_user.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
// import model
import 'package:app/models/checkout/checkout_model.dart';
// import controller
import 'package:app/controllers/checkout/checkout_controller.dart';

class CheckoutView extends StatelessWidget {
  const CheckoutView({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    CheckoutController viewController = CheckoutController();
    return ChangeNotifierProvider<CheckoutModel>(
        create: (context) => CheckoutModel.instance(),
        child: Consumer<CheckoutModel>(builder: (context, viewModel, child) {
          return Scaffold(
            appBar: TAppBar(
              showBackArrow: true,
              title: Text(
                'Đặt hàng',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(TSizes.defaultSpace),
                child: Column(
                  children: [
                    const TCartItems(
                      showAddRemoveButtons: false,
                    ),
                    const SizedBox(height: TSizes.spaceBtwSections),

                    ///coupon text file
                    // TCouponCode(onCouponApplied: _applyCoupon), //
                    const SizedBox(height: TSizes.spaceBtwSections),
                    const TCouponCode(),
                    TRoundedContainer(
                      padding: const EdgeInsets.only(
                          top: TSizes.md,
                          left: TSizes.sm,
                          right: TSizes.sm,
                          bottom: TSizes.md),
                      showBorder: true,
                      backgroundColor: dark ? TColors.black : TColors.white,
                      child: const Column(
                        children: [
                          TBillingAmountSection(
                              // onTotalAmountChanged: _updateTotalAmount,
                              // salelAmount: _saleAmount,
                              ),
                        ],
                      ),
                    ),
                    const SizedBox(height: TSizes.spaceBtwSections),
                    TRoundedContainer(
                      padding: const EdgeInsets.all(TSizes.md),
                      showBorder: true,
                      backgroundColor: dark ? TColors.black : TColors.white,
                      child: const Column(
                        children: [
                          TBillingAddressSection(),
                        ],
                      ),
                    ),
                    const SizedBox(height: TSizes.spaceBtwSections),
                    TRoundedContainer(
                      padding: const EdgeInsets.all(TSizes.md),
                      showBorder: true,
                      backgroundColor: dark ? TColors.black : TColors.white,
                      child: const Column(
                        children: [
                          TBillingUserSection(),
                        ],
                      ),
                    ),
                    const SizedBox(height: TSizes.spaceBtwSections),
                    TRoundedContainer(
                      padding: const EdgeInsets.all(TSizes.md),
                      showBorder: true,
                      backgroundColor: dark ? TColors.black : TColors.white,
                      child: const Column(
                        children: [TBillingPaymentMethodSection()],
                      ),
                    )
                  ],
                ),
              ),
            ),
            bottomNavigationBar: Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: ElevatedButton(
                onPressed: () => Get.to(() => SuccesScreen(
                    image: TImages.successfulPaymentIcon,
                    title: 'title',
                    subtitle: 'subtitle',
                    onPressed: () => Get.to(() => const NavigationMenu()))),
                child: Text(
                  TFormatter.formatCurrency(211),
                ),
              ),
            ),
          );
        }));
  }
}
