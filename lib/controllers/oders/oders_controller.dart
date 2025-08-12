import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import model
import 'package:app/models/oders/oders_model.dart';

class OdersController {
  OdersController();
  
  void getter(BuildContext context) {
    OdersModel viewModel = Provider.of<OdersModel>(context, listen: false);
    //TODO Add code here for getter
    viewModel.getter();
  }

  void setter(BuildContext context) {
    OdersModel viewModel = Provider.of<OdersModel>(context, listen: false);
    //TODO Add code here for setter
    viewModel.setter();
  }

  void update(BuildContext context) {
    OdersModel viewModel = Provider.of<OdersModel>(context, listen: false);
    //TODO Add code here for update
    viewModel.update();
  }

  void remove(BuildContext context) {
    OdersModel viewModel = Provider.of<OdersModel>(context, listen: false);
    //TODO Add code here for remove
    viewModel.remove();
  }
}