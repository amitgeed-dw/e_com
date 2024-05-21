import 'package:e_com/src/core/utils/app_colors.dart';
import 'package:e_com/src/core/utils/app_size.dart';
import 'package:e_com/src/core/widgets/custom_app_bar.dart';
import 'package:e_com/src/core/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        appBar: CustomAppBar(
          title: "Popular Items",
          onPressed: () {},
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                "assets/images/img_unsplash_emlkhdeydhg.png",
                height: 326,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: AppSize.size30),
              _buildProductDetail(context),
              const SizedBox(height: AppSize.size12),
              const Padding(
                padding: EdgeInsets.only(left: AppSize.size16),
                child: Text(
                  "Danh muc",
                  style: TextStyle(
                    color: AppColors.grayColor,
                    fontSize: AppSize.size16,
                    fontFamily: 'Metropolis',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(height: AppSize.size12),
              Padding(
                padding: const EdgeInsets.only(left: AppSize.size16),
                child: Row(
                  children: [
                    RatingBar.builder(
                      initialRating: 5,
                      minRating: 0,
                      direction: Axis.horizontal,
                      allowHalfRating: false,
                      itemSize: AppSize.size16,
                      unratedColor: const Color(0XFFFFC008),
                      itemCount: 5,
                      updateOnDrag: true,
                      onRatingUpdate: (rating) {},
                      itemBuilder: (context, _) {
                        return const Icon(
                          Icons.star,
                          color: Color(0XFFFFC008),
                        );
                      },
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Text(
                        "(10)",
                        style: TextStyle(
                          color: AppColors.blackColor,
                          fontSize: AppSize.size14,
                          fontFamily: 'Metropolis',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 17),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: 343,
                  margin:
                      const EdgeInsets.symmetric(horizontal: AppSize.size16),
                  child: const Text(
                    "O Lorem Ipsum é um texto modelo da indústria tipográfica e de impressão. O Lorem Ipsum tem vindo a ser o texto padrão usado por estas indústrias desde o ano de 1500, quando uma misturou os caracteres de um texto para criar um espécime de livro. Este texto não só sobreviveu 5 séculos, mas também o salto para a tipografia electrónica, mantendo-se essencialmente inalterada. Foi popularizada nos anos 60 com a disponibilização das folhas de Letraset, que continham passagens com Lorem Ipsum, e mais recentemente com os programas de publicação como o Aldus PageMaker que incluem versões do Lorem Ipsum.",
                    maxLines: 17,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Color(0XFF2E2E2E),
                      fontSize: AppSize.size16,
                      fontFamily: 'Metropolis',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(AppSize.size16),
          child: CustomElevatedButton(
            buttonText: "Log In",
            onPressed: () {},
          ),
        ),
      ),
    );
  }

  Widget _buildProductDetail(BuildContext context) {
    return const Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Print Maxi Dress",
              style: TextStyle(
                color: AppColors.blackColor,
                fontSize: AppSize.size24,
                fontFamily: 'Metropolis',
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              "200",
              style: TextStyle(
                color: AppColors.blackColor,
                fontSize: AppSize.size24,
                fontFamily: 'Metropolis',
                fontWeight: FontWeight.w600,
              ),
            )
          ],
        ),
      ),
    );
  }
}
