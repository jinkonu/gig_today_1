import 'package:flutter/material.dart';

class AppExpandableSliverAppBar extends SliverAppBar {
  static const BorderRadius _borderRadius = BorderRadius.vertical(bottom: Radius.circular(30));

  AppExpandableSliverAppBar({
    super.floating = true,
    super.pinned = true,
    super.primary = true,
    super.shape = const RoundedRectangleBorder(borderRadius: _borderRadius),
    super.actions,
    super.automaticallyImplyLeading,
    super.backgroundColor,
    super.bottom,
    super.centerTitle,
    super.collapsedHeight,
    super.elevation,
    super.excludeHeaderSemantics,
    super.iconTheme,
    super.actionsIconTheme,
    super.forceElevated,
    super.key,
    super.leading,
    super.shadowColor,
    super.snap,
    super.stretch,
    super.toolbarHeight,
    super.toolbarTextStyle,
    super.clipBehavior,
    super.forceMaterialTransparency,
    super.foregroundColor,
    super.leadingWidth,
    super.onStretchTrigger,
    super.scrolledUnderElevation,
    super.stretchTriggerOffset,
    super.surfaceTintColor,
    super.systemOverlayStyle,
    Widget title = const SizedBox.shrink(),
    PreferredSizeWidget? background,
  }) : super(
    expandedHeight: background?.preferredSize.height,
    flexibleSpace: FlexibleSpaceBar(
      collapseMode: CollapseMode.pin,
      title: title,
      titlePadding: const EdgeInsets.symmetric(vertical: 16),
      background: ClipRRect(
        borderRadius: _borderRadius,
        child: background,
      ),
    ),
  );
}