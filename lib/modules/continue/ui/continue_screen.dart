import 'package:flutter/material.dart';
import '../../../utils/theme/colors.dart';
import '../../../widgets/custom-button.dart';
import '../../../widgets/custom-container.dart';
import '../../loan/ui/loan_step_one.dart';

class ContinueScreen extends StatelessWidget {
  const ContinueScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(children: [
          Image.asset(
            "assets/images/continue-image.png",
            height: MediaQuery.of(context).size.height * .52,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text('Financial lifeline in your pocket.',
                    textAlign: TextAlign.center,
                    style: Theme.of(context)
                        .textTheme
                        .headlineLarge!
                        .copyWith(height: 1.2)),
              ),
              SizedBox(
                height: 18,
              ),
              Text(
                'Apply for loan instantly on your mobile.',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodySmall,
              ),
              SizedBox(
                height: 32,
              ),
              CustomContainer(
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
                          "assets/images/usa-flag.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("I live in:",
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(color: AppColors.greyBg)),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          "United States",
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
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Sign In",
                          style: Theme.of(context).textTheme.bodyLarge),
                      CustomButton(
                        width: MediaQuery.of(context).size.width * .3,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoanStepOne()),
                          );
                        },
                        child: Row(children: [
                          Text(
                            "Continue",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(color: AppColors.white),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Icon(
                            Icons.arrow_right_alt,
                          )
                        ]),
                      ),
                    ]),
              ),
            ]),
          ),
        ]),
      ),
    );
  }
}
