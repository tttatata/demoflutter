import 'package:app/common/widgets/images/t_circular_image.dart';
import 'package:app/util/constans/colors.dart';
import 'package:app/util/constans/image_strings.dart';
import 'package:app/views/profile/profile_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class TUSerProfileTitle extends StatelessWidget {
  const TUSerProfileTitle({
    super.key,
    this.onPressed,
  });
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: const TCircularImage(
          image: TImages.user,
          height: 50,
          width: 50,
          padding: 5,
        ),
        title: Text(
          'user.name',
          style: Theme.of(context)
              .textTheme
              .headlineSmall!
              .apply(color: TColors.white),
        ),
        subtitle: Text(
          ' user.email',
          style: Theme.of(context)
              .textTheme
              .labelMedium!
              .apply(color: TColors.white),
        ),
        trailing: IconButton(
          onPressed: ()=>Get.to(()=>const ProfileView()),
          icon: const Icon(
            Iconsax.edit,
            color: TColors.white,
          ),
        ));
  }
}
