import 'package:flutter/material.dart';

class EmptyScreen extends StatelessWidget {
  static MaterialPage page() {
    return const MaterialPage(
      name: 'empty',
      key: ValueKey('empty'),
      child: EmptyScreen(),
    );
  }

  const EmptyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).backgroundColor,
    );
  }
}
