import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:ro9ya/controllers/navigation_controller.dart';
import 'package:ro9ya/utils/assets.dart';
import 'package:ro9ya/utils/colors.dart';

class Ro9yaNavScreen extends StatelessWidget {
  const Ro9yaNavScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<NavigationController>(
      builder: (context, navigationController, child) {
        return PopScope(
          canPop: false,
          onPopInvoked: (result) {
            navigationController.navigateTo(
              navigationController.screens.first,
              title: navigationController.labels.first,
              index: 0,
            );
          },
          child: SafeArea(
            child: Scaffold(
              backgroundColor: mainColor,
              body: Column(
                children: [
                  //! App Bar
                  Container(
                    height: 75,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(Assets.imagify("mosque")),
                          fit: BoxFit.cover,
                          alignment: Alignment.topCenter),
                    ),
                    child: Center(
                      child: Text(
                        navigationController.currentTitle,
                        style: TextStyle(
                          color: white,
                          fontFamily: "Arial",
                          fontSize: 23,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                  //! Content
                  Expanded(
                    child: Container(
                      height: double.infinity,
                      decoration: BoxDecoration(
                        gradient: backgroundGradient,
                        borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(20),
                        ),
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            child: navigationController.currentScreen,
                          ),
                          //! Nav Bar
                          Container(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 30.0),
                            height: 75,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: List.generate(
                                navigationController.screens.length,
                                (index) => InkWell(
                                  onTap: () {
                                    navigationController.navigateTo(
                                      navigationController.screens[index],
                                      title: navigationController.labels[index],
                                      index: index,
                                    );
                                  },
                                  child: SvgPicture.asset(
                                    Assets.iconify(
                                        navigationController.icons[index]),
                                    height: 30,
                                    width: 30,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ).toList(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
