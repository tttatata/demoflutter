import 'package:app/common/widgets/appbar/appbar.dart';
import 'package:app/common/widgets/appbar/tabbar.dart';
import 'package:app/util/constans/colors.dart';
import 'package:app/util/helpers/helper_functions.dart';
import 'package:app/views/oders/components/ordertab.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import model
import 'package:app/models/oders/oders_model.dart';
// import controller
import 'package:app/controllers/oders/oders_controller.dart';

class OdersView extends StatelessWidget {
  const OdersView({super.key});

  @override
  Widget build(BuildContext context) {
    OdersController viewController = OdersController();
    return ChangeNotifierProvider<OdersModel>(
      create: (context) => OdersModel.instance(),
      child: Consumer<OdersModel>(
        builder: (context, viewModel, child) {
          return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: TAppBar(
          showBackArrow: true,
          title: Text(
            'Đơn hàng đã đặt',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),
        body: NestedScrollView(
            headerSliverBuilder: (_, innerBoxIsScrolled) {
              return [
                SliverAppBar(
                    automaticallyImplyLeading: false,
                    pinned: true,
                    floating: true,
                    backgroundColor: THelperFunctions.isDarkMode(context)
                        ? TColors.black
                        : const Color.fromARGB(255, 255, 255, 255),
                    expandedHeight: 0,
                    bottom: const TTabBar(tabs: [
                      Tab(child: Text('Đơn đã đặt')),
                      Tab(child: Text('Đơn chưa xác nhận')),
                      Tab(child: Text('Dơn đã xác nhận')),
                      Tab(child: Text('Đơn đang vận chuyển')),
                      Tab(child: Text('Đơn đã giao')),
                    ]))
              ];
            },
            body: const TabBarView(
              children: [
                TOrderTabs(orderStatus: 'Đơn đã đặt'),
                TOrderTabs(orderStatus: 'Đơn chưa xác nhận'),
                TOrderTabs(orderStatus: 'Đơn đã xác nhận'),
                TOrderTabs(orderStatus: 'Đơn đang vận chuyển'),
                TOrderTabs(orderStatus: 'Đơn đã giao'),
              ],
            )),
      ),
    );
  
        },
      ),
    );
  }
}