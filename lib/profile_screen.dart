import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:profile_app/gen/assets.gen.dart';
import 'package:profile_app/theme/colors_theme.dart';
import 'package:profile_app/theme/app_text_theme.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppBarWidget();
  }
}

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1.0,
        backgroundColor: ColorsTheme.white,
        leading: IconButton(
          icon: SvgPicture.asset(Assets.icons.back.path),
          onPressed: () {},
        ),
        title: Container(
          width: 250,
          alignment: Alignment.centerLeft,
          child: const Text(
            'Profile',
            style: AppTextTheme.headline6,
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(Assets.icons.menu.path),
          ),
        ],
      ),
    );
  }
}
