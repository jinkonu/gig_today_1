import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'sections/meta_data.dart';
import 'sections/thumbnail.dart';

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
            leading: IconButton(onPressed: () => context.router.pop(), icon: Icon(Icons.arrow_back_ios_new, color: Colors.white,)),
            backgroundColor: Colors.black.withOpacity(0.01),
            pinned: true,
          )
        ],
        body: ListView(
          padding: EdgeInsets.only(bottom: 200),
          children: <Widget>[
            GigThumbnail(),
            GigMetaData(),
          ],
        ),
      ),
    );
  }
}