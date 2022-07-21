import 'package:flutter/material.dart';
import 'package:globesity/widgets/appbar.dart';
import 'package:globesity/widgets/bottomNavigation.dart';
import 'package:globesity/widgets/drawer.dart';

import '../constants/constants.dart';
import '../widgets/text_styles.dart';

class HealthyLifeStyle extends StatefulWidget {
  const HealthyLifeStyle({Key? key}) : super(key: key);

  @override
  State<HealthyLifeStyle> createState() => _HealthyLifeStyleState();
}

class _HealthyLifeStyleState extends State<HealthyLifeStyle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appbar2("Healthy Lifestyle"),
        body: Container(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20,),
                const Text("NO COFFEE NO FRIED/GREASY FOODS NO JUNK FOODS NO FOOD WITHIN 4 HOURS OF WAKING UP OR BEDTIME NO DAIRY 6 BOTTLES OF WATER DAILY MINIMUM"),
                const Align(alignment: Alignment.center, child: Image(image: AssetImage("assets/health1.png"),width: 200,)),
                const SizedBox(height: 30,),
                Text("NO COFFEE",style: primaryHeading(),),
                const SizedBox(height: 20,),
                const Align(alignment: Alignment.center, child: Image(image: AssetImage("assets/health2.png"),width: 200,)),
                const Text("AVOID caffeine. Coffee intensifies cravings and may be destructive to your new healthy life. Caffeine drinks such as coffee, soda, and some teas, increase cravings, and are counterproductive to your health goals.\nOccasionally, you may drink decaf coffee. No cow milk or cream which can be substituted with almond milk or alike.\nLearn to like hot tea is healthy.\nScientific explanation: Caffeine suppresses leptin, a hormone responsible for increasing the metabolism of fats and promoting satiety (Westerterp-Plantenger 2005). Caffeine, the world’s most psychoactive substance (Mednick 2008), is a stimulant of the central nervous system (Nehlig 1992). Although caffeine may increase your alertness and mental concentration, it also has negative side effects like, anxiety, disrupted sleep, and dehydration, all of which will affect your long term weight loss goals (Snel 2011).",),
                const SizedBox(height: 30,),
                Text("NO FRIED/GREASY FOODS",style: primaryHeading(),),
                const SizedBox(height: 20,),
                const Align(alignment: Alignment.center, child: Image(image: AssetImage("assets/health3.png"))),
                const Text("AVOID ALL fried or greasy foods such as hamburgers, french fries fast foods, fried items, pastries, etc.). Along with weight gain, they may also cause uncomfortable gas and/or diarrhea."),
                const SizedBox(height: 30,),
                Text("NO JUNK – AVOID PROCESSED FOODS", style: primaryHeading(),),
                const SizedBox(height: 20,),
                const Align(alignment: Alignment.center, child: Image(image: AssetImage("assets/health4.png"),width: 200,)),
                const Text("Avoid the junk and processed food aisle\n\nJunk food are bad for your health for many reasons and will spice your sugar levels making you more addicted to sugar and fat."),
                const SizedBox(height: 30,),
                Text("LIMITED EATING SPAN",style: primaryHeading(),),
                const SizedBox(height: 20,),
                const Text("You may eat only in this time span: 4 hours after you wake up and stop any food intake 4 hours before bedtime."),
                const Align(alignment: Alignment.center, child: Image(image: AssetImage("assets/health5.png"),width: 200,)),
                const Text("Your first meal will be 4 hours after you wake up and your last food intake MUST BE 4 hours before bedtime. This is crucial for your healthy weight goal."),
                const SizedBox(height: 30,),
                Text("NO DAIRY",style: primaryHeading(),),
                const SizedBox(height: 20,),
                const Text("Cow milk is for cows and is intended to increase the size of the calf from 45 lbs to 500 lbs. It has most of the growth elements to make you fat.\nUsing the supplements provided to Bootcamp members, cheese, milk or yogurt can cause a bloated stomach, excess gas or even diarrhea.\nDid you know? Dairy products increase inflammation in the body (Dandona 2004) and are significantly associated with weight gain (Berkey 2005). Most dairy products are high in fat, making it harder for you to lose weight. Replace regular milk with almond milk, which is rich in calcium and low in calories and no growth hormones.\n\nScientific explanation: Dairy includes any products from a bovine mammal, including milk, yogurt, cream, cheese, ice cream, and some chocolates. Full-fat dairy products typically contain >4% fat per 100g, and while their low-fat alternatives contain less fat, they generally contain more sugar.\nStopping weight gain\nMilk consumption significantly increases body mass index (BMI) (p<0.05) (Berkey 2005).\nDairy products contain estrone, one of the estrogen hormones, which may increase body weight (Remesar 1999). Estrogen plays an important role in regulating energy expenditure and decreases the accumulation of ectopic lipids (João 2013)."),
                const SizedBox(height: 30,),
                Text("NO SODAS",style: primaryHeading(),),
                const SizedBox(height: 20,),
                const Align(alignment: Alignment.center, child: Image(image: AssetImage("assets/health6.png"),width: 200,)),
                const Text("NO SODA of any kind. The sugary drinks are destructive to your lifestyle change and the gases are badly interacting with the supplements taken by members of the GLOBESITY Bootcamp."),
                const SizedBox(height: 30,),
                Text("7 BOTTLES OF WATER DAILY MINIMUM",style: primaryHeading(),),
                const SizedBox(height: 20,),
                const Align(alignment: Alignment.center, child: Image(image: AssetImage("assets/health7.png"),width: 200,)),
                const SizedBox(height: 30,),
                Text("SMALL PORTIONS",style: primaryHeading(),),
                const SizedBox(height: 20,),
                const Align(alignment: Alignment.center, child: Image(image: AssetImage("assets/health8.png"),width: 200,)),
                const Text("Learn to chew slowly and enjoy the taste of the food rather than satisfying yourself with “exploded stomach”.")
              ],
            ),
          ),
        ),
        drawer: drawer(context),
        bottomNavigationBar: bottomNavigation());
  }
}


