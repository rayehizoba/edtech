import 'package:edtech/common/ColorPalettes.dart';
import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  final Widget child;
  final VoidCallback onPressed;

  SocialButton({@required this.child, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: 40,
      child: TextButton(
          onPressed: this.onPressed,
          style: TextButton.styleFrom(
            backgroundColor: ColorPalettes.socialBlue,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
            ),
          ),
          child: this.child),
    );
  }
}

class ClearButton extends StatelessWidget {
  ClearButton({@required this.child, this.onPressed});

  final Widget child;

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      width: double.infinity,
      child: TextButton(
          onPressed: onPressed,
          child: child,
          style: TextButton.styleFrom(
            primary: ColorPalettes.textGray,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(16)),
            ),
          )),
    );
  }
}

class PrimaryButton extends StatelessWidget {
  PrimaryButton({@required this.child, this.onPressed});

  final Widget child;

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      width: double.infinity,
      child: TextButton(
          onPressed: onPressed,
          child: child,
          style: TextButton.styleFrom(
            backgroundColor: ColorPalettes.primaryOrange,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(16)),
            ),
          )),
    );
  }
}
