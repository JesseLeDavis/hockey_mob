import 'package:flutter/material.dart';
import 'package:flutter_project_template_firebase/infrastructure/config/flavor.dart';

class FlavorBanner extends StatelessWidget {
  const FlavorBanner({
    Key? key,
    required this.flavor,
    required this.child,
  }) : super(key: key);

  final Widget child;
  final Flavor flavor;

  @override
  Widget build(BuildContext context) {
    if (flavor == Flavor.production) return child;

    return Stack(
      children: <Widget>[
        child,
        GestureDetector(
          behavior: HitTestBehavior.translucent,
          child: SizedBox(
            width: 50,
            height: 50,
            child: CustomPaint(
              painter: BannerPainter(
                message: flavor.name,
                textDirection: Directionality.of(context),
                layoutDirection: Directionality.of(context),
                location: BannerLocation.topStart,
                color: flavor.color,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
