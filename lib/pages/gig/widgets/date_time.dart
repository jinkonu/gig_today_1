import 'package:flutter/material.dart';

class GigDateTime extends StatelessWidget {
  const GigDateTime({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 182,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Date",
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "2024. 2. 26. MON",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Text(
              "Time",
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "6PM ~ 9PM",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
