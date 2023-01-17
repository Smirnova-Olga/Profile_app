import 'package:flutter/material.dart';
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
                trailing: const Icon(
                  Icons.close,
                  color: ColorsTheme.red200,
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
      ],
    );
  }
}
