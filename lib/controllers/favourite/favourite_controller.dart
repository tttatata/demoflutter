import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import model
import 'package:app/models/favourite/favourite_model.dart';

class FavouriteController {
  FavouriteController();
  
  void getter(BuildContext context) {
    FavouriteModel viewModel = Provider.of<FavouriteModel>(context, listen: false);
    //TODO Add code here for getter
    viewModel.getter();
  }

  void setter(BuildContext context) {
    FavouriteModel viewModel = Provider.of<FavouriteModel>(context, listen: false);
    //TODO Add code here for setter
    viewModel.setter();
  }

  void update(BuildContext context) {
    FavouriteModel viewModel = Provider.of<FavouriteModel>(context, listen: false);
    //TODO Add code here for update
    viewModel.update();
  }

  void remove(BuildContext context) {
    FavouriteModel viewModel = Provider.of<FavouriteModel>(context, listen: false);
    //TODO Add code here for remove
    viewModel.remove();
  }
}