import 'package:demo_app/pages/home/controller/home_controller.dart';
import 'package:demo_app/widgets/textformfield_normal.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            const SizedBox(height: 8),
            TextFormFieldNormal(
              labelText: 'Name',
              hintText: 'Name',
              onChanged: (value) {
                HomeController().setName(value);
              },
            ),
            const SizedBox(height: 8),
            TextFormFieldNormal(
              labelText: 'Email',
              hintText: 'Email',
              onChanged: (value) {
                HomeController().setEmail(value);
              },
            ),
            const SizedBox(height: 8),
            TextFormFieldNormal(
              labelText: 'Address',
              hintText: 'Address',
              onChanged: (value) {
                HomeController().setAddress(value);
              },
            ),
            const SizedBox(height: 8),
            TextFormFieldNormal(
              labelText: 'Phone',
              hintText: 'Phone',
              onChanged: (value) {
                HomeController().setPhone(value);
              },
            ),
            const SizedBox(height: 8),
            TextFormFieldNormal(
              labelText: 'Gender',
              hintText: 'Gender',
              onChanged: (value) {
                HomeController().setGender(value);
              },
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
