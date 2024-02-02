import 'package:flutter/material.dart';
import 'package:flutter_project_template_firebase/app/view/app.dart';
import 'package:flutter_project_template_firebase/constants/gaps.dart';
import 'package:flutter_project_template_firebase/shared/themes/color_themes.dart';

class PowerPlay extends StatelessWidget {
  const PowerPlay({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            gapH16,
            Row(
              children: [
                Text(
                  'Power Play',
                  style: context.title1Bold,
                ),
              ],
            ),
            gapH24,
            const PP1(),
            gapH24,
            const PP2(),
            gapH16,
          ],
        ),
      ),
    );
  }
}

class PP1 extends StatelessWidget {
  const PP1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'PP1',
          style: context.headline,
        ),
        gapH16,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Container(
                  height: 50,
                  alignment: Alignment.center,
                  width: 50,
                  decoration: BoxDecoration(
                    color: ColorThemes.neutral800,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Text(
                    '1',
                    style: context.title2Bold,
                  ),
                ),
                gapH8,
                Text(
                  'Player',
                  style: context.body,
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  height: 50,
                  alignment: Alignment.center,
                  width: 50,
                  decoration: BoxDecoration(
                    color: ColorThemes.neutral800,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Text(
                    '1',
                    style: context.title2Bold,
                  ),
                ),
                gapH8,
                Text(
                  'Player',
                  style: context.body,
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  height: 50,
                  alignment: Alignment.center,
                  width: 50,
                  decoration: BoxDecoration(
                    color: ColorThemes.neutral800,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Text(
                    '1',
                    style: context.title2Bold,
                  ),
                ),
                gapH8,
                Text(
                  'Player',
                  style: context.body,
                ),
              ],
            ),
          ],
        ),
        gapH16,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Container(
                  height: 50,
                  alignment: Alignment.center,
                  width: 50,
                  decoration: BoxDecoration(
                    color: ColorThemes.neutral800,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Text(
                    '1',
                    style: context.title2Bold,
                  ),
                ),
                gapH8,
                Text(
                  'Player',
                  style: context.body,
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  height: 50,
                  alignment: Alignment.center,
                  width: 50,
                  decoration: BoxDecoration(
                    color: ColorThemes.neutral800,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Text(
                    '1',
                    style: context.title2Bold,
                  ),
                ),
                gapH8,
                Text(
                  'Player',
                  style: context.body,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class PP2 extends StatelessWidget {
  const PP2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'PP2',
          style: context.headline,
        ),
        gapH16,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Container(
                  height: 50,
                  alignment: Alignment.center,
                  width: 50,
                  decoration: BoxDecoration(
                    color: ColorThemes.neutral800,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Text(
                    '1',
                    style: context.title2Bold,
                  ),
                ),
                gapH8,
                Text(
                  'Player',
                  style: context.body,
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  height: 50,
                  alignment: Alignment.center,
                  width: 50,
                  decoration: BoxDecoration(
                    color: ColorThemes.neutral800,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Text(
                    '1',
                    style: context.title2Bold,
                  ),
                ),
                gapH8,
                Text(
                  'Player',
                  style: context.body,
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  height: 50,
                  alignment: Alignment.center,
                  width: 50,
                  decoration: BoxDecoration(
                    color: ColorThemes.neutral800,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Text(
                    '1',
                    style: context.title2Bold,
                  ),
                ),
                gapH8,
                Text(
                  'Player',
                  style: context.body,
                ),
              ],
            ),
          ],
        ),
        gapH16,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Container(
                  height: 50,
                  alignment: Alignment.center,
                  width: 50,
                  decoration: BoxDecoration(
                    color: ColorThemes.neutral800,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Text(
                    '1',
                    style: context.title2Bold,
                  ),
                ),
                gapH8,
                Text(
                  'Player',
                  style: context.body,
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  height: 50,
                  alignment: Alignment.center,
                  width: 50,
                  decoration: BoxDecoration(
                    color: ColorThemes.neutral800,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Text(
                    '1',
                    style: context.title2Bold,
                  ),
                ),
                gapH8,
                Text(
                  'Player',
                  style: context.body,
                ),
              ],
            ),
          ],
        ),
        gapH16,
      ],
    );
  }
}
