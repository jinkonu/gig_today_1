import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gig_today_1/presenter/widgets/post_card.dart';
import 'package:lazy_load_scrollview/lazy_load_scrollview.dart';

class GigTodaySection extends StatefulWidget {
  const GigTodaySection({super.key});

  @override
  State<GigTodaySection> createState() => _GigTodaySectionState();
}

class _GigTodaySectionState extends State<GigTodaySection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 30,),
        Text("GIG TODAY",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,),),
        SizedBox(height: 20,),
        Container(
          height: 290,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return PostCard();
            },
          ),
        ),
      ],
    );
  }
}
