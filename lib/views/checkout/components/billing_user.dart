
import 'package:app/common/widgets/texts/section_heading.dart';
import 'package:app/util/constans/sizes.dart';
import 'package:app/util/helpers/helper_functions.dart';
import 'package:app/views/profile/profile_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TBillingUserSection extends StatefulWidget {
  const TBillingUserSection({super.key});

  @override
  _TBillingUserSectionState createState() => _TBillingUserSectionState();
}

class _TBillingUserSectionState extends State<TBillingUserSection> {
  final _formKey = GlobalKey<FormState>();

  final hidepassword = true.obs;
  final privatePolicy = true.obs;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    // final user = context.watch<UserProvider>().user;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TSectionHeading(
            title: 'Thông tin khách hàng',
            buttonTitle: 'Change',
            onPressed: () => Get.to(() => const ProfileView())),
        //  => _handleChangeButtonPressed(context)

        const SizedBox(
          height: TSizes.spaceBtwItems / 2,
        ),
        Column(
          children: [
            Row(
              children: [
                Text('Tên khách hàng',
                    style: Theme.of(context).textTheme.bodyMedium),
                const SizedBox(
                  width: TSizes.spaceBtwItems,
                ),
                Text(
                 ' user.name', // Sử dụng toán tử null-aware
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems / 2,
            ),
            Row(
              children: [
                Text('Số điện thoại',
                    style: Theme.of(context).textTheme.bodyMedium),
                const SizedBox(
                  width: TSizes.spaceBtwItems,
                ),
                Text(
                   'Trống', // Sử dụng toán tử null-aware
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
            const SizedBox(
              height: TSizes.spaceBtwItems / 2,
            ),
            Row(
              children: [
                Text('email', style: Theme.of(context).textTheme.bodyMedium),
                const SizedBox(
                  width: TSizes.spaceBtwItems,
                ),
                Text(
                 ' user.email', // Sử dụng toán tử null-aware
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
