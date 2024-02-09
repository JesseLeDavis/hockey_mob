import 'package:flutter/material.dart';
import 'package:flutter_project_template_firebase/app/view/app.dart';
import 'package:flutter_project_template_firebase/constants/gaps.dart';
import 'package:flutter_project_template_firebase/shared/themes/color_themes.dart';

class FullStrength extends StatelessWidget {
  const FullStrength({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            gapH16,
            Text(
              'Full Strength',
              style: context.title1Bold,
            ),
            gapH24,
            const Offence(),
            gapH24,
            const Defence(),
            gapH16,
          ],
        ),
      ),
    );
  }
}

class Defence extends StatelessWidget {
  const Defence({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Defence',
          style: context.headline,
        ),
        gapH16,
        Row(
          children: [
            Text(
              'L1',
              style: context.headline,
            ),
            Expanded(
              child: Row(
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
            ),
          ],
        ),
        gapH16,
        Row(
          children: [
            Text(
              'L2',
              style: context.headline,
            ),
            Expanded(
              child: Row(
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
            ),
          ],
        ),
        gapH16,
        Row(
          children: [
            Text(
              'L3',
              style: context.headline,
            ),
            Expanded(
              child: Row(
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
            ),
          ],
        ),
        gapH16,
      ],
    );
  }
}

class Offence extends StatelessWidget {
  const Offence({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Offence',
          style: context.headline,
        ),
        gapH16,
        Row(
          children: [
            Text(
              'L1',
              style: context.headline,
            ),
            Expanded(
              child: Row(
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
            ),
          ],
        ),
        gapH16,
        Row(
          children: [
            Text(
              'L2',
              style: context.headline,
            ),
            Expanded(
              child: Row(
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
            ),
          ],
        ),
        gapH16,
        Row(
          children: [
            Text(
              'L3',
              style: context.headline,
            ),
            Expanded(
              child: Row(
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
            ),
          ],
        ),
        gapH16,
        Row(
          children: [
            Text(
              'L4',
              style: context.headline,
            ),
            Expanded(
              child: Row(
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
            ),
          ],
        ),
      ],
    );
  }
}
