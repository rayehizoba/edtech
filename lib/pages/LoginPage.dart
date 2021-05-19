import 'package:edtech/common/ColorPalettes.dart';
import 'package:edtech/components/RoundedTextField.dart';
import 'package:edtech/components/Buttons.dart';
import 'package:flutter/material.dart';
import '../common/TypographyStyles.dart';
import '../components/space_y.dart';
import '../components/space_x.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var h1 = Text(
      'Log in',
      style: TypographyStyles.heading1,
    );

    var h2 = Text(
      'Login with social networks',
      style: TypographyStyles.paragraphMedium.merge(TextStyle(
        color: ColorPalettes.textGray,
      )),
    );

    var socialButtons = SpaceX(
        size: 12,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SocialButton(
            onPressed: () {},
            child: Image.asset('assets/images/social-fb.png'),
          ),
          SocialButton(
            onPressed: () {},
            child: Image.asset('assets/images/social-ig.png'),
          ),
          SocialButton(
            onPressed: () {},
            child: Image.asset('assets/images/social-gp.png'),
          ),
        ]);

    var buttonGroup = SpaceY(size: 4, children: [
      ClearButton(
        onPressed: () {},
        child:
            Text('Forgot Password?', style: TypographyStyles.paragraphMedium),
      ),
      PrimaryButton(
        onPressed: () {},
        child: Text('Log in',
            style: TypographyStyles.paragraphLarge.merge(TextStyle(
              color: Colors.white,
            ))),
      ),
      ClearButton(
        onPressed: () {},
        child: Text('Sign up', style: TypographyStyles.paragraphMedium),
      ),
    ]);

    final focus = FocusNode();

    return Container(
      decoration: BoxDecoration(color: Colors.white),
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SpaceY(
            size: 16,
            children: <Widget>[
              Image.asset('assets/images/Cool Kids Sitting.png'),
              SpaceY(size: 8, children: <Widget>[h1, h2, socialButtons]),
              RoundedTextField(
                  hintText: 'Email',
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  onFieldSubmitted: (v) {
                    print(v);
                    FocusScope.of(context).requestFocus(focus);
                  }
              ),
              RoundedPasswordField(hintText: 'Password', focusNode: focus),
              buttonGroup,
            ],
          ),
        ],
      ),
    );
  }
}
