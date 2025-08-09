import 'package:app/common/widgets/appbar/appbar.dart';
import 'package:app/common/widgets/login_signup/form_divider.dart';
import 'package:app/common/widgets/login_signup/social_buttons.dart';
import 'package:app/util/constans/sizes.dart';
import 'package:app/util/constans/text_strings.dart';
import 'package:app/views/signup/components/sigup_form.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import model
import 'package:app/models/signup/signup_model.dart';
// import controller
import 'package:app/controllers/signup/signup_controller.dart';
import 'package:app/util/helpers/helper_functions.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return ChangeNotifierProvider<SignupModel>(
      create: (context) => SignupModel.instance(),
      child: Consumer<SignupModel>(builder: (context, viewModel, child) {
        return Scaffold(
            appBar: TAppBar(
              showBackArrow: true,
              title: Text(
                'Đăng ký tài khoản',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(TSizes.defaultSpace),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    //title
                    Text(TTexts.signupTitle,
                        style: Theme.of(context).textTheme.headlineMedium),
                    const SizedBox(height: TSizes.spaceBtwItems),
                    //form
                    const TSignUpForm(),
const SizedBox(height: TSizes.spaceBtwSections),
                    ///divider
                    const TFormDivider(dividerText: TTexts.orSignUpWith),
                    const SizedBox(height: TSizes.spaceBtwSections),
                    //social button
                    const TSocialButtons(),
                    const SizedBox(height: TSizes.spaceBtwSections),
                  ],
                ),
              ),
            ));
      }),
    );
  }
}
