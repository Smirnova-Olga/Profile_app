import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';
import 'package:profile_app/gen/assets.gen.dart';
import 'package:profile_app/theme/colors_theme.dart';
import 'package:profile_app/theme/app_text_theme.dart';
import 'package:profile_app/widgets/avatar_widget.dart';
import 'package:profile_app/widgets/name_widget.dart';
import 'package:profile_app/widgets/select_type_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      ),
      body: Column(
        children: const [
          AvatarWidget(),
          NameWidget(),
          SelectTypeWidget(),
        ],
      ),
    );
  }
}
