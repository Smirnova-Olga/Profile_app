import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';
import 'package:profile_app/gen/assets.gen.dart';
import 'package:profile_app/theme/colors_theme.dart';
import 'package:profile_app/theme/app_text_theme.dart';
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
          onPressed: () {},
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

class AvatarWidget extends StatelessWidget {
  const AvatarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25),
      child: SizedBox(
        width: double.infinity,
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            const SizedBox(
              width: 118,
              height: 118,
              child: Image(image: AssetImage('assets/images/avatar.png')),
            ),
            Positioned(
              top: 82,
              right: 134,
              child: Container(
                decoration: BoxDecoration(
                  color: ColorsTheme.voilet500,
                  border: Border.all(color: ColorsTheme.white, width: 1.5),
                  borderRadius: BorderRadius.circular(50),
                ),
                width: 36,
                height: 36,
                child: SvgPicture.asset(
                  Assets.icons.vector.path,
                  color: ColorsTheme.white,
                  height: 5,
                  width: 5,
                  fit: BoxFit.scaleDown,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

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
          padding: const EdgeInsets.only(top: 5),
          child: Text(
            'Developer',
            style: AppTextTheme.caption.copyWith(
              color: const Color.fromRGBO(102, 102, 102, 1),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(16, 25, 16, 0),
          child: AppDivider(),
        ),
      ],
    );
  }
}

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
