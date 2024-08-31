import 'package:flutter/material.dart';

class DesktopScreenScaffold extends StatelessWidget {
  const DesktopScreenScaffold({super.key, required this.body});

  final Widget body;

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 16.0),
                child: Text('HUMMING \nBIRD.'),
              ),
              const Spacer(),
              TextButton(
                onPressed: () {},
                child: const Text('Episodes'),
              ),
              TextButton(
                onPressed: () {},
                child: const Text('About'),
              ),
              const Padding(padding: EdgeInsets.only(right: 16)),
            ],
          ),
        ),
        body: body,
      );
  }
}
