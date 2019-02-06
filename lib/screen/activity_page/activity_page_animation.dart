import 'package:flutter/material.dart';

class ActivityEnterAnimation {
  ActivityEnterAnimation(this.controller)
      : fadeTranslation = new Tween(begin: 0.8, end: 1.0).animate(
          new CurvedAnimation(
            parent: controller,
            curve: new Interval(
              0.7,
              1.0,
              curve: Curves.fastOutSlowIn,
            ),
          ),
        ),
        listXtranslation = new Tween(begin: 1000.0, end: 0.0).animate(
          new CurvedAnimation(
            parent: controller,
            curve: new Interval(
              0.2,
              0.7,
              curve: Curves.fastOutSlowIn,
            ),
          ),
        ),
        labelXtranslation = new Tween(begin: 1000.0, end: 0.0).animate(
          new CurvedAnimation(
            parent: controller,
            curve: new Interval(
              0.0,
              0.5,
              curve: Curves.fastOutSlowIn,
            ),
          ),
        );

  final AnimationController controller;
  final Animation<double> fadeTranslation;
  final Animation<double> listXtranslation;
  final Animation<double> labelXtranslation;
}
