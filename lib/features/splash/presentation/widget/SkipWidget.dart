import 'package:flutter/material.dart';
import 'package:sleep_well/core/utils/colors.dart';

class SkipWidget extends StatelessWidget {
  final VoidCallback onSkip;
  final VoidCallback onNext;
  final Widget? customWidget;

  const SkipWidget({
    super.key,
    required this.onSkip,
    required this.onNext,
    this.customWidget,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            onPressed: onSkip,
            child: Text(
              "Skip",
              style: TextStyle(
                color: AppColors.whiteColor,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          customWidget ??
          IconButton(
            onPressed: onNext,
            icon: Icon(
              Icons.arrow_right_alt_outlined,
              color: AppColors.whiteColor,
              size: 32,
            ),
          ),
        ],
      ),
    );
  }
}


