// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:app/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:app/util/constans/colors.dart';
import 'package:app/util/constans/sizes.dart';
import 'package:app/util/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';



class TSingleAddress extends StatelessWidget {
  const TSingleAddress({
    Key? key,
    required this.selectedAddress,
    // required this.address,
  }) : super(key: key);
  final bool selectedAddress;
  // final dynamic address;
  void confirmDeleteAddress(BuildContext context, dynamic address) {
    showDialog(
      context: context,
      builder: (BuildContext dialogContext) {
        return AlertDialog(
          title: const Text('Xác nhận xóa địa chỉ'),
          content: const Text('Bạn có chắc chắn muốn xóa địa chỉ này không?'),
          actions: <Widget>[
            TextButton(
              child: const Text('Hủy'),
              onPressed: () {
                Navigator.of(dialogContext).pop(); // Đóng hộp thoại
              },
            ),
            TextButton(
              child: const Text('Xác nhận'),
              onPressed: () {
                // Gọi hàm deleteAddress từ AddressServices
                
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return TRoundedContainer(
      width: double.infinity,
      showBorder: true,
      padding: const EdgeInsets.all(TSizes.md),
      backgroundColor: selectedAddress
          ? const Color.fromARGB(255, 0, 132, 255).withOpacity(0.5)
          : Colors.transparent,
      borderColor: selectedAddress
          ? Colors.transparent
          : dark
              ? TColors.darkGrey
              : const Color.fromARGB(255, 4, 1, 160),
      margin: const EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 0,
            child: Icon(selectedAddress ? Iconsax.tick_circle5 : null,
                color: selectedAddress
                    ? dark
                        ? TColors.light
                        : TColors.dark
                    : null),
          ),
          Positioned(
            right: 5,
            bottom: 10,
            child: Row(
              children: [
                // Trong TSingleAddress
                GestureDetector(
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   // MaterialPageRoute(
                    //   //   builder: (context) =>
                    //   //       ,
                    //   // ),
                    // );
                  },
                  child: Icon(Iconsax.edit,
                      color: dark
                          ? TColors.light
                          : const Color.fromARGB(255, 8, 219, 1)),
                ),

                const SizedBox(
                  width: TSizes.sm / 2,
                ),
                GestureDetector(
                  onTap: () {
                    // confirmDeleteAddress(context);
                  },
                  child: Icon(Iconsax.trash,
                      color: dark
                          ? TColors.light
                          : const Color.fromARGB(255, 255, 40, 40)),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('address['']',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.titleLarge),
              const SizedBox(
                height: TSizes.sm / 2,
              ),
              const Row(
                children: [
                  Text(
                    'Địa chỉ',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    width: TSizes.sm / 2,
                  ),
                  Text(
                    'sádasd',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    ',',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    'city',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    ',',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    'country',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
              const SizedBox(
                height: TSizes.sm / 2,
              ),
              Row(
                children: [
                  Text('zipCode',
                      softWrap: true,
                      style: Theme.of(context).textTheme.titleMedium),
                  const SizedBox(
                    width: TSizes.sm / 2,
                  ),
                  Text(
                    'address[''zipCode'.toString(),
                    softWrap: true,
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
