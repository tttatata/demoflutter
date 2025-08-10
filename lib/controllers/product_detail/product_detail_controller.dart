import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import model
import 'package:app/models/product_detail/product_detail_model.dart';

class ProductDetailController {
  ProductDetailController();
  
  void getter(BuildContext context) {
    ProductDetailModel viewModel = Provider.of<ProductDetailModel>(context, listen: false);
    //TODO Add code here for getter
    viewModel.getter();
  }

  void setter(BuildContext context) {
    ProductDetailModel viewModel = Provider.of<ProductDetailModel>(context, listen: false);
    //TODO Add code here for setter
    viewModel.setter();
  }

  void update(BuildContext context) {
    ProductDetailModel viewModel = Provider.of<ProductDetailModel>(context, listen: false);
    //TODO Add code here for update
    viewModel.update();
  }

  void remove(BuildContext context) {
    ProductDetailModel viewModel = Provider.of<ProductDetailModel>(context, listen: false);
    //TODO Add code here for remove
    viewModel.remove();
  }
}