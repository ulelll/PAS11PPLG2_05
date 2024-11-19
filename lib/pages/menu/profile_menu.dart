import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas1_mobile_11pplg2_05/widgets/my_color.dart';
import 'package:pas1_mobile_11pplg2_05/controllers/username_controller.dart';


class ProfileMenu extends StatelessWidget {
  final UserController usercontroller = Get.put(UserController()); 
   ProfileMenu({super.key});

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              Container(
                height: 250,
                decoration: const BoxDecoration(
                  color: pink,
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(50)),
                ),
              ),
            ],
          ),
          const SizedBox(height: 60),
          Obx(() {
            return Text(
              "Hi, ${usercontroller.username.value}",
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: pink,
              ),
            );
          }),
           const SizedBox(height: 50),
          ListTile(
            leading: Icon(Icons.settings_outlined, color: darkerone),
            title: const Text("Settings",
                style: TextStyle(color: darkerone, fontSize: 18)),
            trailing: Icon(Icons.arrow_forward_ios, color: darkerone),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.notifications_none_outlined, color: darkerone),
            title: const Text("Notification",
                style: TextStyle(color: darkerone, fontSize: 18)),
            trailing: const Icon(Icons.arrow_forward_ios, color: darkerone),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.info_outline, color: darkerone),
            title: Text("Terms and Service",
                style: TextStyle(color: darkerone, fontSize: 18)),
            trailing: Icon(Icons.arrow_forward_ios, color: darkerone),
            onTap: () {},
          ),
           ListTile(
            leading: Icon(Icons.logout_outlined, color: darkerone),
            title: Text("Log Out",
                style: TextStyle(color: darkerone, fontSize: 18)),
            trailing: Icon(Icons.arrow_forward_ios, color: darkerone),
            onTap: () {
                 Get.toNamed('/');
            },
          ),
                     
      
        ],
      ),
    );
  
  }
}