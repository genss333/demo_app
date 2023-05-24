import 'package:demo_app/pages/home/controller/home_controller.dart';
import 'package:flutter/material.dart';

class ConfirmData extends StatefulWidget {
  const ConfirmData({super.key});

  @override
  State<ConfirmData> createState() => _ConfirmDataState();
}

class _ConfirmDataState extends State<ConfirmData> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Text(HomeController().name),
          const SizedBox(height: 8),
          Text(HomeController().email),
          const SizedBox(height: 8),
          Text(HomeController().address),
          const SizedBox(height: 8),
          Text(HomeController().phone),
          const SizedBox(height: 8),
          Text(HomeController().gender),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}
