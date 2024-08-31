enum DeviceType {
  mobile,
  tablet,
  desktop,
}

class ScreenUtils {
  static const double mobileScreenMaxSize = 640;
  static const double desktopScreenMinSize = 1008;

  static DeviceType getDeviceType(double width) {
    if(width <= ScreenUtils.mobileScreenMaxSize) {
      return DeviceType.mobile;
    }

    if(width > ScreenUtils.desktopScreenMinSize) {
      return DeviceType.desktop;
    }

    return DeviceType.tablet;
  }
}
