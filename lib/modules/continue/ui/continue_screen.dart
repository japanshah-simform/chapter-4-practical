import 'package:flutter/material.dart';
import 'package:prac_4/utils/extensions.dart';
import '../../../utils/constants/asset_strings.dart';
import '../../../utils/constants/string_constants.dart';
import '../../../utils/theme/colors.dart';
import '../../../widgets/theme_button.dart';
import '../../../widgets/activity_tile.dart';
import '../../loan/ui/loan_step_one.dart';

class ContinueScreen extends StatelessWidget {
  const ContinueScreen({super.key});
  @override
  Widget build(BuildContext context) {
    double height = context.screenHeight;
    double width = context.screenWidth;

    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        physics: FixedExtentScrollPhysics(),
        padding: EdgeInsets.all(0),
        children: [
          Image.asset(
            AssetStrings.continueImage,
            height: height * .52,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    StringConstants.financialLifeline,
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .headlineLarge!
                        .copyWith(height: 1.2),
                  ),
                ),
                SizedBox(height: 18),
                Text(
                  StringConstants.applyLoan,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                SizedBox(height: 32),
                ActivityTile(
                  leading: Row(
                    children: [
                      ClipOval(
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset(
                            AssetStrings.usaFlag,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            StringConstants.liveIn,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(color: AppColors.greyBg),
                          ),
                          SizedBox(height: 2),
                          Text(
                            StringConstants.country,
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ],
                      ),
                    ],
                  ),
                  trailing: Icon(
                    Icons.keyboard_arrow_down_sharp,
                    color: Colors.purple,
                  ),
                ),
                SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        StringConstants.continueText,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      ThemeButton(
                        width: width * .3,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoanStepOne(),
                            ),
                          );
                        },
                        child: Row(
                          children: [
                            Text(
                              StringConstants.continueText,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(color: AppColors.white),
                            ),
                            SizedBox(width: 8),
                            Icon(Icons.arrow_right_alt),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
