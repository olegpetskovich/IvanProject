import 'package:flutter/material.dart';

class TitleTextAppBar extends StatelessWidget with PreferredSizeWidget {
  const TitleTextAppBar(this.titleText, {
    Key? key,
  }) : super(key: key);

  final String titleText;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(titleText),
      centerTitle: true,
      backgroundColor: Colors.black,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
