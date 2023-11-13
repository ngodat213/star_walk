import 'package:flutter/material.dart';
import 'package:star_walk/generated/l10n.dart';
import 'package:star_walk/themes/app_colors.dart';
import 'package:star_walk/themes/text_styles.dart';
import 'package:star_walk/widgets/build_textfield.dart';

class SigninForm extends StatelessWidget {
  const SigninForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 30),
        Text(
          S.of(context).login,
          style: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w500,
              color: AppColors.white),
        ),
        Text(
          S.of(context).login_title,
          style: const TextStyle(fontSize: 12, color: AppColors.white),
        ),
        const SizedBox(height: 32),
        BuildTextField(
          label: S.of(context).email_address,
          hintText: S.of(context).email_example,
        ),
        const SizedBox(height: 16),
        BuildTextField(
          label: S.of(context).password,
          hintText: S.of(context).password_title,
        ),
        Align(
          alignment: Alignment.topRight,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: Text(
              'LOGIN',
              style: TxtStyle.h3.copyWith(color: AppColors.label),
            ),
            onPressed: () {},
          ),
        )
      ],
    );
  }
}
