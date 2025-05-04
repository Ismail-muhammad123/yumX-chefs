import 'package:flutter/material.dart';
import 'package:foodi_chefs/core/constants/colors.dart';
import 'package:foodi_chefs/core/widgets/form_field.dart';
import 'package:foodi_chefs/core/widgets/primary_button.dart';

class BankInfoForm extends StatefulWidget {
  const BankInfoForm({super.key});

  @override
  State<BankInfoForm> createState() => _BankInfoFormState();
}

class _BankInfoFormState extends State<BankInfoForm> {
  final TextEditingController accountNumberController = TextEditingController();
  final TextEditingController bankNameController = TextEditingController();
  final TextEditingController accountNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Icon(Icons.arrow_back_ios, color: Color(secondaryColor)),
        title: Text("Bank Information"),
      ),
      body: Column(
        children: [
          CustomFormField(
            label: "ACCOUNT NUMBER",
            fieldController: accountNameController,
          ),
          SizedBox(height: 10),
          CustomFormField(
            label: "BANK ACCOUNT",
            fieldController: bankNameController,
          ),
          SizedBox(height: 10),
          CustomFormField(
            label: "ACCOUNT NAME",
            fieldController: accountNameController,
          ),
        ],
      ),
      floatingActionButton: PrimaryButton(
        label: "Submit",
        onPressed: () {
          // TODO: implement submit account info
        },
      ),
    );
  }
}
