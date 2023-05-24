import 'package:demo_app/pages/home/model/home_view_model.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  factory HomeController() => _instance;
  HomeController._internal();
  static final HomeController _instance = HomeController._internal();

  final HomeViewModel _model = HomeViewModel();
  HomeViewModel get model => _model;

  String get name => model.name;
  void setName(String name) {
    model.setName(name);
  }

  String get email => model.email;
  void setEmail(String email) {
    model.setEmail(email);
  }

  String get address => model.address;
  void setAddress(String address) {
    model.setAddress(address);
  }

  String get phone => model.phone;
  void setPhone(String phone) {
    model.setPhone(phone);
  }

  String get gender => model.gender;
  void setGender(String gender) {
    model.setGender(gender);
  }
}
