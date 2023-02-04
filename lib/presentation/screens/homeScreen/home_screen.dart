import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:ivan_project/generated/locale_keys.g.dart';
import 'package:ivan_project/presentation/consts/icons.dart';
import 'package:ivan_project/presentation/screens/homeScreen/widgets/AnimatedHiddenPanel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Column(
        children: [
          DefaultTabController(
            length: 3,
            initialIndex: 1,
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.black,
                bottom: TabBar(
                  indicatorColor: Colors.white,
                  tabs: [
                    getTab(icChats),
                    getTab(icDeals),
                    getTab(icSettings),
                  ],
                ),
                title: Text(LocaleKeys.appName.tr()),
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
        ],
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
