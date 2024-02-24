import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../presenter/gen/assets.gen.dart';

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
      appBar: AppBar(
        title: Text("WOW"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            InkWell(
              onTap: () => context.router.pop(),
              child: Hero(
                tag: 'post0',
                child: Image(
                image: Assets.images.postExample1.provider(),
                width: MediaQuery.of(context).size.width,
                ),
              ),
            )
          ],
        )
      ),
    );
  }
}
