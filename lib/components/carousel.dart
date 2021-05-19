import 'dart:ui';

import 'package:edtech/components/space_x.dart';
import 'package:edtech/components/space_y.dart';
import 'package:flutter/material.dart';

// Carousel Widget
class Carousel extends StatefulWidget {
  final List<Widget> children;
  final PageController controller;
  final ValueChanged<int> onPageChanged;

  Carousel(
      {Key key, @required this.children, this.controller, this.onPageChanged})
      : super(key: key);

  @override
  _CarouselState createState() => _CarouselState();
}

// Carousel State
class _CarouselState extends State<Carousel> {
  PageController _controller;
  bool _isDelayed = false;

  @override
  void initState() {
    super.initState();
    _controller = widget.controller ?? PageController(initialPage: 0);
    Future.delayed(const Duration(milliseconds: 300), () {
      setState(() {
        _isDelayed = true;
      });
    });
  }

  @override
  Widget build(context) {
    return SpaceY(size: 32, children: [
      AspectRatio(
          aspectRatio: 1,
          child: PageView(
            controller: _controller,
            children: widget.children,
            onPageChanged: widget.onPageChanged,
          )),
      // TODO: replace _isDelayed implementation with a cleaner one
      // delays building Pagination by 300ms
      _isDelayed
          ? Pagination(
              length: widget.children.length,
              controller: _controller,
            )
          : Container(),
    ]);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

// Pagination Widget
class Pagination extends StatelessWidget {
  final int length;
  final PageController controller;

  Pagination({Key key, @required this.length, @required this.controller})
      : super(key: key);

  Widget _indicatorBuilder(int index) {
    return AnimatedBuilder(
      animation: controller,
      builder: (_, child) {
        double t = (index - controller.page).abs().clamp(0.0, 1.0);
        return Container(
          width: lerpDouble(16, 6, t),
          height: 6.0,
          decoration: BoxDecoration(
              color: Color.lerp(Color(0xff65aaea), Color(0xffd5d4d4), t),
              borderRadius: BorderRadius.all(Radius.circular(6))),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SpaceX(
        size: 12, children: List<Widget>.generate(length, _indicatorBuilder));
  }
}
