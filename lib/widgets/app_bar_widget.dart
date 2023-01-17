import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:profile_app/gen/assets.gen.dart';
import 'package:profile_app/theme/app_text_theme.dart';
import 'package:profile_app/theme/colors_theme.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: false,
      elevation: 1.0,
      backgroundColor: ColorsTheme.white,
      leading: IconButton(
        icon: SvgPicture.asset(Assets.icons.back.path),
        onPressed: () {
          //  TODO: realize button press
        },
      ),
      title: const Text(
        'Profile',
        style: AppTextTheme.headline6,
      ),
      actions: <Widget>[
        IconButton(
          onPressed: () {
            //  TODO: realize button press
          },
          icon: SvgPicture.asset(Assets.icons.menu.path),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
