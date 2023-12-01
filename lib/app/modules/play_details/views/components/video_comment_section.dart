import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../../../../core/app_theme.dart';
import '../../../../../core/size_config.dart';
import '../../controllers/play_details_controller.dart';

class CommentsSection extends GetView<PlayDetailsController> {
  const CommentsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: SizeConfig().icon15()),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Comments   ${controller.video.viewers}",
                style: TextStyle(
                  fontSize: SizeConfig().font30(),
                  fontWeight: FontWeight.w400,
                  color: CustomColors.getGray600()
                ),
              ),
              SvgPicture.asset(
                  "assets/icons/comments_icon.svg"
              )
            ],
          ),
          SizedBox(height: SizeConfig().icon15(),),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: CustomColors.getGray300(), width: 1),
                borderRadius: BorderRadius.circular(SizeConfig().icon10())
            ),
            padding: EdgeInsets.symmetric(vertical: SizeConfig().icon10()/4),
            child:Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 10,
                  child: Padding(
                    padding:  EdgeInsets.only(left: SizeConfig().icon10()),
                    child: TextField(
                      maxLines: 10,
                      minLines: 1,
                      style: TextStyle(
                        fontSize: SizeConfig().font30(),
                        fontWeight: FontWeight.w400
                      ),
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          border: InputBorder.none,
                          hintText: "Add Comment",
                          hintStyle: TextStyle(
                            color: CustomColors.getGray400(),
                            fontSize: SizeConfig().font30(),
                            fontWeight: FontWeight.w400
                          )
                      ),
                    ),
                  ),
                ),
                Expanded(
                    flex: 2,
                    child: SvgPicture.asset(
                      "assets/icons/send.svg",
                      height: SizeConfig().icon30(),
                      width: SizeConfig().icon20(),
                    )
                )
              ],
            ),
          ),
          SizedBox(height: SizeConfig().icon15(),),
          VideoCommentTile(),
          SizedBox(height: SizeConfig().icon15(),),
        ],
      ),
    );
  }
}


class VideoCommentTile extends GetView<PlayDetailsController> {
  const VideoCommentTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
            flex: 2,
            child:
            // FadeInImage.assetNetwork(
            //     placeholder: placeholder,
            //     image: image
            // )
            ClipRRect(
                borderRadius: BorderRadius.circular(SizeConfig().icon40()),
                clipBehavior: Clip.hardEdge,
                child: Image.asset(
                  "assets/images/comment_person.jpg",
                  height: SizeConfig().icon45(),
                  width: SizeConfig().icon45(),
                )
            )
        ),
        Expanded(
            flex: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    RichText(
                      text: TextSpan(
                          children: [
                            TextSpan(
                                text: "Fahmida khanom",
                                style: TextStyle(
                                  color: CustomColors.getGray600(),
                                  fontSize: SizeConfig().font30(),
                                  fontWeight: FontWeight.w500
                                )
                            ),
                            TextSpan(text: "    "),
                            TextSpan(
                                text: " 2 days ago",
                                style: TextStyle(
                                  color: CustomColors.getGray600(),
                                  fontSize: SizeConfig().font27(),
                                  fontWeight: FontWeight.w400
                                )
                            )
                          ]
                      ),
                    ),
                    SizedBox(width: SizeConfig().icon10(),),
                    Text(""),
                  ],
                ),
                SizedBox(height: SizeConfig().icon10(),),
                Text(
                  "হুজুরের বক্তব্য গুলো ইংরেজি তে অনুবাদ করে সারা পৃথিবীর মানুষদের কে শুনিয়ে দিতে হবে। কথা গুলো খুব দামি",
                  style: TextStyle(
                    color: CustomColors.getGray700(),
                    fontSize: SizeConfig().font30(),
                    fontWeight: FontWeight.w400
                  ),
                )
              ],
            )
        )
      ],
    );
  }
}