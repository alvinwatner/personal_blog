import 'package:flutter/material.dart';
import 'package:personal_blog/shared/responsive/screen_dimensions.dart';

double responsiveValue(
  BuildContext context, {
  double tabletBreakpoint = largeTablet,
  double mobileBreakpoint = largeHandset,
  required double desktop,
  required double tablet,
  required double mobile,
}) {
  final double windowSize = MediaQuery.of(context).size.width;
  if (windowSize > tabletBreakpoint) {
    return desktop;
  } else if (windowSize > mobileBreakpoint && windowSize < tabletBreakpoint) {
    return tablet;
  } else {
    return mobile;
  }
}

TextStyle? responsiveTextStyle(
  BuildContext context, {
  required TextStyle? desktop,
  required TextStyle? tablet,
  required TextStyle? mobile,
}) {
  final double windowSize = MediaQuery.of(context).size.width;
  if (windowSize > largeTablet) {
    return desktop;
  } else if (windowSize > largeHandset && windowSize < largeTablet) {
    return tablet;
  } else {
    return mobile;
  }
}
