import 'package:flutter/material.dart';
import 'package:profile_app/profile_screen.dart';
import 'package:profile_app/theme/app_text_theme.dart';
import 'package:profile_app/theme/colors_theme.dart';

class SelectTypeWidget extends StatefulWidget {
  const SelectTypeWidget({super.key});

  @override
  State<SelectTypeWidget> createState() => _SelectTypeWidgetState();
}

class _SelectTypeWidgetState extends State<SelectTypeWidget> {
  final List<String> selectType = [
    'Black',
    'Bold',
    'Medium',
    'Regular',
    'Light',
  ];
  int _activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(16, 15, 0, 15),
          child: Text(
            'Select type',
            style: AppTextTheme.body1,
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(16, 5, 7, 8),
          height: 45,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: selectType.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    _activeIndex = index;
                  });
                },
                child: Container(
                  decoration: _activeIndex == index
                      ? BoxDecoration(
                          color: ColorsTheme.voilet100,
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(color: ColorsTheme.voilet200),
                        )
                      : BoxDecoration(
                          color: ColorsTheme.gray700,
                          borderRadius: BorderRadius.circular(50),
                        ),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
                    child: Text(
                      selectType[index],
                      style: _activeIndex == index
                          ? AppTextTheme.body2
                              .copyWith(color: ColorsTheme.voilet500)
                          : AppTextTheme.body2.copyWith(
                              color: const Color.fromRGBO(0, 0, 0, 0.38),
                            ),
                    ),
                  ),
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) =>
                const SizedBox(
              width: 15,
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
