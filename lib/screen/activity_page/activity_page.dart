import 'package:flutter/material.dart';
import 'package:flutter_login_dribble_app/screen/activity_page/activity_page_animation.dart';

class ActivityPage extends StatefulWidget {
  @override
  _ActivityPageState createState() => _ActivityPageState();
}

class _ActivityPageState extends State<ActivityPage>
    with TickerProviderStateMixin {
  AnimationController animationController;
  ActivityEnterAnimation activityEnterAnimation;

  @override
  void initState() {
    super.initState();
    animationController = new AnimationController(
        duration: const Duration(milliseconds: 1000), vsync: this)
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((AnimationStatus status) {
        switch (status) {
          case AnimationStatus.forward:
            break;
          case AnimationStatus.reverse:
            break;
          case AnimationStatus.completed:
            break;
          case AnimationStatus.dismissed:
            Navigator.pushNamed(context, "/onboarding");
            break;
        }
      });

    activityEnterAnimation = ActivityEnterAnimation(animationController);

    animationController.forward();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _getLabelText(textTheme),
            Expanded(
              child: _getActivityList(size, textTheme),
            )
          ],
        ),
      ),
      floatingActionButton: _getFab(),
    );
  }

  _getActivityList(Size size, TextTheme textTheme) => Transform(
      transform: Matrix4.translationValues(
          -activityEnterAnimation.listXtranslation.value, 0, 0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            _getListItem(textTheme, 'Walk', Icons.directions_walk),
            _getListItem(textTheme, 'Run', Icons.directions_run),
            _getListItem(textTheme, 'Bicycle', Icons.motorcycle),
          ],
        ),
      ));

  _getListItem(TextTheme textTheme, String label, IconData iconData) => Padding(
        padding: EdgeInsets.all(8),
        child: Row(
          children: <Widget>[
            Icon(
              iconData,
              color: Colors.white,
            ),
            SizedBox(
              width: 16,
            ),
            Text(
              label,
              style: textTheme.subhead.copyWith(color: Colors.white),
            )
          ],
        ),
      );

  _getFab() => Transform(
        transform: Matrix4.translationValues(
            activityEnterAnimation.listXtranslation.value, 0, 0),
        child: FloatingActionButton(
          backgroundColor: Colors.white,
          child: Icon(
            Icons.arrow_back,
            color: Colors.orange,
          ),
          onPressed: () {
            animationController.reverse();
            Scaffold.of(context).showSnackBar(
                new SnackBar(content: new Text('Button Clicked')));
          },
        ),
      );

  _getLabelText(TextTheme textTheme) => Padding(
        padding: EdgeInsets.only(top: 24, left: 24),
        child: Transform(
          transform: Matrix4.translationValues(
              -activityEnterAnimation.labelXtranslation.value, 0, 0),
          child: Text(
            "Select your activity",
            style: textTheme.caption.copyWith(color: Colors.white),
            textAlign: TextAlign.left,
          ),
        ),
      );
}
