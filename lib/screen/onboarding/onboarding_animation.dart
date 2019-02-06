import 'package:flutter/material.dart';

class OnBoardingEnterAnimation {
  OnBoardingEnterAnimation(this.controller)
      : scaleTranslation = new Tween(begin: 0.0, end: 1.0).animate(
          new CurvedAnimation(
            parent: controller,
            curve: new Interval(
              0.7,
              1.0,
              curve: Curves.fastOutSlowIn,
            ),
          ),
        ),
        fadeTranslation = new Tween(begin: 1000.0, end: 0.0).animate(
          new CurvedAnimation(
            parent: controller,
            curve: new Interval(
              0.0,
              1.0,
              curve: Curves.fastOutSlowIn,
            ),
          ),
        ),
        graphFadeTranslation = new Tween(begin: 0.0, end: 1.0).animate(
          new CurvedAnimation(
            parent: controller,
            curve: new Interval(
              0.6,
              0.9,
              curve: Curves.fastOutSlowIn,
            ),
          ),
        ),
        whiteCutBackgroundYtranslation =
            new Tween(begin: 1000.0, end: 0.0).animate(
          new CurvedAnimation(
            parent: controller,
            curve: new Interval(
              0.0,
              0.3,
              curve: Curves.fastOutSlowIn,
            ),
          ),
        ),
        pagerXtranslation = new Tween(begin: 1000.0, end: 0.0).animate(
          new CurvedAnimation(
            parent: controller,
            curve: new Interval(
              0.4,
              0.8,
              curve: Curves.fastOutSlowIn,
            ),
          ),
        ),
        graphYtranslation = new Tween(begin: 1000.0, end: 0.0).animate(
          new CurvedAnimation(
            parent: controller,
            curve: new Interval(
              0.6,
              0.9,
              curve: Curves.fastOutSlowIn,
            ),
          ),
        ),
        graphLabelXtranslation = new Tween(begin: 1000.0, end: 0.0).animate(
          new CurvedAnimation(
            parent: controller,
            curve: new Interval(
              0.4,
              0.8,
              curve: Curves.fastOutSlowIn,
            ),
          ),
        ),
        dailyActivity1translation = new Tween(begin: 0.0, end: 1.0).animate(
          new CurvedAnimation(
            parent: controller,
            curve: new Interval(
              0.3,
              0.7,
              curve: Curves.fastOutSlowIn,
            ),
          ),
        ),
        blueCutBackgroundYtranslation =
            new Tween(begin: 1000.0, end: 1.0).animate(
          new CurvedAnimation(
            parent: controller,
            curve: new Interval(
              0.2,
              0.6,
              curve: Curves.fastOutSlowIn,
            ),
          ),
        );

  final AnimationController controller;
  final Animation<double> scaleTranslation;
  final Animation<double> fadeTranslation;
  final Animation<double> whiteCutBackgroundYtranslation;
  final Animation<double> blueCutBackgroundYtranslation;
  final Animation<double> pagerXtranslation;
  final Animation<double> graphYtranslation;
  final Animation<double> graphLabelXtranslation;
  final Animation<double> graphFadeTranslation;

  final Animation<double> dailyActivity1translation;
}
