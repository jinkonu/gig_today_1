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
          bottom: 20, // 조절 가능: 아래로부터의 거리
          left: 0, // 조절 가능: 왼쪽으로부터의 거리
          right: 0, // 조절 가능: 오른쪽으로부터의 거리
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ArtistButton(name: "radiohead",),
                ArtistButton(name: "deftones",),
                ArtistButton(name: "gingnang boyz",),
              ],
            ),
          )
        ),
      ]),
    );
  }
}

class ArtistButton extends StatelessWidget {
  final String name;

  const ArtistButton({
    super.key,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () => {},
        style: ButtonStyle(
          minimumSize: MaterialStateProperty.all(Size(20, 30)),
          padding: MaterialStateProperty.all(
              EdgeInsets.symmetric(vertical: 10, horizontal: 10)),
          backgroundColor:
          MaterialStateProperty.all(Colors.black.withOpacity(0.7)),
        ),
        child: Text(
          name,
          style: TextStyle(color: Colors.white),
        ));
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
