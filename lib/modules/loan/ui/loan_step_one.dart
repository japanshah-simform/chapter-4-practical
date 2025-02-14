import 'package:flutter/material.dart';
import '../../../utils/theme/colors.dart';
import '../../../UI/widgets/custom-button.dart';
import '../../../UI/widgets/grey-container.dart';

class LoanStepOne extends StatefulWidget {
  const LoanStepOne({super.key});

  @override
  State<LoanStepOne> createState() => _LoanStepOneState();
}

class _LoanStepOneState extends State<LoanStepOne> {
  double sliderValue = 670000;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(children: [
              Container(
                height: MediaQuery.of(context).size.height * .34,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/loan-step1.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            textAlign: TextAlign.start,
                            text: TextSpan(
                              text: 'Loan Application ',
                              style: Theme.of(context).textTheme.titleMedium,
                              children: <TextSpan>[
                                TextSpan(
                                    text: '| step 1',
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
              SizedBox(
                height: 4,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Amount',
                          style: Theme.of(context).textTheme.bodyMedium),
                      SizedBox(
                        height: 12,
                      ),
                      GreyContainer(
                        leading: Text(
                          "\$670,000",
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "\$100",
                            style: TextStyle(color: Colors.grey.shade600),
                          ),
                          Text(
                            "\$1,000,000",
                            style: TextStyle(color: Colors.grey.shade600),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context)
                            .copyWith(overlayColor: Color(0xffffffff)),
                        child: Slider(
                          value: sliderValue,
                          onChanged: (value) {
                            setState(() {
                              sliderValue = value;
                              print(value);
                            });
                          },
                          thumbColor: Color(0xfff2a81d),
                          activeColor: Color(0xfff2a81d),
                          min: 100,
                          max: 1000000,
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text('Period',
                          style: Theme.of(context).textTheme.bodyMedium),
                      SizedBox(
                        height: 12,
                      ),
                      GreyContainer(
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
                        height: 16,
                      ),
                      Text('Billing Address',
                          style: Theme.of(context).textTheme.bodyMedium),
                      SizedBox(
                        height: 12,
                      ),
                      GreyContainer(
                        leading: Flexible(
                          child: Text(
                            softWrap: true,
                            "Puerta Jorge Luis Avila, 50, Viladecans 94263",
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 48,
                      ),
                    ]),
              ),
            ]),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              CustomButton(
                onPressed: () {},
                child: Text(
                  "Next",
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: AppColors.white),
                ),
              ),
              SizedBox(
                height: 32,
              ),
              Center(
                  child: Text("Cancel",
                      style: Theme.of(context).textTheme.bodyLarge)),
              SizedBox(
                height: 32,
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
