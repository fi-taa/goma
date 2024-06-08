import 'package:flutter/material.dart';
import '../../../../utils/helpers/helper_functions.dart';
import 'widgets/login_form.dart';
import 'widgets/login_header.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(30.0), 
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TLoginHeader(dark: dark),

                TLoginForm(dark: dark)
              ],
            )),
      ),
    );
  }
}
