import 'package:flutter/material.dart';

class ServiceWidget extends StatelessWidget {
  final IconData iconName;
  final String serviceName;
  const ServiceWidget({
    required this.iconName,
    required this.serviceName,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Container(
            width: 70,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(60),
            ),
            child: Column(
              children: [
                Icon(
                  iconName,
                  color: Colors.orange,
                  size: 48.0,
                ),
              ],
            ),
          ),
        ),
        Text(
          serviceName,
          style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              color: Color(0xff284a79)),
        )
      ],
    );
  }
}
