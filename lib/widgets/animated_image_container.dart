import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_portfolio/utils/images_utility.dart';

class AnimatedImageContainer extends StatefulWidget {
  final double? width;
  final double? height;
  const AnimatedImageContainer(
      {super.key, this.height = 300, this.width = 250});

  @override
  AnimatedImageContainerState createState() => AnimatedImageContainerState();
}

class AnimatedImageContainerState extends State<AnimatedImageContainer>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    )..repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        final value = _controller.value;
        return Transform.translate(
          offset: Offset(0, 2 * value),
          child: Container(
            height: widget.height,
            width: widget.width,
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              gradient: const LinearGradient(colors: [
                Colors.pinkAccent,
                Colors.blue,
              ]),
              boxShadow: const [
                BoxShadow(
                  color: Colors.pink,
                  offset: Offset(-2, 0),
                  blurRadius: 20,
                ),
                BoxShadow(
                  color: Colors.blue,
                  offset: Offset(2, 0),
                  blurRadius: 20,
                ),
              ],
            ),
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Image.asset(
                ImagesUtility.logo,
                fit: BoxFit.cover,
                height: ScreenUtil().screenWidth >= 500
                    ? MediaQuery.sizeOf(context).width * 0.2
                    : ScreenUtil().screenWidth >= 700
                        ? MediaQuery.sizeOf(context).width * 0.14
                        : 200,
                width: ScreenUtil().screenWidth >= 700
                    ? MediaQuery.sizeOf(context).width * 0.2
                    : ScreenUtil().screenWidth >= 700
                        ? MediaQuery.sizeOf(context).width * 0.14
                        : 200,
              ),
            ),
          ),
        );
      },
    );
  }
}
