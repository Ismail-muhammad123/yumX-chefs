import 'package:flutter/material.dart';
import 'package:foodi_chefs/core/constants/colors.dart';
import 'package:foodi_chefs/core/widgets/form_field.dart';
import 'package:foodi_chefs/core/widgets/primary_button.dart';
import 'package:foodi_chefs/features/screens/withdrawals/widthrawal_loading_page.dart';

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
      backgroundColor: Color(primaryColor),
      appBar: AppBar(
        backgroundColor: Color(primaryColor),
        surfaceTintColor: Color(primaryColor),
        elevation: 0,
        leading: GestureDetector(
          onTap: () => Navigator.of(context).pop(),
          child: Icon(Icons.arrow_back_ios),
        ),
        title: Text("Withdrawal"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
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
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: PrimaryButton(
        label: "Proceed",
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => WidthrawalLoadingPage()),
          );
        },
      ),
    );
  }
}
