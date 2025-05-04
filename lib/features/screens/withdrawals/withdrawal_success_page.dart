import 'package:flutter/material.dart';
import 'package:foodi_chefs/core/constants/colors.dart';

class WithdrawalSuccessPage extends StatefulWidget {
  const WithdrawalSuccessPage({super.key});

  @override
  State<WithdrawalSuccessPage> createState() => _WithdrawalSuccessPageState();
}

class _WithdrawalSuccessPageState extends State<WithdrawalSuccessPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Icon(Icons.arrow_back_ios),
        title: Text("Withdrawals"),
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(secondaryColor),
              ),
              alignment: Alignment.center,
              child: Icon(Icons.check),
            ),
          ),
          Text(
            "Successful",
            style: TextStyle(
              color: Color(secondaryColor),
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text("Payment Details", style: TextStyle(fontSize: 20)),
          SizedBox(height: 10),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              childAspectRatio: 3 / 2,
              children: [
                Column(
                  children: [
                    Text(
                      "Amount",
                      style: TextStyle(color: Colors.grey, fontSize: 10),
                    ),
                    Text(
                      "\$10.00",
                      style: TextStyle(
                        color: Color(secondaryColor),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
