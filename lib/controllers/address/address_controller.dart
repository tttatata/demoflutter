import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import model
import 'package:app/models/address/address_model.dart';

class AddressController {
  AddressController();
  
  void getter(BuildContext context) {
    AddressModel viewModel = Provider.of<AddressModel>(context, listen: false);
    //TODO Add code here for getter
    viewModel.getter();
  }

  void setter(BuildContext context) {
    AddressModel viewModel = Provider.of<AddressModel>(context, listen: false);
    //TODO Add code here for setter
    viewModel.setter();
  }

  void update(BuildContext context) {
    AddressModel viewModel = Provider.of<AddressModel>(context, listen: false);
    //TODO Add code here for update
    viewModel.update();
  }

  void remove(BuildContext context) {
    AddressModel viewModel = Provider.of<AddressModel>(context, listen: false);
    //TODO Add code here for remove
    viewModel.remove();
  }
}