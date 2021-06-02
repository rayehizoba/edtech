import 'package:flutter/material.dart';

class SpaceY extends StatelessWidget {
  SpaceY({
    @required this.size,
    @required this.children,
    this.mainAxisAlignment = MainAxisAlignment.center,
    this.crossAxisAlignment: CrossAxisAlignment.start,
  });

  final double size;

  final List<Widget> children;

  final MainAxisAlignment mainAxisAlignment;

  final CrossAxisAlignment crossAxisAlignment;

  @override
  Widget build(BuildContext context) {
    Widget spacer = Container(height: this.size);

    List<Widget> children = [];

    // pad children with spacer
    for (var i = 0; i < this.children.length; i++) {
      var child = this.children[i];
      if (i == 0) {
        children.add(child);
      } else {
        children.addAll([spacer, child]);
      }
    }

    return Column(
      children: children,
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: crossAxisAlignment,
    );
  }
}
