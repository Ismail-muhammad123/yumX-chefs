import 'package:flutter/material.dart';
import 'package:foodi_chefs/core/constants/colors.dart';

class WithdrawalsHistory extends StatefulWidget {
  const WithdrawalsHistory({super.key});

  @override
  State<WithdrawalsHistory> createState() => _WithdrawalsHistoryState();
}

class _WithdrawalsHistoryState extends State<WithdrawalsHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        elevation: 0,
        title: Text("Withdrawals"),
      ),
      body: Column(
        children: [
          Text("Recent Withdrawals"),
          Expanded(
            child: Column(
              children: [
                Card(
                  elevation: 4.0,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Text("bank Withdrawal"),
                          Text(
                            "20th December, 2024",
                            style: TextStyle(
                              color: Color(secondaryColor),
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      Text("05:34:45", style: TextStyle(color: Colors.grey)),
                      Text(
                        "\$10.00",
                        style: TextStyle(color: Color(secondaryColor)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
