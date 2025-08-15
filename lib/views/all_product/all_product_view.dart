import 'package:app/common/widgets/appbar/appbar.dart';
import 'package:app/common/widgets/products/sortable/sortable_products.dart';
import 'package:app/util/constans/sizes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import model
import 'package:app/models/all_product/all_product_model.dart';
// import controller
import 'package:app/controllers/all_product/all_product_controller.dart';

class AllProductView extends StatelessWidget {
  const AllProductView({super.key});

  @override
  Widget build(BuildContext context) {
    AllProductController viewController = AllProductController();
    return ChangeNotifierProvider<AllProductModel>(
      create: (context) => AllProductModel.instance(),
      child: Consumer<AllProductModel>(
        builder: (context, viewModel, child) {
          return const Scaffold(
            appBar: TAppBar(
              title: Text('Sản phẩm phổ biến'),
              showBackArrow: true,
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(TSizes.defaultSpace),
                child: 
                TSortableProducts(),
              ),
            ),
          );
        },
      ),
    );
  }
}

