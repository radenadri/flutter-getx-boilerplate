import 'package:flutter_getx_template/app/domain/entities/user.dart';
import 'package:flutter_getx_template/app/domain/repositories/user_interface.dart';

class UserRepository extends IUserRepository {
  @override
  List<User> getUsers() {
    return [
      User(
        id: 1,
        email: 'test@mail.com',
        firstName: 'Test',
        lastName: 'User',
        avatar: 'https://reqres.in/img/faces/1-image.jpg',
      ),
      User(
        id: 2,
        email: 'test@@mail.com',
        firstName: 'Test',
        lastName: 'User Again',
        avatar: 'https://reqres.in/img/faces/2-image.jpg',
      )
    ];
  }
}
