import 'package:e_com/src/core/utils/app_colors.dart';
import 'package:e_com/src/core/utils/app_size.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Function onPressed;

  const CustomAppBar({
    super.key,
    required this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back, color: AppColors.blackColor),
        onPressed: onPressed as void Function()?,
      ),
      title: Text(
        title,
        style: const TextStyle(
          color: AppColors.blackColor,
          fontSize: AppSize.size18,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
