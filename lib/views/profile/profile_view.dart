import 'package:app/common/widgets/appbar/appbar.dart';
import 'package:app/common/widgets/images/t_circular_image.dart';
import 'package:app/common/widgets/texts/section_heading.dart';
import 'package:app/util/constans/image_strings.dart';
import 'package:app/util/constans/sizes.dart';
import 'package:app/views/profile/components/profile_menu.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import model
import 'package:app/models/profile/profile_model.dart';
// import controller
import 'package:app/controllers/profile/profile_controller.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    ProfileController viewController = ProfileController();
    return ChangeNotifierProvider<ProfileModel>(
      create: (context) => ProfileModel.instance(),
      child: Consumer<ProfileModel>(
        builder: (context, viewModel, child) {
          return Scaffold(
      appBar: const TAppBar(
        showBackArrow: true,
        title: Text('Profile'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const TCircularImage(
                      image:  TImages.user
                         ,
                      // isNetworkImage: user.avatar!.url.isEmpty ? false : true,
                      width: 120,
                      height: 120,
                    ),
                    TextButton(
                      onPressed: (){},
                      child: const Text('Change Profile Picture'),
                    ),
                  ],
                ),
              ),
              //details
              const SizedBox(height: TSizes.spaceBtwItems / 2),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems),
              const TSectionHeading(
                title: 'Profile information',
                showActionButton: false,
              ),
              const SizedBox(height: TSizes.spaceBtwItems),
              // Add more widgets here if needed
              ProfileMenu(
                title: 'Name',
                value: 'thuaosd',
                onPressed: () {
                  
                },
              ),
              ProfileMenu(
                title: 'UserName',
                value: 'thuaosdasdasd',
                onPressed: () {
                  
                },
              ),
               const SizedBox(height: TSizes.spaceBtwItems),
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems),
              const TSectionHeading(
                title: 'personal information',
                showActionButton: false,
              ),
              const SizedBox(height: TSizes.spaceBtwItems),
              // Add more widgets here if needed
              ProfileMenu(
                title: 'Name',
                value: 'thuaosd',
                onPressed: () {
                  
                },
              ),
               ProfileMenu(
                title: 'Name',
                value: 'thuaosd',
                onPressed: () {
                  
                },
              ),
               ProfileMenu(
                title: 'Name',
                value: 'thuaosd',
                onPressed: () {
                  
                },
              ),
               ProfileMenu(
                title: 'Name',
                value: 'thuaosd',
                onPressed: () {
                  
                },
              ),
               ProfileMenu(
                title: 'Name',
                value: 'thuaosd',
                onPressed: () {
                  
                },
              ),
            
              const Divider(),
              const SizedBox(height: TSizes.spaceBtwItems),
              Center(child: TextButton(onPressed: () {}, child: const Text('Close account',style: TextStyle(color: Colors.red),))),
            ],
          ),
        ),
      ),
    );
  },
),
);
}}