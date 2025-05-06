import 'package:flutter/material.dart';
import 'package:foodi_chefs/core/constants/colors.dart';
import 'package:foodi_chefs/features/screens/support/help/help_details.dart';

class SupportFaqPage extends StatefulWidget {
  const SupportFaqPage({super.key});

  @override
  State<SupportFaqPage> createState() => _SupportFaqPageState();
}

class _SupportFaqPageState extends State<SupportFaqPage> {
  final List<String> faqs = [
    "What service do you provide?",
    "What time do you open?",
    "What are your charges?",
    "What is Sadnan delivery?",
    "What is your delivery fee?",
    "What time do you open?",
    "What are your charges?",
    "What service do you provide?",
    "What time do you open?",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: CircleAvatar(
          backgroundColor: Color(lightSecondaryColor),
          child: IconButton(
            icon: Icon(Icons.keyboard_arrow_left, color: Color(secondaryColor)),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        title: Text(
          "FAQs",
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
      ),
      backgroundColor: Color(primaryColor),
      body: ListView.separated(
        itemCount: faqs.length,
        separatorBuilder: (_, __) => Divider(height: 1),
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(faqs[index]),
            trailing: Icon(
              Icons.arrow_forward_ios,
              size: 16,
              color: Color(secondaryColor),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => FaqDetailPage()),
              );
            },
          );
        },
      ),
    );
  }
}
