import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
// import model
import 'package:app/models/home/home_model.dart';

class HomeController extends GetxController {
  static HomeController get instance => Get.find();
  
final carousalCurrentIndex = 0.obs;

 void updatePageIndicator(index){
  carousalCurrentIndex.value = index;
}
  HomeController();
  
  void getter(BuildContext context) {
    HomeModel viewModel = Provider.of<HomeModel>(context, listen: false);
    //TODO Add code here for getter
    viewModel.getter();
  }

  void setter(BuildContext context) {
    HomeModel viewModel = Provider.of<HomeModel>(context, listen: false);
    //TODO Add code here for setter
    viewModel.setter();
  }

  // void update(BuildContext context) {
  //   HomeModel viewModel = Provider.of<HomeModel>(context, listen: false);
  //   //TODO Add code here for update
  //   viewModel.update();
  // }

  void remove(BuildContext context) {
    HomeModel viewModel = Provider.of<HomeModel>(context, listen: false);
    //TODO Add code here for remove
    viewModel.remove();
  }
}