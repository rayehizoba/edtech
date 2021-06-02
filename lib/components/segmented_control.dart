import 'package:edtech/common/colors.dart';
import 'package:edtech/components/space_x.dart';
import 'package:edtech/components/space_y.dart';
import 'package:flutter/material.dart';

class SegmentedControl extends StatefulWidget {
  SegmentedControl({
    Key key,
    @required this.children,
    @required this.onValueChanged,
  }) : super(key: key);

  final Map<String, Widget> children;

  final ValueChanged<String> onValueChanged;

  @override
  _SegmentedControlState createState() => _SegmentedControlState();
}

class _SegmentedControlState extends State<SegmentedControl> {
  String _selectedKey;

  @override
  void initState() {
    _selectedKey = widget.children.keys.first;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> _btnGroup = <Widget>[];

    for (final String currentKey in widget.children.keys) {
      BorderRadius _borderRadius = BorderRadius.all(Radius.circular(0.0));
      TextStyle _textStyle = Theme.of(context).textTheme.bodyText1;

      if (currentKey == widget.children.keys.first) {
        _borderRadius = BorderRadius.horizontal(left: Radius.circular(16.0));
      } else if (currentKey == widget.children.keys.last) {
        _borderRadius = BorderRadius.horizontal(right: Radius.circular(16.0));
      }

      if (currentKey == _selectedKey) {
        _textStyle = _textStyle.merge(TextStyle(color: InkSwatches.dark));
      }

      _btnGroup.add(Expanded(
        child: SizedBox(
          height: 42.0,
          child: TextButton(
            onPressed: () {
              setState(() {
                _selectedKey = currentKey;
              });
            },
            child: Text(
              currentKey,
              style: _textStyle,
            ),
            style: TextButton.styleFrom(
              backgroundColor: InkSwatches.lightGray,
              shape: RoundedRectangleBorder(
                borderRadius: _borderRadius,
              ),
            ),
          ),
        ),
      ));
    }

    return SpaceY(
      size: 16,
      children: <Widget>[
        SpaceX(size: 4, children: _btnGroup),
        widget.children[_selectedKey],
      ],
    );
  }
}
