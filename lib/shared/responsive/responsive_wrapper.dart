import 'package:flutter/material.dart';
import 'package:alvinwatner/shared/responsive/screen_dimensions.dart';

class ResponsiveBuilder extends StatelessWidget {
  final Widget mobileBody;
  final Widget desktopBody;
  final Widget? tabletBody;
  final double tabletBreakpoint;
  final double mobileBreakpoint;

  const ResponsiveBuilder({
    super.key,
    this.mobileBreakpoint = largeHandset,
    this.tabletBreakpoint = largeTablet,
    required this.mobileBody,
    required this.desktopBody,
    this.tabletBody,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      // log(constraints.maxWidth.toString());
      if (constraints.maxWidth > tabletBreakpoint) {
        // log("dekstop");
        return desktopBody;
      } else if (constraints.maxWidth > mobileBreakpoint &&
          constraints.maxWidth < tabletBreakpoint &&
          tabletBody != null) {
        // log("tablet");
        return tabletBody!;
      } else {
        // log("mobile");
        return mobileBody;
      }
    });
  }
}
