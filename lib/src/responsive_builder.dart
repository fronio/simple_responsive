import 'package:flutter/material.dart';

import 'breakpoints.dart';

/// Show widget based on device width.
class ResponsiveBuilder extends StatelessWidget {
  const ResponsiveBuilder({
    Key? key,
    required this.sm,
    this.md,
    this.lg,
    this.xl,
    this.doubleXl,
  }) : super(key: key);

  final Widget sm;
  final Widget? md;
  final Widget? lg;
  final Widget? xl;
  final Widget? doubleXl;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final deviceSize = mediaQuery.size.width;

    if (deviceSize >= Breakpoints.doubleXl) {
      return doubleXl ?? xl ?? lg ?? md ?? sm;
    }

    if (deviceSize >= Breakpoints.xl) {
      return xl ?? lg ?? md ?? sm;
    }

    if (deviceSize >= Breakpoints.lg) {
      return lg ?? md ?? sm;
    }

    if (deviceSize >= Breakpoints.md) {
      return md ?? sm;
    }

    return sm;
  }
}
