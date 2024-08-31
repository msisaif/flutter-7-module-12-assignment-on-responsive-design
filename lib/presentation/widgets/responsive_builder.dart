import 'package:flutter/material.dart';
import 'package:module_12_assignment_on_responsive_design/presentation/utils/screen_utils.dart';

class ResponsiveBuilder extends StatelessWidget {
  const ResponsiveBuilder({
    super.key,
    required this.mobile,
    required this.desktop,
    this.tablet,
  });

  final Widget mobile;
  final Widget? tablet;
  final Widget desktop;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final DeviceType deviceType = ScreenUtils.getDeviceType(size.width);

    if(deviceType == DeviceType.mobile) {
      return mobile;
    }

    if(deviceType == DeviceType.desktop) {
      return desktop;
    }

    return tablet ?? mobile;
  }
}
