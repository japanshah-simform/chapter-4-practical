import 'package:flutter/material.dart';
import '../../../utils/theme/colors.dart';
import '../../../widgets/custom-button.dart';
import '../../../widgets/custom-container.dart';
import 'package:intl/intl.dart';

class LoanStepOne extends StatefulWidget {
  const LoanStepOne({super.key});

  @override
  State<LoanStepOne> createState() => _LoanStepOneState();
}

class _LoanStepOneState extends State<LoanStepOne> {
  double sliderValue = 670000;
  final formatter = NumberFormat("#,###");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(children: [
        Column(children: [
          Container(
            height: MediaQuery.of(context).size.height * .32,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/loan-step1.png"),
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
                              text: 'Loan Application ',
                              style: Theme.of(context).textTheme.titleSmall,
                            ),
                            TextSpan(
                                text: '| Step 1',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(color: Colors.red)),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xfffae88c),
                        ),
                        child: Icon(Icons.close),
                      ),
                    ]),
              ),
            ),
          ),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 24.0, horizontal: 18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Amount', style: Theme.of(context).textTheme.bodyMedium),
                  SizedBox(
                    height: 6,
                  ),
                  CustomContainer(
                    leading: Text(
                      "\$${formatter.format(sliderValue)}",
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
                  Text("\$100",
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(fontSize: 14)),
                  Text("\$1,000,000",
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(fontSize: 14)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              child: SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  thumbColor: AppColors.primaryColor,
                  trackHeight: 5.0,
                  thumbShape: RoundSliderThumbShape(enabledThumbRadius: 8.0),
                  overlayShape: RoundSliderOverlayShape(overlayRadius: 12.0),
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
                      print(value);
                    });
                  },
                  min: 100,
                  max: 1000000,
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
                  Text('Period', style: Theme.of(context).textTheme.bodyMedium),
                  SizedBox(
                    height: 6,
                  ),
                  CustomContainer(
                    leading: Text(
                      "2 Years",
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
                  Text('Billing Address',
                      style: Theme.of(context).textTheme.bodyMedium),
                  SizedBox(
                    height: 12,
                  ),
                  FittedBox(
                    child: CustomContainer(
                      leading: Text(
                        softWrap: true,
                        "Puerta Jorge Luis Avila, 50, Viladecans 94263",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  CustomButton(
                    onPressed: () {},
                    child: Text(
                      "Next",
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
                      child: Text("Cancel",
                          style: Theme.of(context).textTheme.bodyMedium)),
                ],
              ),
            ),
          ]),
        ]),
        // Positioned.fill(
        //   bottom: 7,
        //   right: 0,
        //   left: 0,
        //   child: Opacity(
        //     opacity: .2,
        //     child: Image.asset(
        //       "assets/images/test-2.png", // Replace with your image
        //       fit: BoxFit.cover,
        //
        //       // Cover entire screen
        //     ),
        //   ),
        // ),
      ]),
    );
  }
}
