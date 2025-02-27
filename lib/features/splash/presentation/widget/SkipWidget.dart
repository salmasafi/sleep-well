import 'package:flutter/material.dart';
import 'package:sleep_well/core/utils/colors.dart';

class SkipWidget extends StatelessWidget {
  const SkipWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
           TextButton(
            onPressed: () {},
            child: Text(
              "Skip",
              style: TextStyle(
                color: AppColors.whiteColor,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon:  Icon(
              Icons.arrow_right_alt_outlined,
              color:AppColors.whiteColor,
              size: 32,
            ),
          ),
      
        ],
      ),
    );
  }
}

