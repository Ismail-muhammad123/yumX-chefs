import 'package:flutter/material.dart';

class ReviewsListPage extends StatefulWidget {
  const ReviewsListPage({super.key});

  @override
  State<ReviewsListPage> createState() => _ReviewsListPageState();
}

class _ReviewsListPageState extends State<ReviewsListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Icon(Icons.arrow_back_ios),
        title: Text("Reviews"),
      ),
      body: ListView.builder(
        itemBuilder:
            (context, index) => Row(
              children: [
                CircleAvatar(radius: 10, child: Placeholder()),
                Column(
                  children: [
                    Row(children: [Text("20/12/2024"), Icon(Icons.more_horiz)]),
                    Text("Great Food and Service"),
                    Row(
                      children: List.generate(
                        5,
                        (index) => Icon(Icons.star, color: Colors.yellow),
                      ),
                    ),
                    Text(
                      "This Food so tasty & delicious. Breakfast so fast Delivered in my place. Chef is very friendly. I'm really like chef for Home Food Order. Thanks. ",
                    ),
                  ],
                ),
              ],
            ),
      ),
    );
  }
}
