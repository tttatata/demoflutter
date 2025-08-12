import 'package:app/common/widgets/appbar/appbar.dart';
import 'package:app/util/constans/colors.dart';
import 'package:app/views/address/add_new_addressform.dart';
import 'package:app/views/address/components/single_address.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';
// import model
import 'package:app/models/address/address_model.dart';
// import controller
import 'package:app/controllers/address/address_controller.dart';

class AddressView extends StatelessWidget {
  const AddressView({super.key});

  @override
  Widget build(BuildContext context) {
    AddressController viewController = AddressController();
    return ChangeNotifierProvider<AddressModel>(
      create: (context) => AddressModel.instance(),
      child: Consumer<AddressModel>(
        builder: (context, viewModel, child) {
          return 
    Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: TColors.primary,
        onPressed: () => Get.to(() =>const AddNewAddressScreen()),
        child: const Icon(
          Iconsax.add,
          color: TColors.white,
        ),
      ),
      appBar: TAppBar(
        showBackArrow: true,
        title: Text(
          'Addresses',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 15),
            Container(
              color: Colors.black12.withOpacity(0.08),
              height: 1,
            ),
            const SizedBox(height: 5),
            Container(
              child: 
              // user.addresses.length == 0
              //     ? 
                  // Text(
                  //     'Bạn không có địa chỉ giao hàng nào. \nVui lòng thêm địa chỉ để tiếp tục đặt hàng',
                  //     style: Theme.of(context).textTheme.bodyMedium,
                  //     textAlign: TextAlign.center,
                  //   )
                  // : 
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListView.builder(
                        itemCount: 4,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              // // Khi người dùng chọn một địa chỉ, truyền nó trở lại
                              // Provider.of<UserProvider>(context, listen: false)
                              //     .setSelectedAddress(user.addresses[index]);
                            },
                            child: const TSingleAddress(
                              selectedAddress:true
                                  // Provider.of<UserProvider>(context)
                                  //         .selectedAddress?['addressType'] ==
                                  //     user.addresses[index]['addressType'],
                              // address: user.addresses[index],
                            ),
                          );
                        },
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
        },),);}}
       