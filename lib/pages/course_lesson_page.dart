import 'package:edtech/components/segmented_control.dart';
import 'package:edtech/components/space_y.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CourseLessonPage extends StatelessWidget {
  static const String routeName = '/course-lesson';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
            child: OutlinedButton(
              onPressed: () {},
              child: SizedBox(
                  width: 16.0,
                  height: 16.0,
                  child: Image.asset('assets/images/icon_back.png')),
              style: OutlinedButton.styleFrom(
                shape: CircleBorder(),
              ),
            ),
            padding: EdgeInsets.only(left: 16.0)),
        leadingWidth: 16.0 * 4,
        title: Text('HTML', style: Theme.of(context).textTheme.headline5),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children: [
                Container(height: 32.0),
                SpaceY(
                    size: 8,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text('Tags For Headers',
                          style: Theme.of(context).textTheme.headline5),
                      Text('3 of 11 lessons',
                          style: Theme.of(context).textTheme.bodyText2),
                      SegmentedControl(
                        children: {
                          'Lessons': LessonsContent(),
                          'Tests': Container(),
                          'Discuss': Container(),
                        },
                        onValueChanged: (_) {},
                      ),
                    ]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LessonsContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SpaceY(size: 24, children: <Widget>[
      SizedBox(
        width: double.infinity,
        height: 194.0,
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xffe6edf4),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                            'assets/images/Cool Kids Long Distance Relationship.png')),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: IconButton(
                  iconSize: 48,
                  icon: Image.asset('assets/images/icon_play.png'),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
      SpaceY(size: 4, children: [
        Text('Introduction', style: Theme.of(context).textTheme.headline6),
        Text(
          'You can launch a new career in web development today by learning HTML & CSS. You don\'t need a computer science degree or expensive software. All you need is a computer, a bit of time, a lot of determination, and a teacher you trust. Once the form data has been validated on the client-side, it is okay to submit the form. And, since we covered validation in the previous article, we\'re ready to submit! This article looks at what happens when a user submits a form — where does the data go, and how do we handle it when it gets there? We also look at some of the security concerns.',
          style: Theme.of(context)
              .textTheme
              .bodyText2
              .merge(TextStyle(height: 1.5)),
        ),
      ])
    ]);
  }
}
