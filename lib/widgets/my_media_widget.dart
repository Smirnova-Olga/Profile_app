import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:profile_app/gen/assets.gen.dart';
import 'package:profile_app/theme/app_text_theme.dart';
import 'package:profile_app/theme/colors_theme.dart';

class MyMedia extends StatelessWidget {
  const MyMedia({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> photo = [
      'assets/images/rectangle6.png',
      'assets/images/rectangle7.png',
      'assets/images/rectangle8.png',
      'assets/images/rectangle9.png',
      'assets/images/rectangle10.png',
      'assets/images/rectangle11.png',
      'assets/images/rectangle12.png',
      'assets/images/rectangle13.png',
      'assets/images/rectangle14.png',
    ];
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'My media',
            style: AppTextTheme.headline5,
          ),
          Container(
              height: 400,
              padding: const EdgeInsets.only(top: 16),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 18,
                  crossAxisSpacing: 18,
                ),
                itemCount: photo.length,
                itemBuilder: (context, index) {
                  return Expanded(
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        FittedBox(
                          fit: BoxFit.cover,
                          child: Image(
                            image: AssetImage(photo[index]),
                          ),
                        ),
                        Positioned(
                          top: 8,
                          right: 8,
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: ColorsTheme.red200,
                              border: Border.all(
                                color: ColorsTheme.white,
                              ),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            width: 24,
                            height: 24,
                            child: SvgPicture.asset(
                              Assets.icons.close.path,
                              color: ColorsTheme.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              )),
        ],
      ),
    );
  }
}
