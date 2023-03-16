import 'package:flutter/material.dart';
import 'package:ivan_project/presentation/consts/colors.dart';

class AnimatedHiddenPanel extends StatefulWidget {
  const AnimatedHiddenPanel({super.key});

  @override
  _AnimatedHiddenPanelState createState() => _AnimatedHiddenPanelState();
}

class _AnimatedHiddenPanelState extends State<AnimatedHiddenPanel> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isExpanded = !isExpanded;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 400),
        height: isExpanded ? 200 : 56,
        color: AppColors.colorMain,
      ),
    );
  }
}
