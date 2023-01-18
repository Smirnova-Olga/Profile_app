import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:profile_app/gen/assets.gen.dart';
import 'package:profile_app/models/friend.dart';
import 'package:profile_app/theme/app_text_theme.dart';
import 'package:profile_app/theme/colors_theme.dart';
import 'package:profile_app/widgets/app_devider.dart';

class FriendsWidget extends StatelessWidget {
  const FriendsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Friend> friends = [
      Friend(
        name: 'Corey George',
        position: 'Developer',
        avatar: 'assets/images/avatar1.png',
      ),
      Friend(
          name: 'Ahmad Vetrovs',
          position: 'Developer',
          avatar: 'assets/images/avatar2.png'),
      Friend(
          name: 'Cristofer Workman',
          position: 'Developer',
          avatar: 'assets/images/avatar3.png'),
      Friend(
          name: 'Tiana Korsgaard',
          position: 'Developer',
          avatar: 'assets/images/avatar4.png'),
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(16, 15, 0, 0),
          child: Text(
            'Friends',
            style: AppTextTheme.body1,
          ),
        ),
        Container(
          padding: const EdgeInsets.only(bottom: 5),
          height: 307,
          child: ListView.separated(
            itemCount: friends.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                leading: Image(
                  image: AssetImage(friends[index].avatar),
                ),
                title: Text(friends[index].name, style: AppTextTheme.subtitle1),
                subtitle:
                    Text(friends[index].position, style: AppTextTheme.body2),
                trailing: SvgPicture.asset(
                  Assets.icons.close.path,
                  color: ColorsTheme.red200,
                  height: 14,
                  width: 14,
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return const Padding(
                padding: EdgeInsets.only(left: 72),
                child: AppDivider(),
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(
              foregroundColor: ColorsTheme.black,
              fixedSize: const Size.fromWidth(400),
            ),
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'ADD FRIEND ',
                  style: AppTextTheme.button,
                ),
                SvgPicture.asset(
                  Assets.icons.vector.path,
                  color: ColorsTheme.black,
                  height: 14,
                  width: 14,
                )
              ],
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.fromLTRB(16, 10, 16, 0),
          child: AppDivider(),
        ),
      ],
    );
  }
}
