import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gig_today_1/pages/gig/sections/profile.dart';
import 'package:gig_today_1/pages/gig/sections/thumbnail.dart';

@RoutePage()
class GigPage extends StatefulWidget {
  const GigPage({super.key});

  @override
  State<GigPage> createState() => _GigPageState();
}

class _GigPageState extends State<GigPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: NestedScrollView(
        headerSliverBuilder: (_, innerBoxIsScrolled) => [
          SliverAppBar(
            backgroundColor: Colors.black12,
            pinned: true,
            title: Text("MyAuntMary", style: TextStyle(color: Colors.white),),
          )
        ],
        body: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            GigThumbnail(),
            SizedBox(height: 20,),
            GigProfile(),
          ],
        ),
      ),
    );
  }
}