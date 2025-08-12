import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import model
import 'package:app/models/all_brands/all_brands_model.dart';

class AllBrandsController {
  AllBrandsController();
  
  void getter(BuildContext context) {
    AllBrandsModel viewModel = Provider.of<AllBrandsModel>(context, listen: false);
    //TODO Add code here for getter
    viewModel.getter();
  }

  void setter(BuildContext context) {
    AllBrandsModel viewModel = Provider.of<AllBrandsModel>(context, listen: false);
    //TODO Add code here for setter
    viewModel.setter();
  }

  void update(BuildContext context) {
    AllBrandsModel viewModel = Provider.of<AllBrandsModel>(context, listen: false);
    //TODO Add code here for update
    viewModel.update();
  }

  void remove(BuildContext context) {
    AllBrandsModel viewModel = Provider.of<AllBrandsModel>(context, listen: false);
    //TODO Add code here for remove
    viewModel.remove();
  }
}