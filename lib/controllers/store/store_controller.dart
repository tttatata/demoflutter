import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import model
import 'package:app/models/store/store_model.dart';

class StoreController {
  StoreController();
  
  void getter(BuildContext context) {
    StoreModel viewModel = Provider.of<StoreModel>(context, listen: false);
    //TODO Add code here for getter
    viewModel.getter();
  }

  void setter(BuildContext context) {
    StoreModel viewModel = Provider.of<StoreModel>(context, listen: false);
    //TODO Add code here for setter
    viewModel.setter();
  }

  void update(BuildContext context) {
    StoreModel viewModel = Provider.of<StoreModel>(context, listen: false);
    //TODO Add code here for update
    viewModel.update();
  }

  void remove(BuildContext context) {
    StoreModel viewModel = Provider.of<StoreModel>(context, listen: false);
    //TODO Add code here for remove
    viewModel.remove();
  }
}