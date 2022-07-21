import 'package:flutter/material.dart';
import 'package:globesity/constants/constants.dart';
import 'package:globesity/widgets/appbar.dart';
import 'package:globesity/widgets/bottomNavigation.dart';
import 'package:globesity/widgets/drawer.dart';
import 'package:globesity/widgets/text_styles.dart';

import '../constants/users.dart';
import '../methods/user_methods.dart';
import '../widgets/image.dart';

class DailyRoutine extends StatefulWidget {
  const DailyRoutine({Key? key}) : super(key: key);

  @override
  State<DailyRoutine> createState() => _DailyRoutineState();
}

class _DailyRoutineState extends State<DailyRoutine> {
  TimeOfDay wakeupTime = TimeOfDay.now();
  TimeOfDay bedTime = TimeOfDay.now();

  _selectTime(BuildContext context, choice) async {
    if (choice == 1) {
      final TimeOfDay? timeOfDay = await showTimePicker(
        context: context,
        initialTime: wakeupTime,
        initialEntryMode: TimePickerEntryMode.dial,
      );
      if (timeOfDay != null && timeOfDay != wakeupTime) {
        setState(() {
          wakeupTime = timeOfDay;
          Users.wakeup = "${wakeupTime.hour}:${wakeupTime.minute}";
        });
      }
    } else {
      final TimeOfDay? timeOfDay = await showTimePicker(
        context: context,
        initialTime: bedTime,
        initialEntryMode: TimePickerEntryMode.dial,
      );
      if (timeOfDay != null && timeOfDay != bedTime) {
        setState(() {
          bedTime = timeOfDay;
          Users.bed = "${bedTime.hour}:${bedTime.minute}";
        });
      }
    }
  }

  checkTime(time) {
    if (time >= 24) {
      return time - 24;
    }
    if(time<0){
      return time+24;
    }
    return time;
  }

