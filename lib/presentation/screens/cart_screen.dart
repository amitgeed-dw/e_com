import 'package:e_com/presentation/providers/cart_provider.dart';
import 'package:e_com/src/core/utils/app_colors.dart';
import 'package:e_com/src/core/utils/app_size.dart';
import 'package:e_com/src/core/widgets/custom_app_bar.dart';
import 'package:e_com/src/core/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: CustomAppBar(
        title: "Cart",
        onPressed: () => Navigator.of(context).pop(),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppSize.size16, vertical: AppSize.size24),
        child: Column(
          children: [
            Expanded(child: _buildCartItems(context)),
            _buildSummary(context),
            const SizedBox(height: AppSize.size32),
            CustomElevatedButton(
              buttonText: "Checkout",
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCartItems(BuildContext context) {
    return Consumer<CartProvider>(
      builder: (context, provider, child) {
        return ListView.builder(
          itemCount: provider.cartItems.length,
          itemBuilder: (context, index) {
            final item = provider.cartItems[index];
            return Column(
              children: [
                _buildCartItem(item),
                if (index < provider.cartItems.length - 1)
                  const Divider(color: AppColors.grayColor),
              ],
            );
          },
        );
      },
    );
  }

  Widget _buildCartItem(CartItem item) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: Image.asset(
            "assets/images/img_unsplash_emlkhdeydhg.png",
            height: 128,
            width: 111,
          ),
        ),
        const SizedBox(width: AppSize.size16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item.name,
                style: const TextStyle(
                  color: AppColors.blackColor,
                  fontSize: AppSize.size16,
                  fontWeight: FontWeight.w500,
                ),
              ),
               SizedBox(height: 4),
              Text(
                item.category,
                style: const TextStyle(
                  color: AppColors.grayColor,
                  fontSize: AppSize.size14,
                ),
              ),
               SizedBox(height: 5),
              Row(
                children: [
                  Text(
                    '\$${item.price}',
                    style: const TextStyle(
                      color: AppColors.blackColor,
                      fontSize: AppSize.size18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(width: AppSize.size6),
                  Text(
                    '\$${item.originalPrice}',
                    style: const TextStyle(
                      color: AppColors.grayColor,
                      fontSize: AppSize.size18,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                  const SizedBox(width: AppSize.size6),
                  Text(
                    '(${item.discount}%)',
                    style: const TextStyle(
                      color: AppColors.redColor,
                      fontSize: AppSize.size18,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 23),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildQuantityControl(item),
                  IconButton(
                    icon: const Icon(Icons.delete, color: AppColors.redColor),
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildQuantityControl(CartItem item) {
    return Container(
      width: 87,
      padding: const EdgeInsets.symmetric(vertical: 2),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            icon: const Icon(Icons.remove, size: AppSize.size16),
            onPressed: () {},
          ),
          Text(
            '${item.quantity}',
            style: const TextStyle(
              color: AppColors.blackColor,
              fontSize: AppSize.size14,
            ),
          ),
          IconButton(
            icon: const Icon(Icons.add, size: AppSize.size16),
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  Widget _buildSummary(BuildContext context) {
    final provider = Provider.of<CartProvider>(context);
    return Column(
      children: [
        _buildSummaryRow('Subtotal', provider.subtotal),
        const SizedBox(height: AppSize.size16),
        _buildSummaryRow('Fee & Delivery', provider.feeAndDelivery),
        const SizedBox(height: AppSize.size14),
        _buildSummaryRow('Total', provider.total),
      ],
    );
  }

  Widget _buildSummaryRow(String label, double amount) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: const TextStyle(
            color: AppColors.grayColor,
            fontSize: AppSize.size16,
          ),
        ),
        Text(
          '\$${amount.toStringAsFixed(2)}',
          style: const TextStyle(
            color: AppColors.blackColor,
            fontSize: AppSize.size16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }

  Widget _buildCheckoutButton(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.redColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        onPressed: () {},
        child: const Text(
          'Checkout',
          style: TextStyle(
            color: Colors.white,
            fontSize: AppSize.size18,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}