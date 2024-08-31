import 'package:flutter/material.dart';
import 'package:module_12_assignment_on_responsive_design/presentation/utils/color_utils.dart';

class MobileScreenScaffold extends StatelessWidget {
  const MobileScreenScaffold({super.key, required this.body});

  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            Spacer(),
            Padding(
              padding: EdgeInsets.only(right: 16.0),
              child: Text('HUMMING \nBIRD.'),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: ColorUtils.primaryColor,
              ),
              child: const Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'SKILL UP NOW',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4),
                  Text(
                    'TAP HERE',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.movie_creation_outlined),
              title: const Text('Episodes'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.chat_bubble_outline),
              title: const Text('About'),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: body,
    );
  }
}
