import 'package:flutter/material.dart';
import 'package:prac_4/modules/continue/ui/continue_screen.dart';

import '../../../utils/theme/colors.dart';
import '../../../widgets/custom-container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Column(children: [
        Image.asset("assets/images/homepage-image.png",
            height: MediaQuery.of(context).size.height * .34,
            fit: BoxFit.cover),
        Container(
          padding: const EdgeInsets.all(18.0),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xffffedef), Colors.white],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Column(children: [
            SizedBox(
              height: 32,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              CustomContainer(
                padding: EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                bgColor: AppColors.black,
                radius: 18,
                leading: Icon(
                  Icons.add,
                  color: AppColors.white,
                ),
                trailing: Text(
                  "Add Money",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(color: AppColors.white),
                ),
              ),
              CustomContainer(
                padding: EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                bgColor: AppColors.white,
                radius: 18,
                leading: Icon(
                  Icons.trending_up_outlined,
                  color: AppColors.black,
                ),
                trailing: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 14, vertical: 2),
                  child: Text(
                    "Transfer",
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(color: AppColors.black),
                  ),
                ),
              ),
              CustomContainer(
                padding: EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                bgColor: AppColors.white,
                radius: 18,
                leading: Icon(
                  Icons.more_horiz,
                  color: AppColors.black,
                ),
              ),
            ]),
            SizedBox(
              height: 16,
            ),
            CustomContainer(
              bgColor: AppColors.white,
              leading: Row(
                children: [
                  SizedBox(
                    height: 40,
                    width: 40,
                    child: Image.asset(
                      "assets/images/card.png",
                    ),
                  ),
                  SizedBox(
                    width: 18,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Upgrade your card",
                        style: Theme.of(context).textTheme.bodyMedium!,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "View more",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: AppColors.greyBg,
                            ),
                      ),
                    ],
                  ),
                ],
              ),
              trailing: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: AppColors.themeGrey, shape: BoxShape.circle),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ContinueScreen()),
                    );
                  },
                  child: Icon(
                    Icons.arrow_right_alt,
                    color: AppColors.black,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text(
                "All Activity",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              Text(
                "See More",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: AppColors.tertiaryTextColor,
                    ),
              ),
            ]),
            SizedBox(
              height: 8,
            ),
            CustomContainer(
              bgColor: AppColors.lightGreyBg,
              leading: Row(
                children: [
                  SizedBox(
                    height: 40,
                    width: 40,
                    child: Image.asset(
                      "assets/images/entertainment.png",
                    ),
                  ),
                  SizedBox(
                    width: 18,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Entertainment",
                        style: Theme.of(context).textTheme.bodyMedium!,
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        "Today, 15:45 PM",
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              color: AppColors.greyBg,
                            ),
                      ),
                    ],
                  ),
                ],
              ),
              trailing: Text(
                "-\$180",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: AppColors.redTextColor,
                    ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            CustomContainer(
              bgColor: AppColors.lightGreyBg,
              leading: Row(
                children: [
                  SizedBox(
                    height: 40,
                    width: 40,
                    child: Image.asset(
                      "assets/images/salary.png",
                    ),
                  ),
                  SizedBox(
                    width: 18,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Salary",
                        style: Theme.of(context).textTheme.bodyMedium!,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Yesterday, 01:12 AM",
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              color: AppColors.greyBg,
                            ),
                      ),
                    ],
                  ),
                ],
              ),
              trailing: Text(
                "+\$44",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: AppColors.greenTextColor,
                    ),
              ),
            ),
          ]),
        ),
      ]),
      Positioned(
        top: MediaQuery.of(context).size.height * .07,
        left: MediaQuery.of(context).size.height * .025,
        child: Row(children: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage("assets/images/profile.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              "Olivia Wilson",
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
        ]),
      ),
      Positioned(
        top: MediaQuery.of(context).size.height * .26,
        left: MediaQuery.of(context).size.height * .025,
        right: MediaQuery.of(context).size.height * .025,
        child: CustomContainer(
          bgColor: Colors.white,
          leading: Row(
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text("Total Balance:",
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(color: AppColors.greyBg)),
                SizedBox(
                  height: 6,
                ),
                Text(
                  "US\$8,323.12",
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(letterSpacing: 1),
                ),
              ]),
            ],
          ),
          trailing: Row(
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
                width: 8,
              ),
              Icon(
                Icons.keyboard_arrow_down_sharp,
                color: Colors.purple,
              ),
            ],
          ),
        ),
      ),
    ]);
  }
}
