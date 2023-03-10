import 'package:flutter/material.dart';
import 'package:profile_app/theme/app_text_theme.dart';
import 'package:profile_app/theme/colors_theme.dart';
import 'package:profile_app/widgets/app_devider.dart';

class SelectTypeWidget extends StatelessWidget {
  const SelectTypeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        TextSelectTypeWidget(),
        ItemSelectWidget(),
        Padding(
          padding: EdgeInsets.only(top: 15),
          child: AppDivider(),
        ),
      ],
    );
  }
}

class TextSelectTypeWidget extends StatelessWidget {
  const TextSelectTypeWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 16),
      child: Text(
        'Select type',
        style: AppTextTheme.body2,
      ),
    );
  }
}

class ItemSelectWidget extends StatefulWidget {
  const ItemSelectWidget({super.key});

  @override
  State<ItemSelectWidget> createState() => _ItemSelectWidgetState();
}

class _ItemSelectWidgetState extends State<ItemSelectWidget> {
  final List<String> _selectType = [
    'Black',
    'Bold',
    'Medium',
    'Regular',
    'Light',
  ];
  int _activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: SizedBox(
        height: 32,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: _selectType.length,
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
                    _selectType[index],
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
          separatorBuilder: (BuildContext context, int index) => const SizedBox(
            width: 15,
          ),
        ),
      ),
    );
  }
}
