import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import model
import 'package:app/models/all_product/all_product_model.dart';

class AllProductController {
  AllProductController();
  
  void getter(BuildContext context) {
    AllProductModel viewModel = Provider.of<AllProductModel>(context, listen: false);
    //TODO Add code here for getter
    viewModel.getter();
  }

  void setter(BuildContext context) {
    AllProductModel viewModel = Provider.of<AllProductModel>(context, listen: false);
    //TODO Add code here for setter
    viewModel.setter();
  }

  void update(BuildContext context) {
    AllProductModel viewModel = Provider.of<AllProductModel>(context, listen: false);
    //TODO Add code here for update
    viewModel.update();
  }

  void remove(BuildContext context) {
    AllProductModel viewModel = Provider.of<AllProductModel>(context, listen: false);
    //TODO Add code here for remove
    viewModel.remove();
  }
}