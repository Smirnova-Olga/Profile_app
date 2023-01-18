import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:profile_app/gen/assets.gen.dart';
import 'package:profile_app/theme/colors_theme.dart';

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
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SvgPicture.asset(
                    Assets.icons.vector.path,
                    color: ColorsTheme.white,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
