import 'package:app/common/widgets/loaders/loader.dart';
import 'package:app/data/repositories/authentication/authentication_repository.dart';
import 'package:app/data/repositories/user/user_repository.dart';
import 'package:app/models/usermodel.dart';

import 'package:app/util/constans/image_strings.dart';
import 'package:app/util/helpers/network_manager.dart';
import 'package:app/util/popups/full_screen_loader.dart';
import 'package:app/views/signup/verify_email.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import model

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  //SignupController();

  ///variables
  final privacyPolicy = true.obs;
  final hidePassword = true.obs;
  final email = TextEditingController();
  final lastName = TextEditingController();
  final username = TextEditingController();
  final password = TextEditingController();

  final firstName = TextEditingController();
  final phoneNumber = TextEditingController();
  GlobalKey<FormState> signupFormkey = GlobalKey<FormState>();

  void signup() async {
    try {
      print('Step 1: Open loading dialog');
      TFullScreenLoader.openLoadingDialog(
          'We are processing your information', TImages.docerAnimation);

      print('Step 2: Check internet connectivity');
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        print('No internet connection');
        return;
      }

      print('Step 3: Validate form');
      if (!signupFormkey.currentState!.validate()) {
        print('Form validation failed');
        return;
      }

      print('Step 4: Check privacy policy');
      if (!privacyPolicy.value) {
        print('Privacy policy not accepted');
        TLoaders.warningSnackbar(
            title: 'Accept privacy Policy',
            message:
                'In order to create account, you must have to read and accept the privacy Policy & Terms of use');
        return;
      }
      FirebaseAuth.instance.setLanguageCode('vi');
      print('Step 5: Register user');
      final userCredential = await AuthenticationRepository.instance
          .registerWithEmailAndPassword(
              email.text.trim(), password.text.trim());

      print('Step 6: Create user model');
      final newUser = UserModel(
        id: userCredential.user!.uid,
        firstName: firstName.text.trim(),
        lastName: lastName.text.trim(),
        username: username.text.trim(),
        email: email.text.trim(),
        phoneNumber: phoneNumber.text.trim(),
        profilePicture: '',
      );

      final userRepository = Get.put(UserRepository());
      await userRepository.saveUserRecord(newUser);

      TFullScreenLoader.stopLoading();

// Điều hướng tới màn hình xác minh email

      print('Step 8: Show success snackbar');
      TLoaders.succesSnackbar(
          title: 'Congratulations',
          message: 'Your account has been created! Verify email to continue');

      print('Step 9: Navigate to verify email screen');
      Get.off(() => VerifyEmailScreen());
      // Move to Verify Email Screen
    } catch (e) {
      TFullScreenLoader.stopLoading();
      TLoaders.errorSnackbar(title: 'On snap!', message: e.toString());
    }
  }

  // void signup() async {
  //   try {
  //     TFullScreenLoader.openLoadingDialog(
  //       'Đang xử lý thông tin của bạn...',
  //       TImages.docerAnimation,
  //     );

  //     final isConnected = await NetworkManager.instance.isConnected();
  //     if (!isConnected) throw Exception('Không có kết nối Internet');

  //     if (!signupFormkey.currentState!.validate()) {
  //       throw Exception('Thông tin không hợp lệ. Vui lòng kiểm tra lại.');
  //     }

  //     if (!privacyPolicy.value) {
  //       throw Exception('Bạn cần chấp nhận chính sách bảo mật để tiếp tục.');
  //     }

  //     FirebaseAuth.instance.setLanguageCode('vi');

  //     final userCredential = await AuthenticationRepository.instance
  //         .registerWithEmailAndPassword(
  //             email.text.trim(), password.text.trim());

  //     final user = userCredential.user;
  //     if (user == null) throw Exception('Không thể lấy thông tin người dùng');

  //     final userId = user.uid;

  //     final userData = {
  //       'id': userId,
  //       'firstName': firstName.text.trim(),
  //       'lastName': lastName.text.trim(),
  //       'username': username.text.trim(),
  //       'email': email.text.trim(),
  //       'phoneNumber': phoneNumber.text.trim(),
  //       'profilePicture': '',
  //       'createdAt': FieldValue.serverTimestamp(),
  //     };

  //     await FirebaseFirestore.instance
  //         .collection("Users")
  //         .doc(userId)
  //         .set(userData);

  //     print('✅ Dữ liệu đã được lưu vào Firestore');

  //     TLoaders.succesSnackbar(
  //       title: 'Thành công',
  //       message: 'Tài khoản đã được tạo. Vui lòng xác minh email để tiếp tục.',
  //     );
  //     Get.to(() => const VerifyEmailScreen());
  //   } catch (e) {
  //     TLoaders.errorSnackbar(title: 'Lỗi', message: e.toString());
  //   } finally {
  //     TFullScreenLoader.stopLoading();
  //   }
  // }
}
