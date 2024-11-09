import 'package:flutter/material.dart';

class SettingRow extends StatelessWidget {
  final String name;
  const SettingRow({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: Container(
            margin: EdgeInsets.only(left: 25, right: 25),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(25)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.arrow_right_outlined,
                    color: Colors.white,
                    size: 35,
                  )
                ],
              ),
            ),
          ),
        ),
        Icon(
          Icons.arrow_forward_ios_outlined,
          color: Colors.white,
        )
      ],
    );
  }
}
