import 'package:flutter/material.dart';
import 'package:service_app/widgets/service_widget.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color.fromARGB(255, 225, 232, 235),
                  Color.fromARGB(255, 197, 227, 244),
                ], begin: Alignment.topRight, end: Alignment.bottomLeft),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Hello, Bartuğ",
                        style: TextStyle(
                            color: Colors.orange,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(60),
                        child: Image.asset(
                          "images/profileImage.jpeg",
                          height: 50,
                          width: 50,
                          fit: BoxFit.cover,
                        ),
                      )
                    ],
                  ),
                  Text(
                    "Which service do\nyou need?",
                    style: TextStyle(
                        color: Color(0xff284a79),
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 20.0),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "How can we help you?",
                        hintStyle: TextStyle(color: Colors.black45),
                        suffixIcon:
                            Icon(Icons.search, color: Color(0xff284a79)),
                        contentPadding: EdgeInsets.symmetric(vertical: 10.0),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ServiceWidget(
                            iconName: Icons.cleaning_services_rounded,
                            serviceName: 'Cleaning'),
                        ServiceWidget(
                            iconName: Icons.local_laundry_service_rounded,
                            serviceName: 'Laundry'),
                        ServiceWidget(
                            iconName: Icons.format_paint_rounded,
                            serviceName: "Painting"),
                        ServiceWidget(
                            iconName: Icons.home_repair_service_rounded,
                            serviceName: "Reparing")
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 20.0),
              child: Text(
                "Popular Services",
                style: TextStyle(
                    color: Color(0xff284a79),
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20.0),
            Container(
              padding: EdgeInsets.only(left: 10.0, top: 10.0, bottom: 10.0),
              margin: EdgeInsets.only(left: 20.0, right: 20.0),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 197, 227, 244),
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      "images/cleaning.png",
                      width: 90,
                      height: 120,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 10.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.orange,
                          ),
                          SizedBox(width: 5),
                          Text(
                            "4.5",
                            style: TextStyle(
                                color: Color(0xff284a79),
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Text(
                        "Home Cleaning",
                        style: TextStyle(
                            color: Color(0xff284a79),
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "by Home Services",
                        style:
                            TextStyle(color: Color(0xff284a79), fontSize: 14.0),
                      ),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(4.0),
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 130, 127, 127)),
                            child: Text(
                              "\$24/Hour",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 14.0),
                            ),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
