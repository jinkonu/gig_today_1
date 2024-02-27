import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gig_today_1/presenter/themes/extensions.dart';
import 'package:gig_today_1/presenter/widgets/gig_poster.dart';

import 'sections/meta_data.dart';

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
      backgroundColor: context.colors.background,
      body: NestedScrollView(
        headerSliverBuilder: (_, innerBoxIsScrolled) => [
          SliverAppBar(
            leading: IconButton(
              onPressed: () => context.router.pop(),
              icon: Icon(
                Icons.arrow_back_ios_new,
                color: context.colors.text,
              ),
            ),
            backgroundColor: context.colors.background.withOpacity(0.01),
            pinned: true,
          )
        ],
        body: ListView(
          padding: const EdgeInsets.only(bottom: 200),
          children: <Widget>[
            GigPoster(
              onTap: () => context.router.pop(),
              tag: '0',
              circularRadius: 0,
              width: MediaQuery.of(context).size.width,
            ),
            GigMetaData(),
          ],
        ),
      ),
    );
  }
}
