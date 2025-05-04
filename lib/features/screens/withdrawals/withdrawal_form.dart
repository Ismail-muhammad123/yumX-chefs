import 'package:flutter/material.dart';
import 'package:foodi_chefs/core/widgets/form_field.dart';
import 'package:foodi_chefs/core/widgets/primary_button.dart';

class WithdrawalForm extends StatefulWidget {
  const WithdrawalForm({super.key});

  @override
  State<WithdrawalForm> createState() => _WithdrawalFormState();
}

class _WithdrawalFormState extends State<WithdrawalForm> {
  final TextEditingController amountController = TextEditingController();
  final TextEditingController passwordCOntroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Icon(Icons.arrow_back_ios),
        title: Text("Withdrawal"),
      ),
      body: Column(
        children: [
          CustomFormField(
            label: "Enter Amount",
            fieldController: amountController,
          ),
          SizedBox(height: 10),
          CustomFormField(
            label: "Enter Password",
            fieldController: passwordCOntroller,
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: PrimaryButton(label: "Proceed", onPressed: () {}),
    );
  }
}
