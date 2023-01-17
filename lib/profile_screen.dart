import 'package:flutter/material.dart';
import 'package:profile_app/widgets/app_bar_widget.dart';
import 'package:profile_app/widgets/avatar_widget.dart';
import 'package:profile_app/widgets/name_widget.dart';
import 'package:profile_app/widgets/select_type_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarWidget(),
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
