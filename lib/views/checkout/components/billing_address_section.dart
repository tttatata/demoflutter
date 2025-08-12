// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:app/common/widgets/texts/section_heading.dart';
import 'package:app/util/constans/sizes.dart';
import 'package:app/util/helpers/helper_functions.dart';
import 'package:flutter/material.dart';



class TBillingAddressSection extends StatefulWidget {
  const TBillingAddressSection({super.key});

  @override
  _TBillingAddressSectionState createState() => _TBillingAddressSectionState();
}

class _TBillingAddressSectionState extends State<TBillingAddressSection> {
  void _handleChangeButtonPressed(BuildContext context) async {
    
  }

  @override
  void initState() {
    super.initState();
    // Gọi hàm loadSelectedAddress khi initState được gọi
    
  }

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    // final addressselect = Provider.of<UserProvider>(context).selectedAddress;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TSectionHeading(
          title: 'Địa chỉ giao hàng',
          buttonTitle: 'Change',
          onPressed: () => _handleChangeButtonPressed(context),
        ),
        const SizedBox(
          height: TSizes.spaceBtwItems / 2,
        ),
        Column(
          children: [
            // addressselect != null
            //     ?
                 Column(
                    children: [
                      Row(
                        children: [
                          Text('Loại địa chỉ',
                              style: Theme.of(context).textTheme.bodyMedium),
                          const SizedBox(
                            width: TSizes.spaceBtwItems,
                          ),
                          Text(
                            'ádasdasd', // Sử dụng toán tử null-aware
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: TSizes.spaceBtwItems / 2,
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.house,
                            color: Colors.grey,
                            size: 16,
                          ),
                         
                          Expanded(
                            child: 
                         
                                 Row(
                                    children: [
                                      Text('address1',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyLarge),
                                      Text(',',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium),
                                      Text('city',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyLarge),
                                    ],
                                  )
                               
                          ),
                        ],
                      ),
                    ],
                  )
                // : Text('bạn chưa chọn địa chỉ giao hàng!!')
          ],
        ),
      ],
    );
  }
}
