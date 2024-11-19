import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas1_mobile_11pplg2_05/controllers/like_controller.dart';
import 'package:pas1_mobile_11pplg2_05/widgets/bola_card.dart';

// class FavoriteMenu extends StatelessWidget {
//   const FavoriteMenu({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Center(child: Text("This is fav menu")),
//      );
//   }
// }

class FavoriteMenu extends StatelessWidget {
  final Likecontroller likecontroller = Get.put(Likecontroller());
  FavoriteMenu({super.key});

  @override
  Widget build(BuildContext context) {
    likecontroller.loadTasks();
    return Scaffold(
      appBar: AppBar(
        title: Text('your liked club'),
        backgroundColor: const Color.fromARGB(255, 255, 163, 207),
        centerTitle: true,
      ),
      body: Obx(() {
        if (likecontroller.tasks.isEmpty) {
          return Center(
            child: Text('no liked club',
                style: TextStyle(color: const Color.fromARGB(255, 153, 56, 122))),
          );
        }
        return ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: likecontroller.tasks.length,
          itemBuilder: (context, index) {
            final dataSoccer = likecontroller.tasks[index];
            return BolaCard(
              post: dataSoccer,
              allowDeletion: true, 
            );
          },
        );
       
      }),
    );
  }
}