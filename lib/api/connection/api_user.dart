import 'package:demo_app/model/user_model.dart';

class ApiUser {
  static Future<List<UserModel>> getUsers() async {
    // this is a mockup data
    await Future.delayed(const Duration(seconds: 3));
    List<UserModel> users = [
      UserModel(
        id: "1",
        name: 'Nguyễn Văn A',
        email: ' ',
        tel: '0123456789',
        address: 'Hà Nội',
      ),
      UserModel(
        id: "2",
        name: 'Nguyễn Văn B',
        email: ' ',
        tel: '0123456789',
        address: 'Hà Nội',
      ),
      UserModel(
        id: "3",
        name: 'Nguyễn Văn C',
        email: ' ',
        tel: '0123456789',
        address: 'Hà Nội',
      ),
      UserModel(
        id: "4",
        name: 'Nguyễn Văn D',
        email: ' ',
        tel: '0123456789',
        address: 'Hà Nội',
      ),
    ];
    return users;
  }
}
