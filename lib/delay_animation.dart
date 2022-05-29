import 'package:flutter/material.dart';
import 'dart:async';

class DelayAnimation extends StatefulWidget {
  final Widget child;
  final int delay;
  const DelayAnimation({required this.delay, required this.child});

  @override
  State<DelayAnimation> createState() => _DelayAnimationState();
}

class _DelayAnimationState extends State<DelayAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animationOffset;
  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1000));
    final curve =
        CurvedAnimation(parent: _controller, curve: Curves.decelerate);

    _animationOffset =
        Tween<Offset>(begin: Offset(0.0, -0.35), end: Offset.zero)
            .animate(curve);

    Timer(Duration(milliseconds: widget.delay), () {
      _controller.forward();
    });
  }

  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _controller,
      child: SlideTransition(
        position: _animationOffset,
        child: widget.child,
      ),
    );
  }
}
