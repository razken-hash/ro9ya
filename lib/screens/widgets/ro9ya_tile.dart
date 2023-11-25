import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ro9ya/controllers/navigation_controller.dart';
import 'package:ro9ya/models/ro9ya_item.dart';
import 'package:ro9ya/screens/ro9ya_screen.dart';
import 'package:ro9ya/utils/assets.dart';
import 'package:ro9ya/utils/colors.dart';
import 'package:ro9ya/utils/url_manager.dart';

class Ro9yaTile extends StatelessWidget {
  final Ro9yaItem ro9yaItem;

  const Ro9yaTile({super.key, required this.ro9yaItem});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        if (ro9yaItem.url != null) {
          //! Launch URL
          UrlManager.manageUrl(ro9yaItem.url);
        } else if (ro9yaItem.subItems != null) {
          Provider.of<NavigationController>(context, listen: false).navigateTo(
            Ro9yaScreen(
              ro9yaItems: ro9yaItem.subItems!,
            ),
            title: ro9yaItem.label,
            index: 3,
          );
        }
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(21),
          // border: Border.all(color: altColor, width: 10),
          color: altColor,
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(5, 5),
              blurRadius: 20,
              blurStyle: BlurStyle.outer,
              spreadRadius: 0,
            ),
            BoxShadow(
              color: Color(0x44000000),
              offset: Offset(-5, -5),
              blurRadius: 20,
              blurStyle: BlurStyle.outer,
              spreadRadius: 0,
            ),
          ],
        ),
        height: 80,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
        ),
        margin: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 10,
        ),
        child: Row(
          children: [
            Image.asset(
              Assets.imagify("ro9ya"),
              width: 60,
            ),
            Expanded(
              child: Center(
                child: Text(
                  ro9yaItem.label,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: white,
                    fontFamily: "Arial",
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
