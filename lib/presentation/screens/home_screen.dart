import 'package:flutter/material.dart';
import 'package:module_12_assignment_on_responsive_design/presentation/utils/color_utils.dart';
import 'package:module_12_assignment_on_responsive_design/presentation/widgets/scaffolds/desktop_screen_scaffold.dart';
import 'package:module_12_assignment_on_responsive_design/presentation/widgets/scaffolds/mobile_screen_scaffold.dart';
import 'package:module_12_assignment_on_responsive_design/presentation/widgets/responsive_builder.dart';
import 'package:module_12_assignment_on_responsive_design/presentation/widgets/scaffolds/tablet_screen_scaffold.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      mobile: MobileScreenScaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _headlineText(
                padding: const EdgeInsets.all(0),
                textAlign: TextAlign.center,
              ),
              _paragraphText(
                padding: const EdgeInsets.all(8.0),
                textAlign: TextAlign.center,
              ),
              _joinCourseButton(
                padding: const EdgeInsets.all(48.0),
                fixedSize: const Size(320, double.nan),
              ),
            ],
          ),
        ),
      ),
      tablet: TabletScreenScaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _headlineText(
                padding: const EdgeInsets.all(0),
                textAlign: TextAlign.center,
              ),
              _paragraphText(
                padding: const EdgeInsets.all(8.0),
                textAlign: TextAlign.center,
              ),
              _joinCourseButton(
                padding: const EdgeInsets.all(64.0),
              ),
            ],
          ),
        ),
      ),
      desktop: DesktopScreenScaffold(
        body: Center(
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Flexible(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _headlineText(
                      padding: const EdgeInsets.all(0),
                    ),
                    _paragraphText(
                      padding: const EdgeInsets.only(left: 40, top: 16),
                    ),
                  ],
                ),
              ),
              Flexible(
                child: Center(
                  child: _joinCourseButton(
                    padding: const EdgeInsets.all(0),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget _headlineText({
  required EdgeInsetsGeometry padding,
  TextAlign? textAlign,
}) {
  return Padding(
    padding: padding,
    child: Text(
      'FLUTTER WEB. \nTHE BASICS',
      textAlign: textAlign,
      style: const TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.w900,
      ),
    ),
  );
}

Widget _paragraphText({
  required EdgeInsetsGeometry padding,
  TextAlign? textAlign,
}) {
  return Padding(
    padding: padding,
    child: Text(
      'In this course we will go over the basics of using \nFlutter Web for development. Topics will include \nResponsive Layout, Deploying, Font Changes, \nHover functionality, Modals and more.',
      textAlign: textAlign,
      style: const TextStyle(height: 2),
    ),
  );
}

Widget _joinCourseButton({
  required EdgeInsetsGeometry padding,
  Size? fixedSize,
}) {
  return Padding(
    padding: padding,
    child: ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        fixedSize: fixedSize,
        backgroundColor: ColorUtils.primaryColor,
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
      ),
      child: const Text(
        'Join course',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
    ),
  );
}
