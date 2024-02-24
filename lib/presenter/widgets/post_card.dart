import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gig_today_1/presenter/navigation/navigation.dart';

import '../gen/assets.gen.dart';

class Post extends StatelessWidget {
  const Post({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Stack(children: [
        PostCard(),
        AtButton(),
        Positioned(
            bottom: 40,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Text(
                  "hi",
                  style: TextStyle(color: Colors.white),
                );
              }
            ))
      ]),
    );
  }
}

class AtButton extends StatelessWidget {
  const AtButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: -5,
        child: ElevatedButton(
            onPressed: () => {},
            style: ButtonStyle(
              minimumSize: MaterialStateProperty.all(Size(20, 30)),
              padding: MaterialStateProperty.all(
                  EdgeInsets.symmetric(vertical: 10, horizontal: 10)),
              backgroundColor:
                  MaterialStateProperty.all(Colors.black.withOpacity(0.7)),
            ),
            child: Text(
              "@ Club FF",
              style: TextStyle(color: Colors.white),
            )));
  }
}

class PostCard extends StatelessWidget {
  const PostCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: InkWell(
        onTap: () => context.router.push(const SplashRoute()),
        child: Image(
          image: Assets.images.postExample1.provider(),
          width: 200,
          height: 280,
        ),
      ),
    );
  }
}
