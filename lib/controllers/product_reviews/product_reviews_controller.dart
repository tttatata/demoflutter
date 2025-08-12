import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import model
import 'package:app/models/product_reviews/product_reviews_model.dart';

class ProductReviewsController {
  ProductReviewsController();
  
  void getter(BuildContext context) {
    ProductReviewsModel viewModel = Provider.of<ProductReviewsModel>(context, listen: false);
    //TODO Add code here for getter
    viewModel.getter();
  }

  void setter(BuildContext context) {
    ProductReviewsModel viewModel = Provider.of<ProductReviewsModel>(context, listen: false);
    //TODO Add code here for setter
    viewModel.setter();
  }

  void update(BuildContext context) {
    ProductReviewsModel viewModel = Provider.of<ProductReviewsModel>(context, listen: false);
    //TODO Add code here for update
    viewModel.update();
  }

  void remove(BuildContext context) {
    ProductReviewsModel viewModel = Provider.of<ProductReviewsModel>(context, listen: false);
    //TODO Add code here for remove
    viewModel.remove();
  }
}