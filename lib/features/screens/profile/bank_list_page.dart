import 'package:flutter/material.dart';
import 'package:foodi_chefs/core/constants/colors.dart';

class BankInfoForm extends StatefulWidget {
  const BankInfoForm({super.key});

  @override
  State<BankInfoForm> createState() => _BankInfoFormState();
}

class _BankInfoFormState extends State<BankInfoForm> {
  List<Map<String, dynamic>> _banks = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Icon(Icons.arrow_back_ios, color: Color(secondaryColor)),
        title: Text("Bank Information"),
      ),
      body: ListView.builder(
        itemBuilder:
            (context, index) => ListTile(
              leading: CircleAvatar(
                radius: 15,
                child: Image.network(_banks[index]['logoUrl']),
              ),
              title: _banks[index]['title'],
              onTap: () => Navigator.of(context).pop(_banks[index]),
            ),
      ),
    );
  }
}
