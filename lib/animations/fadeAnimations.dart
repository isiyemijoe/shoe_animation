import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:supercharged/supercharged.dart';

enum AniProps { opacity, translateY }

class FadeAnimation extends StatelessWidget {
  final double delay;
  final Widget child;
  const FadeAnimation({Key key, @required this.delay, @required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _tween = TimelineTween<AniProps>()
      ..addScene(begin: 0.milliseconds, duration: 350.milliseconds)
          .animate(
            AniProps.opacity,
            tween: 0.0.tweenTo(1.0),
          )
          .animate(
            AniProps.translateY,
            tween: (-30.0).tweenTo(0.0),
            curve: Curves.easeOut,
          );

    return PlayAnimation<TimelineValue<AniProps>>(
      delay: Duration(milliseconds: (350 * delay).round()),
      duration: _tween.duration,
      child: child,
      tween: _tween,
      builder: (context, child, value) => Opacity(
        opacity: value.get(AniProps.opacity),
        child: Transform.translate(
            offset: Offset(0, value.get(AniProps.translateY)), child: child),
      ),
    );
  }
}
