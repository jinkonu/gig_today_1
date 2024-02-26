import 'package:flutter/material.dart';

class GigTicket extends StatelessWidget {
  const GigTicket({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Ticket", style: TextStyle(color: Colors.white, fontSize: 25),),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("30,000 ₩", style: TextStyle(color: Colors.white, fontSize: 20),),
          ),
        ],
      ),
    );
  }
}
