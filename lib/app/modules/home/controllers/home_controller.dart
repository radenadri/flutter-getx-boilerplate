import 'package:flutter_getx_template/app/common/storage/storage.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var count = 0.obs;

  void increment() {
    count++;
    update();
  }

  void onLogoutClick() {
    Storage.clearStorage();
  }
}
