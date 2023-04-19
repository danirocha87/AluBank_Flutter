import 'package:appLayouts/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class ContentDivision extends StatelessWidget {
  final double width;
  const ContentDivision({Key key, this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
      width: width,
      decoration: BoxDecoration(
        border: Border.all(color: ThemeColors.division),
      ),
    );
  }
}
