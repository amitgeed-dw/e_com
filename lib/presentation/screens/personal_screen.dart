import 'package:e_com/src/core/utils/app_colors.dart';
import 'package:e_com/src/core/utils/app_size.dart';
import 'package:e_com/src/core/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class PersonalScreen extends StatelessWidget {
  const PersonalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: CustomAppBar(
        title: 'Personal',
        onPressed: () {},
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: AppSize.size16, vertical: AppSize.size24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  CircleAvatar(
                    radius: AppSize.size30,
                    backgroundImage:
                        AssetImage("assets/images/img_ellipse_5.png"),
                  ),
                  SizedBox(width: AppSize.size16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Long Khoa",
                        style: TextStyle(
                          color: AppColors.blackColor,
                          fontSize: FontSize.mediumTitle,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "hodanglongkhoa123@gmail.com",
                        style: TextStyle(
                          color: AppColors.grayColor,
                          fontSize: FontSize.subTitle,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: AppSize.size30),
              _buildMenuItem(context, "Profile", "Update Profile"),
              const Divider(color: AppColors.grayColor),
              _buildMenuItem(context, "My orders", "Already have 12 orders"),
              const Divider(color: AppColors.grayColor),
              _buildMenuItem(context, "Shipping addresses", "3 address"),
              const Divider(color: AppColors.grayColor),
              _buildMenuItem(context, "Payment methods", "Visa"),
              const Divider(color: AppColors.grayColor),
              _buildMenuItem(context, "My reviews", "Reviews for 4 items"),
              const Divider(color: AppColors.grayColor),
              _buildMenuItem(context, "Recent View", "Reviews for 4 items"),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMenuItem(BuildContext context, String title, String subtitle) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppSize.size12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: AppColors.blackColor,
                  fontSize: FontSize.mediumTitle,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 5),
              Text(
                subtitle,
                style: const TextStyle(
                  color: AppColors.grayColor,
                  fontSize: FontSize.subTitle,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          const Icon(Icons.arrow_forward_ios,
              color: AppColors.grayColor, size: AppSize.size16),
        ],
      ),
    );
  }
}
