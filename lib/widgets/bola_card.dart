import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas1_mobile_11pplg2_05/controllers/like_controller.dart';
import 'package:pas1_mobile_11pplg2_05/controllers/post_controller.dart';
import 'package:pas1_mobile_11pplg2_05/models/post_model.dart';
import 'package:pas1_mobile_11pplg2_05/controllers/like_controller.dart';

class BolaCard extends StatelessWidget {
  final PostController postController = Get.put(PostController());
  final Likecontroller likeController = Get.put(Likecontroller());
  final PostModelApi post;
  bool allowDeletion = false;

  BolaCard({required this.post, super.key, this.allowDeletion = false});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 10,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              bottomLeft: Radius.circular(20),
            ),
            child: Image.network(
              post.strBadge,
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    post.strTeam,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 184, 61, 143),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    post.strLocation,
                    style: TextStyle(
                      fontSize: 15,
                      color: const Color.fromARGB(255, 136, 85, 117),
                    ),
                  ),
                  SizedBox(height: 10),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Obx(() {
                      var isLiked = likeController.getLikedById(post.idTeam!).value;
                      return IconButton(
                        onPressed: () {
                          if (isLiked) {
                  if (allowDeletion) {
                    likeController.deleteTask(post.idTeam!);
                    Get.snackbar(
                        'Info', '${post!.strTeam} removed from favorites.',
                        backgroundColor: const Color.fromARGB(255, 192, 55, 142),
                        colorText: Colors.white);
                  } else {
                    Get.snackbar(
                        'Error', 'You can only remove favorites from Library.',
                        backgroundColor: const Color.fromARGB(255, 192, 55, 142),
                        colorText: Colors.white);
                  }
                } else {
                  likeController.addTask(post!);
                  Get.snackbar(
                      'Info', '${post!.strTeam} added to favorites.',
                      backgroundColor: Colors.black87, colorText: Colors.white);
                }
                        },
                        icon: Icon(
                          isLiked ? Icons.shopping_cart : Icons.shopping_cart_outlined,
                          color: isLiked ? const Color.fromARGB(255, 255, 145, 211) : Colors.white,
                          size: 24,
                        ));
                    }),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}