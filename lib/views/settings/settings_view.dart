import 'package:app/common/widgets/appbar/appbar.dart';
import 'package:app/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:app/common/widgets/list_titles/settings_menu_title.dart';
import 'package:app/common/widgets/list_titles/user_profile_title.dart';
import 'package:app/common/widgets/texts/section_heading.dart';
import 'package:app/util/constans/colors.dart';
import 'package:app/util/constans/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';
// import model
import 'package:app/models/settings/settings_model.dart';
// import controller
import 'package:app/controllers/settings/settings_controller.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    SettingsController viewController = SettingsController();
    return ChangeNotifierProvider<SettingsModel>(
      create: (context) => SettingsModel.instance(),
      child: Consumer<SettingsModel>(builder: (context, viewModel, child) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                //header
                TPrimaryHeaderContainer(
                  child: Column(
                    children: [
                      TAppBar(
                        title: Text(
                          'Account Settings',
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium!
                              .apply(color: TColors.white),
                        ),
                      ),
                      const TUSerProfileTitle(),
const SizedBox(height: TSizes.spaceBtwSections),
                      //user profile card
                    ],
                  ),
                ),
                //body

                Padding(
                    padding: const EdgeInsets.all(TSizes.defaultSpace),
                    child: Column(
                      children: [
                        const TSectionHeading(
                          title: 'Thiết lập tài khoản',
                          showActionButton: false,
                        ),
                        const SizedBox(height: TSizes.spaceBtwItems),
                        TSettingsMenuTitle(
                          icon: Iconsax.safe_home,
                          title: 'Danh sách địa chỉ của bạn',
                          subTitle: 'Địa chỉ giao hàng để giao hàng',
                          onTap: () {},
                        ),
                        TSettingsMenuTitle(
                          icon: Iconsax.safe_home,
                          title: 'Danh sách địa chỉ của bạn',
                          subTitle: 'Địa chỉ giao hàng để giao hàng',
                          onTap: () {},
                        ),
                        TSettingsMenuTitle(
                          icon: Iconsax.safe_home,
                          title: 'Danh sách địa chỉ của bạn',
                          subTitle: 'Địa chỉ giao hàng để giao hàng',
                          onTap: () {},
                        ),
                        TSettingsMenuTitle(
                          icon: Iconsax.safe_home,
                          title: 'Danh sách địa chỉ của bạn',
                          subTitle: 'Địa chỉ giao hàng để giao hàng',
                          onTap: () {},
                        ),
                        TSettingsMenuTitle(
                          icon: Iconsax.safe_home,
                          title: 'Danh sách địa chỉ của bạn',
                          subTitle: 'Địa chỉ giao hàng để giao hàng',
                          onTap: () {},
                        ),
                        TSettingsMenuTitle(
                          icon: Iconsax.safe_home,
                          title: 'Danh sách địa chỉ của bạn',
                          subTitle: 'Địa chỉ giao hàng để giao hàng',
                          onTap: () {},
                        ),
                        TSettingsMenuTitle(
                          icon: Iconsax.safe_home,
                          title: 'Danh sách địa chỉ của bạn',
                          subTitle: 'Địa chỉ giao hàng để giao hàng',
                          onTap: () {},
                        ),

                        //app seating
                        const TSectionHeading(
                          title: 'app seating',
                          showActionButton: false,
                        ),
                        const SizedBox(height: TSizes.spaceBtwItems),
                        TSettingsMenuTitle(
                          icon: Iconsax.safe_home,
                          title: 'Danh sách địa chỉ của bạn',
                          subTitle: 'Địa chỉ giao hàng để giao hàng',
                          onTap: () {},
                          trailing: Switch(value: false, onChanged: (value) {}),
                        ),
                        TSettingsMenuTitle(
                          icon: Iconsax.safe_home,
                          title: 'Danh sách địa chỉ của bạn',
                          subTitle: 'Địa chỉ giao hàng để giao hàng',
                          onTap: () {},
                          trailing: Switch(value: false, onChanged: (value) {}),
                        ),
                        TSettingsMenuTitle(
                          icon: Iconsax.safe_home,
                          title: 'Danh sách địa chỉ của bạn',
                          subTitle: 'Địa chỉ giao hàng để giao hàng',
                          onTap: () {},
                          trailing: Switch(value: false, onChanged: (value) {}),
                        ),
                        const SizedBox(height: TSizes.spaceBtwSections),
                        SizedBox(
                          width: double.infinity,
                          child: OutlinedButton(
                            onPressed: () {},
                            child: const Text('Đăng xuất'),
                          ),
                        ),
                        const SizedBox(height: TSizes.spaceBtwSections * 2.5),
                      ],
                    )
                    // : Center(
                    //     child: ElevatedButton(
                    //         onPressed: () {
                    //           Navigator.push(
                    //             context,
                    //             MaterialPageRoute(
                    //                 builder: (context) => const LoginScreen()),
                    //           );
                    //         },
                    //         child: Padding(
                    //           padding: const EdgeInsets.all(8.0),
                    //           child: Text(TTexts.signIn),
                    //         )),
                    //   ),
                    )
              ],
            ),
          ),
        );
      }),
    );
  }
}