  @override
  Widget build(BuildContext context) {
    var wakeup;
    var bed;
    if (Users.wakeup.toString() == "null") {
      wakeup = "${wakeupTime.hour}:${wakeupTime.minute}".split(":");
      bed = "${bedTime.hour}:${bedTime.minute}".split(":");
    } else {
      wakeup = Users.wakeup.split(":");
      bed = Users.bed.split(":");
    }
    return Scaffold(
      appBar: appbar2("Daily Routine"),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          _selectTime(context, 1);
                        },
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          color: Constant.greenColor,
                          width: 180,
                          child: const Center(
                              child: Text(
                            "Choose Wakeup Time",
                            style: TextStyle(color: Colors.white),
                          )),
                        ),
                      ),
                      Users.wakeup.toString() == "null"
                          ? Text("${wakeupTime.hour}:${wakeupTime.minute}")
                          : Text(Users.wakeup),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          _selectTime(context, 2);
                        },
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          color: Constant.greenColor,
                          width: 180,
                          child: const Center(
                              child: Text(
                            "Choose Bed Time",
                            style: TextStyle(color: Colors.white),
                          )),
                        ),
                      ),
                      Users.bed.toString() == "null"
                          ? Text("${bedTime.hour}:${bedTime.minute}")
                          : Text(Users.bed),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () async {
                      await updateTime(wakeup, bed);
                      setState(() {});
                    },
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      color: Constant.greenColor,
                      width: 180,
                      child: const Center(
                          child: Text(
                        "Update Time",
                        style: TextStyle(color: Colors.white),
                      )),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Divider(color: Colors.black, thickness: 2),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
              ExpansionTile(
                title: Text(wakeup[0].toString() +
                    ":" +
                    wakeup[1] +
                    " Wake-up: bathroom, red gel, stretch"),
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        safeText(
                          "Start bootcamp procedure as soon as you wake-up.",
                        ),
                        Text(
                          "#1 BATHROOM",
                          style: blueHeading(),
                        ),
                        safeText(
                          "Empty yourself. Weigh and see the magic. How much weight have you lost overnight?",
                        ),
                        Text(
                          "#2 RED GEL (Natural Monastic Fiber)",
                          style: redHeading(),
                        ),
                        safeText(
                            "Consume as much as you can (try to consume ¾ of the container). Swallow a spoonful with big sips of water. You will drink an entire bottle of water in the morning process. How to prepare?   How to take?"),
                        Text(
                          "#3 STRETCH",
                          style: blueHeading(),
                        ),
                        safeText(
                          "Stretch for 4-5 minutes. Swing left and right to strengthen hips. Bend backward. Bend forward and attempt to touch your toes. Note your daily progress from yesterday as you become more agile.",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              ExpansionTile(
                title: Text(
                    checkTime((int.tryParse(wakeup[0])! + 2)).toString() +
                        ":" +
                        wakeup[1]),
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      children: [
                        Text(
                          "Red Pill (Willpower)",
                          style: redText(),
                        ),
                        const Text(" + "),
                        Text(
                          "Yellow Pill (Mighty)",
                          style: yellowText(),
                        ),
                      ],
                    ),
                  ),
                  safeText("Drink water bottle #2 over the next 30 minutes."),
                  img("pills.png"),
                ],
              ),
              ExpansionTile(
                title: Text(
                    checkTime((int.tryParse(wakeup[0])! + 3)).toString() +
                        ":" +
                        wakeup[1]),
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Breathing Exercise",
                          style: darkBlueText(),
                        ),
                        safeText(
                            "Find a place where you can focus for 3 minutes and breathe in as deep as you can and hold your breath for as long as you can (measure the seconds). Release slowly. Wait 30 seconds and repeat two more times. Improve the durations of “holding your breath” from session to session. You will feel calmer as it will help you in the entire procedure."),
                        img("breathe_lose.png"),
                      ],
                    ),
                  ),
                ],
              ),
              ExpansionTile(
                title: Text(
                    checkTime((int.tryParse(wakeup[0])! + 4)).toString() +
                        ":" +
                        wakeup[1]),
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "First Food Intake",
                          style: darkBlueText(),
                        ),
                        safeText(
                            "Drink bottle #3 of water 30 min before you eat. Prepare healthy food. Cut small bites. Chew each small bite for 60 sec (1 min). Eat very slowly over the next 10-15 min."),
                        img("plate.png"),
                      ],
                    ),
                  )
                ],
              ),
              ExpansionTile(
                title: Text(
                    checkTime((int.tryParse(wakeup[0])! + 6)).toString() +
                        ":" +
                        wakeup[1]),
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Pink Cravings Drink (Good Life Cravings Or Craving Life",
                          style: pinkText(),
                        ),
                        safeText(
                            "Drink the entire bottle and continue to shake it so you consume all the powder including the residual. You can prepare it in any container."),
                      ],
                    ),
                  )
                ],
              ),
              ExpansionTile(
                title: Text(
                    checkTime((int.tryParse(wakeup[0])! + 7)).toString() +
                        ":" +
                        wakeup[1]),
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Stretching",
                          style: blueHeading(),
                        ),
                        safeText(
                            "STRETCH for a few minutes. Sit and stand. Sit and stand. Click for more STRETCHING activity. Drink water bottle #4 over the next hr. "),
                        safeText(
                          "Stretching is part of your new lifestyle",
                        )
                      ],
                    ),
                  )
                ],
              ),
              ExpansionTile(
                title: Text(
                    checkTime((int.tryParse(wakeup[0])! + 8)).toString() +
                        ":" +
                        wakeup[1]),
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Red Pill (Willpower)",
                              style: redHeading(),
                            ),
                            const Text(" + "),
                          ],
                        ),
                        Text(
                          "Yellow Pill (Mighty)",
                          style: yellowHeading(),
                        ),
                        safeText(
                            "Drink water bottle #5 over the next 30 minutes."),
                        img("pills.png"),
                      ],
                    ),
                  ),
                ],
              ),
              ExpansionTile(
                title: Text(
                    checkTime((int.tryParse(wakeup[0])! + 10)).toString() +
                        ":" +
                        wakeup[1]),
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Pink Cravings Drink (Good Life Cravings Or Craving Life)",
                          style: pinkText(),
                        ),
                        safeText(
                            "Drink the entire bottle and continue to shake it so you consume all the powder including the residual. You can prepare it in any container."),
                      ],
                    ),
                  )
                ],
              ),
              ExpansionTile(
                title: Text(checkTime((int.tryParse(bed[0])! - 4)).toString() +
                    ":" +
                    bed[1]),
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Last Food Intake",
                          style: blueHeading(),
                        ),
                        safeText(
                            "30 min before you eat, drink water bottle #6. Remember: Chew a small bite for 60 sec (1min) and enjoy the flavor. Drink 2-3 sips of water. Pause for 1 minute. Eat very slowly over 10-20 min."),
                      ],
                    ),
                  )
                ],
              ),
              ExpansionTile(
                title: Text(checkTime((int.tryParse(bed[0])! - 2)).toString() +
                    ":" +
                    bed[1]),
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Heavenly White Or Be Happy Pills",
                          style: greyText(),
                        ),
                        safeText(
                          "1 or 2 pills white pills and half a bottle of water or more.",
                        ),
                        img("whitepills.png"),
                        Text(
                          "Optional Pink Cravings Drink",
                          style: pinkText(),
                        ),
                        img("drink.png"),
                      ],
                    ),
                  )
                ],
              ),
              ExpansionTile(
                title: const Text("Bedtime Procedure #1"),
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        safeText(
                            "Break 3 “Blessed Night” tablets into 6 halves + 1 purple (Invigorator or Sacred Purple)  pill + drink ½ to a full bottle of water."),
                        img("purple.png"),
                        Text(
                          "Weigh Yourself For The Log",
                          style: blueHeading(),
                        ),
                        img("weigh.png"),
                      ],
                    ),
                  )
                ],
              ),
              ExpansionTile(
                title: const Text("Bedtime Procedure #2"),
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Lay Down In Bed",
                          style: blueHeading(),
                        ),
                        Text(
                          "Breathing Exercise",
                          style: blueText(),
                        ),
                        safeText(
                            "Breathe in as deep as you can and hold your breath for as long as you can (measure the seconds). Release slowly. Wait 30 seconds and repeat two more times. Improve the durations of “holding your breath” from session to session. You will feel calmer as it will help you in the entire procedure.")
                      ],
                    ),
                  )
                ],
              ),
              ExpansionTile(
                title: const Text("Get 8 Hours of Good Sleep"),
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        safeText(
                            "You will sleep on your back. If you can, have a pillow under your legs to force you to sleep on your back. This is important so you can breathe better because 86% of the fat that will dissipate from your body via your breathing and 14% via urination and sweat."),
                        img("sleep.png"),
                        safeText(
                            "If you followed the instructions (including the activity), expect to urinate more often at night as a possible indication of higher metabolism.\nIn the morning you will go to the bathroom and empty yourself before you weight the new smaller you.\nEnjoy the healthy change and do not take it for granted. Nothing short of a fully healthy life and weight.")
                      ],
                    ),
                  )
                ],
              ),
              ExpansionTile(
                title: const Text("Dance Exercise - Wildly in Private"),
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        safeText(
                            "Depends on the intensity of your dance, dance exercise once or twice a day.\nYou should enjoy it so much that you will go for 15-30 min without noticing. When you feel out of breath, slow down but don’t stop."),
                        img("dance.png"),
                      ],
                    ),
                  )
                ],
              ),
              ExpansionTile(
                title: const Text("Soul Cleanser"),
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        safeText(
                            "The Soul Cleanser is best used when fasting and on weekends.\nIt should be taken on an empty stomach and no food for the next four to six hours (or not at all when you fast).\nIn a blender add:\n– 15 to 16 oz water\n– A whole lemon, lime, or orange cut in two (include the peel)\n– A scoop of Soul Cleanser\n– Ice (optional)\nBlend and drink."),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      drawer: drawer(context),
      bottomNavigationBar: bottomNavigation(),
    );
  }
}



