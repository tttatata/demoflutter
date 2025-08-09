import 'package:app/util/helpers/helper_functions.dart';
import 'package:app/views/home/home_view.dart';
import 'package:app/views/store/store_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
     final darkMode = THelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(
  () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index)=> controller.selectedIndex.value = index,
         backgroundColor: darkMode ? Colors.black : Colors.white,
         indicatorColor: darkMode ? Colors.white.withOpacity(0.1) : Colors.black.withOpacity(0.1),
          destinations: [
            NavigationDestination(
              icon: const Icon(Iconsax.home),
              label: 'Home',
            ),
             NavigationDestination(
              icon: const Icon(Iconsax.shop),
              label: 'Store',
            ),
            NavigationDestination(
              icon: const Icon(Iconsax.user),
              label: 'Profile',
            ),
            NavigationDestination(
              icon: const Icon(Iconsax.settings),
              label: 'Settings',
            ),
            
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}
class NavigationController extends GetxController{
  final Rx<int> selectedIndex = 0.obs;

  final screens=[
    HomeView(),
    StoreView(),
    Container(color: Colors.deepPurple,),
    Container(color: Colors.orangeAccent,),
  ];

}