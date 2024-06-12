
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../common/theme/pallets.dart';



class CommentButton extends StatelessWidget {
  const CommentButton({
    super.key,
    this.onPressed,
    required this.commentCount,
  });
  final VoidCallback? onPressed;
  final int commentCount;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
            onTap: onPressed,
            child:const  FaIcon(
              FontAwesomeIcons.solidComment,
              color: AppColors.articleFooterActionsDefaultColor,
              size: 24,
            )),
        const SizedBox(
          width: 3,
        ),
        Text(
          commentCount.toString(),
          style:const  TextStyle(color: AppColors.articleFooterActionsDefaultColor),
        ),
      ],
    );
  }
}
