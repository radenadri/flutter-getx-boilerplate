import 'package:flutter_getx_template/app/domain/entities/user.dart';

abstract class IUserRepository {
  List<User> getUsers();
}
