import 'package:app/common/styles/spacing_styles.dart';
import 'package:app/common/widgets/appbar/appbar.dart';
import 'package:app/common/widgets/login_signup/form_divider.dart';
import 'package:app/common/widgets/login_signup/social_buttons.dart';
import 'package:app/util/constans/sizes.dart';
import 'package:app/util/constans/text_strings.dart';
import 'package:app/views/login/components/login_form.dart';
import 'package:app/views/login/components/login_header.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
// import model
import 'package:app/models/login/login_model.dart';
// import controller
import 'package:app/controllers/login/login_controller.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Khởi tạo LoginController
    final controller = Get.put(LoginController());

    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text(
          'Login',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: ChangeNotifierProvider<LoginModel>(
        create: (context) => LoginModel.instance(),
        child: Consumer<LoginModel>(
          builder: (context, viewModel, child) {
            return SingleChildScrollView(
              child: Padding(
                padding: TSpacingStyle.paddingWithAppBarHeight,
                child: Column(
                  children: [
                    ///logo , title subtitle
                    const TLoginHeader(),
                    const TLoginForm(),
                    //Vivider
                    TFormDivider(dividerText: TTexts.orSignInWith.capitalize!),
                    const SizedBox(height: TSizes.spaceBtwSections),
                    const TSocialButtons()
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
