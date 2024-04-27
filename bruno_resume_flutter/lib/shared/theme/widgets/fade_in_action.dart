import 'package:flutter/material.dart';

class FadeInAction extends StatefulWidget {
  const FadeInAction({
    Key? key,
    required this.icon,
    this.onPressed,
  }) : super(key: key);

  final Widget icon;
  final VoidCallback? onPressed;

  @override
  State<FadeInAction> createState() => _FadeInActionState();
}

class _FadeInActionState extends State<FadeInAction>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 1),
    vsync: this,
  );

  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.easeIn,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _controller.forward();
    });
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animation,
      child: IconButton(
        icon: widget.icon,
        onPressed: widget.onPressed,
      ),
    );
  }
}
