import 'package:app/views/login/login_view.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();
  //Variable
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;
  //Update Current Index when Page Scroll
  void updatePageIndicator(index) => currentPageIndex.value = index;
  //Update Current Index when Page Scroll
void dotNavigationClick(int index) {
  currentPageIndex.value = index; // Cập nhật chỉ số trang hiện tại
  pageController.jumpToPage(index); // Chuyển đến trang tương ứng
}
  //Update Current Index when Page Scroll
  void nextPage() {
    if (currentPageIndex.value == 2) {
      final storage = GetStorage();
      if(kDebugMode){
      print('======================================gget storage btuuon=========================');
      print(storage.read('IsFirstTime'));
    }
      storage.write('IsFirstTime', false);

      Get.offAll(const LoginScreen());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  //Update Current Index when Page Scroll
  void skipPage() {
     final storage = GetStorage();
     if(kDebugMode){
      print('======================================gget storage btuuon======================');
      print(storage.read('IsFirstTime'));
    }
      storage.write('IsFirstTime', false);
    Get.offAll(() => const LoginScreen());
    // currentPageIndex.value = 2;
    // pageController.jumpToPage(2);
  }
}
