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
        leading: GestureDetector(
          onTap: () => Navigator.of(context).pop(),
          child: Icon(Icons.arrow_back_ios),
        ),
        title: Text("Withdrawals"),
      ),
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                height: 170,
                width: 170,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(secondaryColor),
                ),
                alignment: Alignment.center,
                child: Icon(Icons.check, color: Color(primaryColor), size: 100),
              ),
            ),
          ),
          Text(
            "Successful",
            style: TextStyle(
              color: Color(secondaryColor),
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text("Payment Details", style: TextStyle(fontSize: 26)),
          SizedBox(height: 10),
          Expanded(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 18,
                  horizontal: 50.0,
                ),
                child: GridView.count(
                  crossAxisCount: 2,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 10,
                  children:
                      [
                            ["Amount", "\$10.0"],
                            ["Payment Status", "Successful"],
                            ["Date", "12/12/2024"],
                            ["", "Kabir Baffa"],
                          ]
                          .map(
                            (val) => Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  val[0],
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 10,
                                  ),
                                ),
                                Text(
                                  val[1],
                                  style: TextStyle(
                                    color: Color(secondaryColor),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          )
                          .toList(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
