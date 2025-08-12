// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:app/common/widgets/texts/section_heading.dart';
import 'package:app/util/constans/colors.dart';
import 'package:app/util/constans/image_strings.dart';
import 'package:app/util/constans/sizes.dart';
import 'package:app/util/helpers/helper_functions.dart';
import 'package:flutter/material.dart';



class TBillingPaymentMethodSection extends StatefulWidget {
  const TBillingPaymentMethodSection({
    Key? key,
  }) : super(key: key);

  @override
  _TBillingPaymentMethodSectionState createState() =>
      _TBillingPaymentMethodSectionState();
}

class _TBillingPaymentMethodSectionState
    extends State<TBillingPaymentMethodSection> {
  @override
  void initState() {
    super.initState();
    // Gọi hàm loadSelectedAddress khi initState được gọi
    // context.read<UserProvider>().loadSelectedPaymentMethod();
  }

  // void _handleChangeButtonPressed(BuildContext context) async {
  //   final result = await Navigator.push(
  //     context,
  //     MaterialPageRoute(
  //       builder: (context) => PaymentMethodScreen(), // Truyền lựa chọn hiện tại
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    const paymentMethodselect =true;
    //     Provider.of<UserProvider>(context).selectedPaymentMethod;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TSectionHeading(
          title: 'Phương thức thanh toán ',
          buttonTitle: 'Change',
          onPressed: () {},
        ),
        const SizedBox(
          height: TSizes.spaceBtwItems / 2,
        ),
        Row(
          children: [
            TRoundedContainer(
              width: 60,
              height: 35,
              backgroundColor: dark ? TColors.light : TColors.white,
              padding: const EdgeInsets.all(TSizes.sm),
              child: const Image(image: AssetImage(TImages.google),fit: BoxFit.contain,),
            ),const SizedBox(
                        height: TSizes.spaceBtwItems / 2,
                      ),
                 Text('paypal',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyLarge),    
          ],
        ),
           
        // Column(
        //   children: [
        //     Column(
        //             children: [
        //               Row(
        //                 children: [
        //                   // Icon(IconData(paymentMethodselect?['iconCodePoint'],
        //                   //     fontFamily: 'MaterialIcons')),
        //                   // const SizedBox(
        //                   //   width: TSizes.spaceBtwItems,
        //                   // ),
        //                   // Text(
        //                   //   paymentMethodselect?['paymentMethod'],
        //                   //   style: Theme.of(context).textTheme.bodyMedium,
        //                   // ),
        //                 ],
        //               ),
        //               const SizedBox(
        //                 height: TSizes.spaceBtwItems / 2,
        //               ),
        //             ],
        //           )
               
        //   ],
        // ),
      ],
    );
  }
}
