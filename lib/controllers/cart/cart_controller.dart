import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import model
import 'package:app/models/cart/cart_model.dart';

class CartController {
  CartController();
  
  void getter(BuildContext context) {
    CartModel viewModel = Provider.of<CartModel>(context, listen: false);
    //TODO Add code here for getter
    viewModel.getter();
  }

  void setter(BuildContext context) {
    CartModel viewModel = Provider.of<CartModel>(context, listen: false);
    //TODO Add code here for setter
    viewModel.setter();
  }

  void update(BuildContext context) {
    CartModel viewModel = Provider.of<CartModel>(context, listen: false);
    //TODO Add code here for update
    viewModel.update();
  }

  void remove(BuildContext context) {
    CartModel viewModel = Provider.of<CartModel>(context, listen: false);
    //TODO Add code here for remove
    viewModel.remove();
  }
}