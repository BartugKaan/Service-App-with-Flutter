import 'package:flutter/material.dart';

class ServiceRow extends StatelessWidget {
  final String serviceImage;
  final String serviceName;
  final String serviceScore;
  final String serviceProvider;
  final String servicePrice;
  const ServiceRow({
    super.key,
    required this.serviceImage,
    required this.serviceScore,
    required this.serviceProvider,
    required this.servicePrice,
    required this.serviceName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
              serviceImage,
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
                    serviceScore,
                    style: TextStyle(
                        color: Color(0xff284a79),
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Text(
                serviceName,
                style: TextStyle(
                    color: Color(0xff284a79),
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                serviceProvider,
                style: TextStyle(color: Color(0xff284a79), fontSize: 14.0),
              ),
              SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 100,
                    padding: EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 94, 172, 202),
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                      child: Text(
                        servicePrice,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    width: 100,
                    padding: EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                        color: Color(0xff284a79),
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                      child: Text(
                        "Book Now",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
