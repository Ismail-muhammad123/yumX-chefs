import 'package:flutter/material.dart';
import 'package:foodi_chefs/core/services/auth/auth_service.dart';
import 'package:foodi_chefs/core/widgets/form_field.dart';
import 'package:foodi_chefs/core/widgets/form_page.dart';
import '../../../core/widgets/primary_button.dart';
import '../../../core/di/service_locator.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final nameContoroller = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final password2Controller = TextEditingController();
  final authService = sl<AuthService>();
  bool showPassword = false;
  bool rememberMe = false;

  void _signUp() async {
    final name = nameContoroller.text;
    final email = emailController.text;
    final password = passwordController.text;
    final password2 = password2Controller.text;

    // check if all fields are provided
    if (name.isEmpty ||
        email.isEmpty ||
        password.isEmpty ||
        password2.isEmpty) {
      // TODO show error message
      return;
    }
    // check if email is valid
    final emailRegex = RegExp(
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
    );
    if (!emailRegex.hasMatch(email)) {
      // TODO show error message
      return;
    }

    if (password != password2) {
      // TODO show error message
      return;
    }
    // final success = await authService.signup(name, email, password);
    // TODO handle signup
  }

  @override
  Widget build(BuildContext context) {
    return FormPage(
      showBackButton: true,
      title: "Sign Up",
      subtitle: "Please sign up to get started",
      form: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Name"),
            const SizedBox(height: 10),
            CustomFormField(label: "Name", fieldController: nameContoroller),
            const SizedBox(height: 20),

            Text("Email"),
            const SizedBox(height: 10),
            CustomFormField(label: "Email", fieldController: emailController),
            const SizedBox(height: 20),

            Text("Password"),
            const SizedBox(height: 10),
            CustomFormField(
              label: "Password",
              fieldController: password2Controller,
              isPassword: true,
            ),
            const SizedBox(height: 20),

            Text("Confirm Password"),
            const SizedBox(height: 10),
            CustomFormField(
              label: "Confirm Password",
              fieldController: password2Controller,
              isPassword: true,
            ),

            const SizedBox(height: 20),
            Center(child: PrimaryButton(label: 'Sign Up', onPressed: _signUp)),
            SizedBox(height: 10),

            Center(child: Text("Or")),
            SizedBox(height: 10),
            Center(
              child: GestureDetector(
                onTap: () => Navigator.of(context).pop(),
                child: const Text(
                  "Sign In instead",
                  style: TextStyle(
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
