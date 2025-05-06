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
        leading: GestureDetector(
          onTap: () => Navigator.of(context).pop(),
          child: Icon(Icons.arrow_back_ios),
        ),
        elevation: 0,
        title: Text("Withdrawals"),
      ),
      body: Scaffold(
        backgroundColor: Color(primaryColor),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Recent Withdrawals", style: TextStyle(fontSize: 18)),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: List.generate(
                    10,
                    (index) => Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        height: 80,
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Color(lightSecondaryColor),
                          borderRadius: BorderRadius.circular(14),
                        ),

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                            Text(
                              "05:34:45",
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text(
                              "\$10.00",
                              style: TextStyle(color: Color(secondaryColor)),
                            ),
                          ],
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
