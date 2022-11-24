import 'package:flutter/material.dart';

import 'breakpoints.dart';

class ResponsiveValue {
  /// Get value based on device width.
  static T on<T>(
    BuildContext context, {
    required T sm,
    T? md,
    T? lg,
    T? xl,
    T? doubleXl,
  }) {
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
