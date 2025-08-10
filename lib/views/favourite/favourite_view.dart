import 'package:app/common/widgets/appbar/appbar.dart';
import 'package:app/common/widgets/icons/t_circular_icon.dart';
import 'package:app/common/widgets/layouts/grid_layout.dart';
import 'package:app/common/widgets/product_cards/product_card_vertical.dart';
import 'package:app/util/constans/sizes.dart';
import 'package:app/views/home/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
// import model
import 'package:app/models/favourite/favourite_model.dart';
// import controller
import 'package:app/controllers/favourite/favourite_controller.dart';

class FavouriteView extends StatelessWidget {
  const FavouriteView({super.key});

  @override
  Widget build(BuildContext context) {
    FavouriteController viewController = FavouriteController();
    return ChangeNotifierProvider<FavouriteModel>(
      create: (context) => FavouriteModel.instance(),
      child: Consumer<FavouriteModel>(
        builder: (context, viewModel, child) {
          return Scaffold(
            appBar: TAppBar(
              title:  Text('Wishlist', style:Theme.of(context).textTheme.headlineMedium,),
              actions: [
                TCircularIcon(icon: Icons.add,onPressed: () => Get.to(HomeView),)
              ],
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding:const EdgeInsets.all(TSizes.defaultSpace),
                child: Column(children: [
                  TGidLayout(itemCount: 6, itemBuilder:(_,index)=> const TProductCardVertical()),
                ],),)
            ),
          
          );
        },
      ),
    );
  }
}