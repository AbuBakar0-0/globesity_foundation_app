import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:globesity/constants/constants.dart';
import 'package:globesity/webViews/web_view_container.dart';
import 'package:globesity/widgets/appbar.dart';
import 'package:globesity/widgets/bottomNavigation.dart';
import 'package:globesity/widgets/cards.dart';
import 'package:globesity/widgets/drawer.dart';

class JoinBootcamp extends StatefulWidget {
  const JoinBootcamp({Key? key}) : super(key: key);

  @override
  State<JoinBootcamp> createState() => _JoinBootcampState();
}

class _JoinBootcampState extends State<JoinBootcamp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar2("Join the Bootcamp"),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              GestureDetector(
                onTap: (){
                  Get.to(WebViewContainer(Url.paymentForm, "Join the Bootcamp"));
                },
                child: Container(
                  child: Column(
                    children: [
                      bootCampCard("Premium", "\$490.00", "7 months plan: Initial \$490 and \$32 x 4 months.\nIncludes 4 months kit supplies of supplements and 7 months support.\nGood progress food bonus: sodium-free salt + Zero Calorie Desert (400 servings) + Cleanser Smoothie.\nExtensive Weight-Analysis sent to your personal doctor.\nDietitian assistance 6 months.\nFoundation’s doctor review* your health application.\nEarnings: become a coach of new members."),
                      bootCampCard("Ambitious", "\$390.00", "6 months plan: initial \$390 and then \$28 x 4 months.\nIncludes 4 months kit supplies and 5 months support.\nGood progress food bonus: sodium-free salt + Zero Calorie Desert (400 servings).\nExtensive Weight-Analysis can be sent to your personal doctor.\nAccess to advanced health, medical and longevity education.\nEarnings: become a coach of new members."),
                      bootCampCard("Custom ", "\$290.00", "6 months membership; 4 months strongest supply; all food education; personal coaching - \$290 + shipping (\$15 US, \$35 CA) now and 4 monthly payments of \$32.\nGood progress food bonus: sodium-free salt + Zero Calorie Desert (400 servings) + Cleanser Smoothie.\nExtensive Weight-Analysis sent to your personal doctor.\nDietitian assistance 6 months.\nFoundation’s doctor review* your health application.\nEarnings: become a coach of new members."),
                      bootCampCard("Devoted", "\$290.00", "5 months plan: Initial \$290 and \$26 x for 4 months.\nIncludes 4 months kit supplies and 4 months support.\nBonus for good progress: sodium-free salt.\nAccess to advanced health, medical and longevity education\nMonthly for posting inspiring progress and the rest for achieving your healthy weight.\nEarnings+: become a coach of new members."),
                      bootCampCard("Try", "\$210.00", "Initial \$210 and \$24 x 2 months. \nIncludes 2 months supply of supplements.\nHealthy foods: none.\nWeight-Analysis sent to your doctor.\nAccess to advanced health, medical and longevity education.\nAccess to professional pages.\nCoach & earning: none."),
                    ],
                  ),
                ),
              ),
              bootCampCard("Free", "Free", "We let the world have free access to:\nBootcamp for inspiration and interaction with other members.\nFollow Bootcamp RULES on their own (no coaching).\nEnjoy Bootcamp exercise.")
            ],
          ),
        ),
      ),
      drawer: drawer(context),
      bottomNavigationBar: bottomNavigation(),
    );
  }
}
