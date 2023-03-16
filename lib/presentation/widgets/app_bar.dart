import 'package:flutter/material.dart';
import 'package:ivan_project/presentation/consts/colors.dart';

class TitleTextAppBar extends StatelessWidget with PreferredSizeWidget {
  const TitleTextAppBar(
    this.titleText, {
    Key? key,
  }) : super(key: key);

  final String titleText;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        titleText,
        style: TextStyle(color: AppColors.colorLight),
      ),
      iconTheme: IconThemeData(
        color: AppColors.colorLight, //change your color here
      ),
      centerTitle: true,
      backgroundColor: AppColors.colorMain,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
