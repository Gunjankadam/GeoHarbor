import 'package:flutter/material.dart';
import 'dart:math' as math;

class RippleLoader extends StatefulWidget {
  const RippleLoader({super.key});

  @override
  State<RippleLoader> createState() => _RippleLoaderState();
}

class _RippleLoaderState extends State<RippleLoader>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _radius;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 1))
          ..repeat();
    _radius = Tween<double>(begin: 10, end: 60).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeOut),
    );
  }

  @override
  void dispose() {
    _controller.dispose(); // ✅ Dispose controller
    super.dispose(); // ✅ Required
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _radius,
      builder: (context, _) {
        return Center(
          child: Container(
            width: _radius.value,
            height: _radius.value,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.tealAccent.withOpacity(1 - _radius.value / 60),
            ),
          ),
        );
      },
    );
  }
}
