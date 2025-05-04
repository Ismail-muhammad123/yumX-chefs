import 'package:flutter/material.dart';
import 'package:foodi_chefs/core/services/auth/auth_service.dart';
import 'package:foodi_chefs/core/widgets/form_field.dart';
import 'package:foodi_chefs/core/widgets/form_page.dart';
import 'package:foodi_chefs/features/screens/home/home.dart';
import '../../../core/widgets/primary_button.dart';
import '../../../core/di/service_locator.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final authService = sl<AuthService>();
  bool showPassword = false;
  bool rememberMe = false;

  void _login() async {
    final email = emailController.text;
    final password = passwordController.text;
    final success = await authService.login(email, password);
    if (success && mounted) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const HomeScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return FormPage(
      title: "Sign in",
      subtitle: "Please Sign in to your existing account",
      form: Column(
        children: [
          Text("Email"),
          const SizedBox(height: 10),
          CustomFormField(label: "Email", fieldController: emailController),
          const SizedBox(height: 20),

          Text("Password"),
          const SizedBox(height: 10),
          CustomFormField(
            label: "Password",
            fieldController: passwordController,
            isPassword: true,
          ),
          const SizedBox(height: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Checkbox(
                value: rememberMe,
                onChanged: (val) => rememberMe = val as bool,
              ),
              const Text("Remember me"),
              Spacer(),
              GestureDetector(
                onTap: () {
                  // TODO: Handle forgot password
                },
                child: const Text("Forgot Password"),
              ),
            ],
          ),
          PrimaryButton(label: 'Login', onPressed: _login),
        ],
      ),
    );
  }
}
