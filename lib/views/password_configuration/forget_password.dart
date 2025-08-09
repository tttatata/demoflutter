import 'package:app/util/constans/sizes.dart';
import 'package:app/util/constans/text_strings.dart';
import 'package:app/views/password_configuration/reset_password.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forget Password'),
      ),
      body: Padding(padding: EdgeInsetsGeometry.all(TSizes.defaultSpace),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Heading
         Text(
                TTexts.forgetPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: TSizes.spaceBtwItems,
              ),
             Text(
                TTexts.forgetPasswordSubTitle,
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: TSizes.spaceBtwSections * 2,
              ),
          //Text field
          TextFormField(
            decoration: InputDecoration(
              labelText: TTexts.email,
              prefixIcon: Icon(Iconsax.direct_right),
            ),
          ),
          SizedBox(
                height: TSizes.spaceBtwSections,
              ),
          //submit
          SizedBox(width: double.infinity, child: ElevatedButton(onPressed: ()=> Get.off(()=>ResetPassword()), child: const Text(TTexts.submit)))
        ],
      ),)
      
    );
  }
}               