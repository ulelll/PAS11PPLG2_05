import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas1_mobile_11pplg2_05/controllers/post_controller.dart';
import 'package:pas1_mobile_11pplg2_05/widgets/bola_card.dart';

// class HomeMenu extends StatelessWidget {
//   const HomeMenu({super.key});

//   @override
//   Widget build(BuildContext context) {
//      return Scaffold(
//         body: Center(child: Text("This is home menu")),
//      );
//   }
// }

class HomeMenu extends StatelessWidget {
  final PostController postController = Get.put(PostController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('home Menu'),
        backgroundColor: const Color.fromARGB(255, 255, 189, 238),
        centerTitle: true,
      ),
      body: Obx(() {
        if (postController.isLoading.value) {
          return Center(child: CircularProgressIndicator());
        }
        return ListView.builder(
          padding: EdgeInsets.all(10),
          itemCount: postController.postList.length,
          itemBuilder: (context, index) => BolaCard(post: postController.postList[index]),
        );
      }),
    );
  }
}
void main() {
  runApp(GetMaterialApp(
    home: HomeMenu(),
  ));
}