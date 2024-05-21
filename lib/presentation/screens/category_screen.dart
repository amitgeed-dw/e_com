import 'package:e_com/presentation/providers/category_provider.dart';
import 'package:e_com/src/core/utils/app_colors.dart';
import 'package:e_com/src/core/utils/app_size.dart';
import 'package:e_com/src/core/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        appBar: CustomAppBar(
          title: "Category",
          onPressed: () {},
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppSize.size16),
          child: Consumer<CategoryProvider>(
            builder: (context, provider, child) {
              return ListView.separated(
                padding: const EdgeInsets.only(top: AppSize.size24),
                itemCount: provider.categoryItems.length,
                separatorBuilder: (context, index) =>
                const SizedBox(height: AppSize.size16),
                itemBuilder: (context, index) {
                  final item = provider.categoryItems[index];
                  return CategoryItemWidget(item: item);
                },
              );
            },
          ),
        ),
      ),
    );
  }
}

class CategoryItemWidget extends StatelessWidget {
  final CategoryItem item;

  const CategoryItemWidget({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0XFFF3F3F3),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: AppSize.size24, top: 48, bottom: AppSize.size50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.title,
                  style:  TextStyle(
                    color: AppColors.blackColor,
                    fontSize: 20,
                    fontFamily: 'Metropolis',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: AppSize.size6),
                Text(
                  item.subtitle,
                  style: const TextStyle(
                    color: AppColors.blackColor,
                    fontSize: AppSize.size14,
                    fontFamily: 'Metropolis',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          Image.asset(
            item.imagePath,
            height: 140,
            width: 116,
          ),
        ],
      ),
    );
  }
}
