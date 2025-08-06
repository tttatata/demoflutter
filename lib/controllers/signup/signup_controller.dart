import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import model
import 'package:app/models/signup/signup_model.dart';

class SignupController {
  SignupController();
  
  void getter(BuildContext context) {
    SignupModel viewModel = Provider.of<SignupModel>(context, listen: false);
    //TODO Add code here for getter
    viewModel.getter();
  }

  void setter(BuildContext context) {
    SignupModel viewModel = Provider.of<SignupModel>(context, listen: false);
    //TODO Add code here for setter
    viewModel.setter();
  }

  void update(BuildContext context) {
    SignupModel viewModel = Provider.of<SignupModel>(context, listen: false);
    //TODO Add code here for update
    viewModel.update();
  }

  void remove(BuildContext context) {
    SignupModel viewModel = Provider.of<SignupModel>(context, listen: false);
    //TODO Add code here for remove
    viewModel.remove();
  }
}