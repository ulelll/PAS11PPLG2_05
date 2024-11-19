import 'package:pas1_mobile_11pplg2_05/controllers/dashboard_controller.dart';
import 'package:get/get.dart';


class MyBindings extends  Bindings{
  @override 
  void dependencies(){
    Get.lazyPut(() => DashboardController());
  }
}