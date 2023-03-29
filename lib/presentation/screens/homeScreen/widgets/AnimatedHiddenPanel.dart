import 'package:flutter/material.dart';
import 'package:ivan_project/presentation/consts/colors.dart';

class AnimatedHiddenPanel extends StatefulWidget {
  const AnimatedHiddenPanel({super.key});

  @override
  _AnimatedHiddenPanelState createState() => _AnimatedHiddenPanelState();
}

class _AnimatedHiddenPanelState extends State<AnimatedHiddenPanel> {
  bool isExpanded = false;
  int itemsCount = 2;
  double listViewHeight = 0;
  final key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          final listViewContext = key.currentContext;
          final listViewBox = listViewContext?.findRenderObject() as RenderBox?;
          listViewHeight = (listViewBox?.size.height ?? 0) * itemsCount;

          isExpanded = !isExpanded;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 400),
        height: isExpanded ? listViewHeight : 56,
        color: AppColors.colorMain,
        child: ListView.builder(
          key: key,
          itemCount: itemsCount,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 56,
                  child: Row(
                    children: [
                      Expanded(
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 10,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.all(8),
                              child: CircleAvatar(
                                radius: 16,
                                backgroundColor: Colors.white,
                                child: Text(
                                  '$index',
                                  style: const TextStyle(color: Colors.grey),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 14, horizontal: 2),
                        child: VerticalDivider(
                          thickness: 1,
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: CircleAvatar(
                          backgroundColor: Colors.black,
                          child: Text(
                            '$index',
                            style: const TextStyle(color: Colors.grey),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
