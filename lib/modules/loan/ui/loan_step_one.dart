import 'package:flutter/material.dart';
import 'package:prac_4/utils/constants/asset_strings.dart';
import 'package:prac_4/utils/extensions.dart';
import 'package:prac_4/widgets/theme_button.dart';
import '../../../utils/constants/number_constants.dart';
import '../../../utils/constants/string_constants.dart';
import '../../../utils/theme/colors.dart';
import '../../../widgets/activity_tile.dart';

class LoanStepOne extends StatefulWidget {
  const LoanStepOne({super.key});

  @override
  State<LoanStepOne> createState() => _LoanStepOneState();
}

class _LoanStepOneState extends State<LoanStepOne> {
  late double height;
  late double width;
  @override
  void didChangeDependencies() {
    height = context.screenHeight;
    width = context.screenWidth;
    super.didChangeDependencies();
  }

  double sliderValue = 670000;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: height * .32,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(AssetStrings.loanStep1),
                    fit: BoxFit.cover,
                  ),
                ),
                child: SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          textAlign: TextAlign.start,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: StringConstants.loanApplication,
                                style: Theme.of(context).textTheme.titleSmall,
                              ),
                              TextSpan(
                                text: StringConstants.loanStep1,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(color: Colors.red),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.yellowBg,
                          ),
                          child: Icon(Icons.close),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 24.0, horizontal: 18.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          StringConstants.amount,
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        ActivityTile(
                          leading: Text(
                            '\$${sliderValue.format()}',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '\$${NumberConstants.minSliderValue.format()}',
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(fontSize: 14),
                        ),
                        Text(
                          '\$${NumberConstants.maxSliderValue.format()}',
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(fontSize: 14),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                    child: SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        thumbColor: AppColors.primaryColor,
                        trackHeight: 5.0,
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 8.0),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 12.0),
                        overlayColor: AppColors.white,
                        activeTrackColor: AppColors.primaryColor,
                        showValueIndicator: ShowValueIndicator.always,
                        valueIndicatorColor: Colors.black,
                        valueIndicatorTextStyle: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(color: Colors.white),
                      ),
                      child: Slider(
                        value: sliderValue,
                        label: sliderValue.round().toString(),
                        onChanged: (value) {
                          setState(() {
                            sliderValue = value;
                          });
                        },
                        min: NumberConstants.minSliderValue,
                        max: NumberConstants.maxSliderValue,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          StringConstants.period,
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        ActivityTile(
                          leading: Text(
                            '2 Years',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          trailing: Icon(
                            Icons.keyboard_arrow_down_sharp,
                            color: Colors.purple,
                          ),
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Text(
                          StringConstants.billingAddress,
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        FittedBox(
                          child: ActivityTile(
                            leading: Text(
                              softWrap: true,
                              'Puerta Jorge Luis Avila, 50, Viladecans 94263',
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        ThemeButton(
                          onPressed: () {},
                          child: Text(
                            'Next',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(color: AppColors.white),
                          ),
                        ),
                        SizedBox(
                          height: 28,
                        ),
                        Center(
                          child: Text(
                            StringConstants.cancel,
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
