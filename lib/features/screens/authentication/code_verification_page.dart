import 'dart:async';
import 'package:flutter/material.dart';
import 'package:foodi_chefs/core/widgets/code_verification_field.dart';
import 'package:foodi_chefs/core/widgets/form_page.dart';
import 'package:foodi_chefs/core/widgets/primary_button.dart';
import 'package:foodi_chefs/features/screens/authentication/success_page.dart';

class CodeVerificationPage extends StatefulWidget {
  final String email;
  const CodeVerificationPage({super.key, required this.email});

  @override
  State<CodeVerificationPage> createState() => _CodeVerificationPageState();
}

class _CodeVerificationPageState extends State<CodeVerificationPage> {
  DateTime? _resendIn;

  _resendCode() {
    // TODO: implement resend code logic
  }

  _startCountdown() async {
    Timer.periodic(Duration(seconds: 1), (t) {
      if (t.tick < 60) {
        if (mounted) {
          setState(() {
            resendIn = 60 - t.tick;
          });
        }
      } else {
        t.cancel();
        if (mounted) {
          setState(() {
            resendIn = null;
          });
        }
      }
    });
  }

  int? resendIn;

  @override
  void initState() {
    _startCountdown();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _resendIn = DateTime.now().add(Duration(minutes: 1));
    return FormPage(
      title: "Verification",
      subtitle: "Please enter the code sent to your email - ${widget.email}",
      form: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Text("Code"),
              const SizedBox(width: 10),
              Text(
                "Resend in",
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 12,
                ),
              ),
              Builder(
                builder: (context) {
                  return GestureDetector(
                    onTap: resendIn == null ? () => _startCountdown() : null,
                    child: Text(
                      resendIn == null ? "" : "$resendIn sec",
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 12,
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
          const SizedBox(height: 10),

          VerificationCodeForm(),
          const SizedBox(height: 20),
          PrimaryButton(
            label: "Verify",
            onPressed: () {
              // TODO: inplement code submition function
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => VerificationSuccessPage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
