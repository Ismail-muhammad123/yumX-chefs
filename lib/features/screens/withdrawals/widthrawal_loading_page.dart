import 'dart:async';

import 'package:flutter/material.dart';
import 'package:foodi_chefs/core/constants/colors.dart';
import 'package:foodi_chefs/features/screens/withdrawals/withdrawal_success_page.dart';

class WidthrawalLoadingPage extends StatefulWidget {
  const WidthrawalLoadingPage({super.key});

  @override
  State<WidthrawalLoadingPage> createState() => _WidthrawalLoadingPageState();
}

class _WidthrawalLoadingPageState extends State<WidthrawalLoadingPage> {
  @override
  void initState() {
    Timer(
      Duration(seconds: 2),
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => WithdrawalSuccessPage()),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(secondaryColor),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(
                "Yum X",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color(primaryColor),
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(33, 216, 216, 216),
                    borderRadius: BorderRadius.circular(150),
                  ),
                  child: Center(
                    child: Container(
                      height: 250,
                      width: 250,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Icon(
                          Icons.check,
                          color: Color(secondaryColor),
                          size: 120,
                        ),
                      ),
                    ),
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
