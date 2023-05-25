import 'package:demo_app/pages/user_list/user_list_screen.dart';
import 'package:demo_app/widgets/full_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'components/confirm_data.dart';
import 'components/register.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  final List<Widget> _widgetOptions = <Widget>[
    const Register(),
    const ConfirmData(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: selectedIndex == 0
            ? null
            : IconButton(
                onPressed: () {
                  setState(() {
                    selectedIndex = 0;
                  });
                },
                icon: const Icon(Icons.arrow_back),
              ),
        title: const Text("Home"),
        actions: [
          IconButton(
            onPressed: _onGoToUserList,
            icon: const Icon(Icons.people),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: _widgetOptions.elementAt(selectedIndex),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FullButton(
              text: 'Next',
              onPressed: _onNext,
            ),
          ),
        ],
      ),
    );
  }

  void _onNext() {
    setState(() {
      selectedIndex = 1;
    });
  }

  void _onGoToUserList() {
    Get.to(() => const UserListScreen());
  }
}
