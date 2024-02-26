import 'package:flutter/material.dart';

class GigEtc extends StatelessWidget {
  const GigEtc({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Notice",
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Text(
                "조심하세요.\n조심하십쇼.",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
