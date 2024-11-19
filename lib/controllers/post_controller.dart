import 'package:get/get.dart';
import 'package:pas1_mobile_11pplg2_05/adapter/post_service.dart';
import 'package:pas1_mobile_11pplg2_05/models/post_model.dart';

class PostController extends GetxController  {
  var isLoading = true.obs; 
  var postList = <PostModelApi>[].obs;

  @override
 void onInit() {
  fetchPosts();
  super.onInit();
 }

 void fetchPosts() async {
  try {
    isLoading(true);
    var posts = await PostService().fetchPosts();
    postList.assignAll(posts);
  } finally {
    isLoading(false);
  }
 }

}