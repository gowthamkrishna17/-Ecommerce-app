import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 5),
        padding: EdgeInsets.all(8),
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) => Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            height: 90,
            width: double.infinity,
            decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.lightBlueAccent),
                borderRadius: BorderRadius.circular(10)),
            child: ListTile(
              title: Text('Order placed'),
              subtitle: Text("your order has been listed"),
            ),
          ),
        ),
      ),
    );
  }
}
