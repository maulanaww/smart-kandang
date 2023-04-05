import 'package:flutter/widgets.dart';

class ImageContainer extends StatelessWidget {
  const ImageContainer({
    Key? key,
    this.height = 125,
    this.borderRadius = 20,
    required this.width,
    required this.images,
    this.padding,
    this.margin,
    this.child,
  }) : super(key: key);

  final double width;
  final double height;
  final String images;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final double borderRadius;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      margin: margin,
      padding: padding,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(images),
          fit: BoxFit.cover,
        ),
      ),
      child: child,
    );
  }
}
