import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import model
import 'package:app/models/checkout/checkout_model.dart';

class CheckoutController {
  CheckoutController();
  
  void getter(BuildContext context) {
    CheckoutModel viewModel = Provider.of<CheckoutModel>(context, listen: false);
    //TODO Add code here for getter
    viewModel.getter();
  }

  void setter(BuildContext context) {
    CheckoutModel viewModel = Provider.of<CheckoutModel>(context, listen: false);
    //TODO Add code here for setter
    viewModel.setter();
  }

  void update(BuildContext context) {
    CheckoutModel viewModel = Provider.of<CheckoutModel>(context, listen: false);
    //TODO Add code here for update
    viewModel.update();
  }

  void remove(BuildContext context) {
    CheckoutModel viewModel = Provider.of<CheckoutModel>(context, listen: false);
    //TODO Add code here for remove
    viewModel.remove();
  }
}