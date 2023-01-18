import 'package:flutter_getx_template/app/common/storage/storage.dart';
import 'package:flutter_getx_template/app/domain/entities/user.dart';
import 'package:flutter_getx_template/app/domain/repositories/user.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final UserRepository _userRepository = UserRepository();

  var count = 0.obs;
  var users = List<User>.empty(growable: true).obs;

  void increment() {
    count++;
    update();
  }

  List<User> getUsers() {
    return _userRepository.getUsers();
  }

  void onLogoutClick() {
    Storage.clearStorage();
  }
}
