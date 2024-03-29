import 'package:flutter/material.dart';
import 'package:konusamayanlar_app/core/base/view/base_view.dart';
import 'package:konusamayanlar_app/core/constants/color_constant.dart';
import 'package:konusamayanlar_app/view/home/mainpage/viewmodel/main_page_viewmodel.dart';
import 'package:molten_navigationbar_flutter/molten_navigationbar_flutter.dart';

class MainPageView extends StatefulWidget {
  const MainPageView({super.key});

  @override
  State<MainPageView> createState() => _MainPageViewState();
}

class _MainPageViewState extends MainPageViewModel {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BaseView(
      builder: (context, width, height, appbar) {
        return Scaffold(
          backgroundColor: ColorConst.appBgColor,
          bottomNavigationBar: MoltenBottomNavigationBar(
            domeCircleColor: ColorConst.appBarBg,
            barColor: ColorConst.navBarBg,
            selectedIndex: _selectedIndex,
            onTabChange: (clickedIndex) {
              setState(() {
                _selectedIndex = clickedIndex;
              });
            },
            tabs: [
              MoltenTab(
                icon: const Icon(Icons.home),
              ),
              MoltenTab(
                icon: Image.asset('assets/images/prize.png'),
              ),
              MoltenTab(
                icon: const Icon(Icons.person),
              ),
            ],
          ),
          appBar: appbar,
          body: Center(
            child: screenList.elementAt(_selectedIndex),
          ),
        );
      },
    );
  }
}
