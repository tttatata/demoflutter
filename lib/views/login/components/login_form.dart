import 'package:app/util/constans/sizes.dart';
import 'package:app/util/constans/text_strings.dart';
import 'package:app/util/validators/validation.dart';
import 'package:app/views/signup/signup_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

enum Signin {
  signin,
}

class TLoginForm extends StatefulWidget {
  const TLoginForm({Key? key}) : super(key: key);
  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<TLoginForm> {
  Signin _auth = Signin.signin;
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _passwordController = TextEditingController();

  final TextEditingController _emailController = TextEditingController();
  final hidepassword = true.obs;

  final List<String?> errors = [];

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
        child: Column(
          children: [
            //email

            TextFormField(
              decoration: const InputDecoration(
                  labelText: TTexts.email, prefixIcon: Icon(Iconsax.direct_right)),
            ),
            const SizedBox(height: TSizes.spaceBtwInputFields),
            //password
          TextFormField(
              
           
                decoration: InputDecoration(
                  labelText: TTexts.password,
                  prefixIcon: const Icon(Iconsax.password_check),
                  suffixIcon: IconButton(
                    onPressed: () => hidepassword.value = !hidepassword.value,
                    icon: Icon(
                        Iconsax.eye_slash ),
                  ),
                ),
              ),
          
            const SizedBox(height: TSizes.spaceBtwInputFields / 2),

            ///remember Me & Forget Password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ///Remember Me
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text(TTexts.rememberMe)
                  ],
                ),

               ///Forget Password
                TextButton(
                  onPressed: (){},
                  child: const Text(TTexts.forgetPassword),
                )
              ],
            ),
            const SizedBox(height: TSizes.spaceBtwSections),
            //sign in botton
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      // if (_formKey.currentState!.validate()) {
                      // signInUser();
                      // if all are valid then go to success screen
                      // }
                    },
                    child: const Text(TTexts.signIn))),
            const SizedBox(height: TSizes.spaceBtwSections),

            ///create account button
            SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                    onPressed: () {
                   Get.to(SignupView());
                      // if (_formKey.currentState!.validate()) {
                      // signUpUser();
                      // if all are valid then go to success screen
                      // }
                    },
                    child: const Text(TTexts.createAccount))),
          ],
        ),
      ),
    );
  }
}
