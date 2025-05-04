import 'package:flutter/material.dart';
import 'package:foodi_chefs/core/constants/colors.dart';

class WidthrawalLoadingPage extends StatelessWidget {
  const WidthrawalLoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(secondaryColor),
      body: Column(
        children: [
          Padding(padding: const EdgeInsets.all(18.0), child: Text("Yum X")),
          Expanded(
            child: Center(
              child: Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                  color: Color(secondaryColor).withOpacity(0.3),
                  borderRadius: BorderRadius.circular(150),
                ),
                child: Container(
                  height: 250,
                  width: 250,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(125),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.check_circle,
                      color: Color(secondaryColor),
                      size: 100,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
