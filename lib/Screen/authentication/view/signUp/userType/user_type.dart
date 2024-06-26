import 'package:flutter/material.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../../../../utils/helpers/helper_functions.dart';
import '../../../../../utils/theme/theme.dart';
import '../../../../../utils/theme/widget_themes/text_theme.dart';
import 'widgets/already_have_account.dart';
import 'widgets/checkboxs.dart';

class ChooseUserType extends StatelessWidget {
  const ChooseUserType({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'choose user type',
        theme: THelperFunctions.isDarkMode(context)
            ? TAppTheme.darkTheme
            : TAppTheme.lightTheme,
        home: Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const SizedBox(height: TSizes.spaceBtwInputFields),
                Text(
                  TTexts.logoTitle,
                  style: THelperFunctions.isDarkMode(context)
                      ? TTextTheme.darkTextTheme.headlineLarge
                      : TTextTheme.lightTextTheme.headlineLarge,
                ),
                Text(
                  TTexts.userTypeSubTitle,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(
                  height: TSizes.spaceBtwInputFields,
                ),
                const SelectUserType(),
                const SizedBox(
                  height: TSizes.spaceBtwInputFields,
                ),
                THelperFunctions().deviderLine(),
                const HaveAccount(),
              ],
            ),
          ),
        ));
  }
}
