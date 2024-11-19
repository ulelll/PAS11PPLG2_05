import 'package:pas1_mobile_11pplg2_05/controllers/dashboard_controller.dart';
import 'package:pas1_mobile_11pplg2_05/pages/menu/home_menu.dart';
import '../pages/menu/favorite_menu.dart';
import '../pages/menu/profile_menu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardNav extends StatelessWidget {
  const DashboardNav({super.key});

  @override
  Widget build(BuildContext context) {
    final DashboardController dashboardController = Get.find();

    final List<Widget> menus = [
      HomeMenu(),
     // const RecipeMenu(),
      FavoriteMenu(),
      ProfileMenu(),
    ];

    return Obx(() {
      return Scaffold(
        body: menus[dashboardController.selectedIndex.value],
        bottomNavigationBar: Container(          
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 89, 21, 118),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 5,
              blurRadius: 10,
              offset: Offset(0, 3),
            )
           ],
          ),
          
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          child: BottomNavigationBar(
            backgroundColor: const Color.fromARGB(255, 253, 136, 218), 
            selectedItemColor: const Color.fromARGB(255, 255, 255, 255), 
            unselectedItemColor: const Color.fromARGB(255, 173, 69, 135), 
            currentIndex: dashboardController.selectedIndex.value,
            onTap: dashboardController.changeMenu,
            items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home_filled),
                  label: "Home",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.favorite),
                  label: "Favorite",
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person_2_rounded),
                  label: "Profile",
                  ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
