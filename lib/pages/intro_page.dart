import 'package:edtech/components/carousel.dart';
import 'package:edtech/components/space_y.dart';
import 'package:flutter/material.dart';

// Intro Page Widget
class IntroPage extends StatefulWidget {
  static String routeName = '/intro';

  @override
  _IntroPageState createState() => _IntroPageState();
}

// Intro Page State
class _IntroPageState extends State<IntroPage> {
  static final List<Map> _carouselData = [
    {
      'img': 'assets/images/Cool Kids Long Distance Relationship.png',
      'h1': 'Learn anytime\nand anywhere',
      'h2':
          'Quarantine is the perfect time to spend your\nday learning something new, from anywhere!',
    },
    {
      'img': 'assets/images/Cool Kids Staying Home.png',
      'h1': 'Find a course\nfor you',
      'h2':
          'Quarantine is the perfect time to spend your\nday learning something new, from anywhere!',
    },
    {
      'img': 'assets/images/Cool Kids High Tech.png',
      'h1': '\nImprove your skills',
      'h2':
          'Quarantine is the perfect time to spend your\nday learning something new, from anywhere!',
    },
  ];

  final PageController _carouselController = PageController(initialPage: 0);

  int _carouselPage = 0;

  void _handleCarouselPageChanged(int page) {
    setState(() {
      _carouselPage = page;
    });
  }

  void _handlePressedNext() {
    if (_carouselController.page < _carouselData.length - 1) {
      _carouselController.nextPage(
          curve: Curves.fastOutSlowIn, duration: Duration(milliseconds: 500));
    } else {
      // navigate to another page
    }
  }

  bool get _endReached {
    return _carouselPage == (_carouselData.length - 1);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        /**
         * Skip Button Section
         */
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {},
                child: Text('Skip'),
              )
            ],
          ),
        ),

        /**
         * Carousel Section
         */
        Carousel(
          children: _carouselData
              .map((each) => SpaceY(size: 16, children: [
                    Image.asset(each['img']),
                    SpaceY(
                      size: 8,
                      children: [
                        Text(
                          each['h1'],
                          style: Theme.of(context).textTheme.headline5,
                          textAlign: TextAlign.center,
                        ),
                        Text(each['h2'],
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.bodyText2)
                      ],
                    ),
                  ]))
              .toList(),
          onPageChanged: _handleCarouselPageChanged,
          controller: _carouselController,
        ),

        /**
         * Next Button Section
         */
        Padding(
          padding: EdgeInsets.all(32.0),
          child: SizedBox(
            height: 56,
            width: double.infinity,
            child: ElevatedButton(
              onPressed: _handlePressedNext,
              child: Text(_endReached ? 'Let\'s Start' : 'Next'),
            ),
          ),
        ),
      ],
    );
  }
}
