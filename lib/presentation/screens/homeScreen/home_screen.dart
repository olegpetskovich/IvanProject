import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:ivan_project/presentation/consts/colors.dart';
import 'package:ivan_project/presentation/consts/icons.dart';
import 'package:ivan_project/presentation/screens/homeScreen/widgets/AnimatedHiddenPanel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Column(
          children: [
            const AnimatedHiddenPanel(),
            Flexible(
              child: DefaultTabController(
                length: 3,
                initialIndex: 1,
                child: Scaffold(
                  appBar: AppBar(
                    title: TabBar(
                      unselectedLabelColor: AppColors.colorMainLight,
                      indicatorColor: Colors.white,
                      tabs: [
                        getTab(icChats),
                        getTab(icDeals),
                        getTab(icSettings),
                      ],
                    ),
                    backgroundColor: AppColors.colorMain,
                  ),
                  body: const TabBarView(
                    children: [
                      Image(image: Svg(icChats)),
                      Image(image: Svg(icDeals)),
                      Image(image: Svg(icSettings))
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget getTab(String iconAssetsPath) {
    return Tab(
      icon: Padding(
        padding: const EdgeInsets.all(8),
        child: Image(image: Svg(iconAssetsPath), color: Colors.white),
      ),
    );
  }
}
