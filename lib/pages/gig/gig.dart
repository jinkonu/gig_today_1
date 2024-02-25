import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../presenter/gen/assets.gen.dart';

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
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              GigCard(),
              SizedBox(height: 20,),
              Container(
                height: 200,
                child: Row(

                ),
              )
            ],
          )
        ),
      ),
    );
  }
}

class GigCard extends StatelessWidget {
  const GigCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.router.pop(),
      child: Hero(
        tag: 'post0',
        child: Image(
        image: Assets.images.postExample1.provider(),
        width: MediaQuery.of(context).size.width,
        ),
      ),
    );
  }
}