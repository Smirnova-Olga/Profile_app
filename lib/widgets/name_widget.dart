import 'package:flutter/material.dart';
import 'package:profile_app/theme/app_text_theme.dart';
import 'package:profile_app/widgets/app_devider.dart';

class NameWidget extends StatelessWidget {
  const NameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 25),
          child: Text(
            'Tiana Rosser',
            style: AppTextTheme.subtitle1,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 3),
          child: Text(
            'Developer',
            style: AppTextTheme.caption.copyWith(
              color: const Color.fromRGBO(102, 102, 102, 1),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 25),
          child: AppDivider(),
        ),
      ],
    );
  }
}
