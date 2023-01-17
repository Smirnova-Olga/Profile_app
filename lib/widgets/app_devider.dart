import 'package:flutter/material.dart';
import 'package:profile_app/theme/colors_theme.dart';

class AppDivider extends StatelessWidget {
  const AppDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
      color: ColorsTheme.gray700,
    );
  }
}
