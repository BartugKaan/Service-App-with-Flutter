import 'package:flutter/material.dart';
import 'package:service_app/widgets/old_service.dart';
import 'package:service_app/widgets/service_row_widget.dart';

class Order extends StatefulWidget {
  const Order({super.key});

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.only(top: 60),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.only(right: 10, left: 10),
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Color.fromARGB(255, 225, 232, 235),
                    Color.fromARGB(255, 197, 227, 244),
                  ], begin: Alignment.topRight, end: Alignment.bottomLeft),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      "Old Services",
                      style: TextStyle(
                          fontSize: 36,
                          color: Color(0xff284a79),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.only(left: 20.0),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search from previous services",
                        hintStyle:
                            TextStyle(color: Colors.black45, fontSize: 16),
                        suffixIcon:
                            Icon(Icons.search, color: Color(0xff284a79)),
                        contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            OldServiceRow(
                serviceImage: "images/laundry.png",
                serviceScore: "4",
                serviceProvider: "by Laundry co.",
                servicePrice: "\$15/Hour",
                serviceName: "Laundry")
          ],
        ),
      ),
    );
  }
}
