import 'package:flutter/material.dart';

class SpaceX extends StatelessWidget {
  SpaceX({
    @required this.size,
    @required this.children,
    this.mainAxisAlignment = MainAxisAlignment.center
  });

  final double size;

  final List<Widget> children;

  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {

    Widget spacer = Container(width: size);

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

    return Row(
      children: children,
      mainAxisAlignment: mainAxisAlignment,
    );
  }
}
