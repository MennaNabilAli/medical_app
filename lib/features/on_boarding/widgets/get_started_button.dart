import 'package:flutter/material.dart';
import 'package:medical_app/core/helpers/extinsions.dart';

import '../../../core/routing/routes.dart';
import '../../../core/theming/colors.dart';
import '../../../core/theming/styles.dart';



class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextButton(
          onPressed: (){
            context.pushNamed(Routes.loginScreen);
          },
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(AppColors.mainBlue),
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              maximumSize: MaterialStateProperty.all(const Size(double.infinity,52)),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)))
          ),
          child: Text(
            'Get Started',
            style: TextStyles.font16whiteSemiBold,)),
    );
  }
}
