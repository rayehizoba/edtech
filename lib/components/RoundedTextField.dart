import 'package:flutter/material.dart';

class RoundedTextField extends StatelessWidget {
  final String hintText;
  final TextInputType keyboardType;
  final bool obscureText;
  final IconButton suffixIcon;
  final FocusNode focusNode;
  final TextInputAction textInputAction;
  final ValueChanged<String> onFieldSubmitted;

  RoundedTextField(
      {this.hintText,
      this.keyboardType,
      this.obscureText,
      this.suffixIcon,
      this.focusNode,
      this.textInputAction,
      this.onFieldSubmitted});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onFieldSubmitted: this.onFieldSubmitted,
      textInputAction: this.textInputAction,
      focusNode: this.focusNode,
      keyboardType: this.keyboardType,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(16),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Colors.red)),
        hintText: this.hintText,
        suffixIcon: this.suffixIcon,
      ),
      obscureText: this.obscureText ?? false,
    );
  }
}

class RoundedPasswordField extends StatefulWidget {
  RoundedPasswordField({this.hintText, this.focusNode});

  final String hintText;
  final FocusNode focusNode;

  @override
  _RoundedPasswordFieldState createState() => _RoundedPasswordFieldState(
      hintText: this.hintText, focusNode: this.focusNode);
}

class _RoundedPasswordFieldState extends State<RoundedPasswordField> {
  _RoundedPasswordFieldState({this.hintText, this.focusNode});

  final String hintText;
  final FocusNode focusNode;

  bool _obscureText = true;

  void _toggleTextVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    var icon = _obscureText
        ? Image.asset('assets/images/visibility-show.png')
        : Image.asset('assets/images/visibility-hide.png');
    return RoundedTextField(
      focusNode: this.focusNode,
      hintText: this.hintText,
      suffixIcon: IconButton(icon: icon, onPressed: _toggleTextVisibility),
      obscureText: _obscureText,
    );
  }
}
