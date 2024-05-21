import 'package:e_com/presentation/providers/login_provider.dart';
import 'package:e_com/src/core/utils/app_colors.dart';
import 'package:e_com/src/core/utils/app_size.dart';
import 'package:e_com/src/core/widgets/custom_app_bar.dart';
import 'package:e_com/src/core/widgets/custom_elevated_button.dart';
import 'package:e_com/src/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: CustomAppBar(
        title: "Login",
        onPressed: () {},
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppSize.size16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Login",
                style: TextStyle(
                  color: AppColors.blackColor,
                  fontSize: FontSize.mediumTitle,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: AppSize.size31),
              CustomTextField(
                controller: context.read<LoginProvider>().emailController,
                hintText: "Email",
                onPressed: () {},
                icon: Icons.email,
              ),
              const SizedBox(height: AppSize.size16),
              Consumer<LoginProvider>(
                builder: (context, provider, child) {
                  return CustomTextField(
                    controller: provider.passwordController,
                    hintText: "Password",
                    onPressed: provider.changePasswordVisibility,
                    icon: provider.isShowPassword
                        ? Icons.visibility
                        : Icons.visibility_off,
                  );
                },
              ),
              const SizedBox(height: AppSize.size24),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Forgot Password?",
                    style: TextStyle(
                      color: AppColors.blackColor,
                      fontSize: FontSize.subTitle,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 22),
              Row(
                children: [
                  Consumer<LoginProvider>(
                    builder: (context, provider, child) {
                      return Checkbox(
                        value: provider.rememberMe,
                        onChanged: (value) => provider.changeCheckBox(value!),
                      );
                    },
                  ),
                  const Text(
                    "Remember me?",
                    style: TextStyle(
                      color: AppColors.blackColor,
                      fontSize: FontSize.subTitle,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: AppSize.size32),
              CustomElevatedButton(
                buttonText: "LOGIN",
                onPressed: () {},
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don’t have account?",
                    style: TextStyle(
                      color: AppColors.blackColor,
                      fontSize: FontSize.paragraph,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Register",
                      style: TextStyle(
                        color: AppColors.redColor,
                        fontSize: FontSize.paragraph,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: AppSize.size24),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Divider(
                      color: AppColors.grayColor,
                      thickness: 1,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 14),
                    child: Text(
                      "or",
                      style: TextStyle(
                        color: AppColors.blackColor,
                        fontSize: FontSize.paragraph,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      color: AppColors.grayColor,
                      thickness: 1,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 23),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Container(
                      width: AppSize.size50,
                      height: AppSize.size50,
                      decoration: BoxDecoration(
                        color: AppColors.whiteColor,
                        borderRadius: BorderRadius.circular(AppSize.size12),
                        boxShadow: const [
                          BoxShadow(
                            color: AppColors.grayColor,
                            spreadRadius: 2,
                            blurRadius: 2,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Image.asset("assets/images/img_buttons.png"),
                    ),
                  ),
                  const SizedBox(width: AppSize.size16),
                  IconButton(
                    onPressed: () {},
                    icon: Container(
                      width: AppSize.size50,
                      height: AppSize.size50,
                      decoration: BoxDecoration(
                        color: AppColors.whiteColor,
                        borderRadius: BorderRadius.circular(AppSize.size12),
                        boxShadow: const [
                          BoxShadow(
                            color: AppColors.grayColor,
                            spreadRadius: 2,
                            blurRadius: 2,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Image.asset("assets/images/img_buttons_50x50.png"),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: AppSize.size39),
            ],
          ),
        ),
      ),
    );
  }
}
