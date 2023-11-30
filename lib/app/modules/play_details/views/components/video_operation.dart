import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/app_theme.dart';
import '../../../../../core/size_config.dart';

class VideoOperation extends StatelessWidget {
  const VideoOperation({
    super.key,
    required this.icon,
    required this.title
  });

  final String icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: SizeConfig().icon10()/2),
      child: Container(
        padding: EdgeInsets.only(
          right: SizeConfig().icon10()/2,
          left: SizeConfig().icon10()/2,
          top: SizeConfig().icon10()/2,
          bottom: SizeConfig().icon10()/2,
        ),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(SizeConfig().icon10()),
            border: Border.all(color: CustomColors.getGray300(), width: 1)
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              icon,
              height: SizeConfig().icon25(),
              width: SizeConfig().icon25(),
            ),
            SizedBox(height: SizeConfig().icon10(),),
            Text(
              "$title",
              style: TextStyle(
                  color: CustomColors.getGray600(),
                  fontSize: SizeConfig().font27()
              ),
            )
          ],
        ),
      ),
    );
  }
}