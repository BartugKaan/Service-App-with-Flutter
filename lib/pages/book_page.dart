import 'package:flutter/material.dart';

class BookPage extends StatefulWidget {
  const BookPage({super.key});

  @override
  State<BookPage> createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> {
  final List<String> imagePaths = [
    'images/cleaning.png',
    'images/cleaning1.png',
    'images/cleaning2.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 60.0, left: 20.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Color(0xff284a79),
                    borderRadius: BorderRadius.circular(10)),
                child: Icon(Icons.arrow_back_ios_new_outlined,
                    color: Colors.white),
              ),
            ),
            SizedBox(height: 20.0),
            Container(
              padding: EdgeInsets.only(left: 10.0, top: 10.0, right: 10),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Color.fromARGB(255, 225, 232, 235),
                    Color.fromARGB(255, 197, 227, 244),
                  ], begin: Alignment.topRight, end: Alignment.bottomLeft),
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Home Cleaning",
                            style: TextStyle(
                                color: Color(0xff284a79),
                                fontSize: 22.0,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "by Home Services",
                            style: TextStyle(
                                color: Color(0xff284a79), fontSize: 14.0),
                          ),
                        ],
                      ),
                      SizedBox(width: 50),
                      Container(
                        padding: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(10)),
                        child: Text(
                          "\$24/Hour",
                          style: TextStyle(
                              color: Color(0xff284a79),
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    height: 180,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: imagePaths.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              imagePaths[index],
                              height: 180,
                              width: 150,
                              fit: BoxFit.cover,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 5)
                ],
              ),
            ),
            Text(
              "Keeping your home clean is now easier than ever! Our Home Cleaning Service offers professional assistance to thoroughly clean every corner of your home. With our hygienic and detailed cleaning methods, we pay attention to every detail. From dusting and floor cleaning to windows and more challenging areas like kitchens and bathrooms, we cover all your cleaning needs. With flexible hours and affordable rates, we’re here to help you maintain a comfortable and healthy environment at home.",
              style: TextStyle(
                  color: Color(0xff284a79),
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Material(
                      elevation: 3.0,
                      borderRadius: BorderRadius.circular(15),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.alarm_outlined,
                              color: Colors.black,
                              size: 25.0,
                            ),
                            SizedBox(width: 10),
                            Text(
                              "10:00 PM",
                              style: TextStyle(
                                  color: Color(0xff284a79),
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                  ],
                ),
                Row(
                  children: [
                    Material(
                      elevation: 3.0,
                      borderRadius: BorderRadius.circular(15),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.calendar_month_outlined,
                              color: Colors.black,
                              size: 25.0,
                            ),
                            SizedBox(width: 10),
                            Text(
                              "06.11.2024",
                              style: TextStyle(
                                  color: Color(0xff284a79),
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                  ],
                )
              ],
            ),
            SizedBox(height: 10),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              decoration: BoxDecoration(
                color: Color(0xff284a79),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  "Hire Now",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
