import 'package:flutter/material.dart';
import 'package:globesity/constants/constants.dart';
import 'package:globesity/widgets/appbar.dart';
import 'package:globesity/widgets/bottomNavigation.dart';
import 'package:globesity/widgets/cards.dart';
import 'package:globesity/widgets/drawer.dart';

class LegalContract extends StatefulWidget {
  const LegalContract({Key? key}) : super(key: key);

  @override
  State<LegalContract> createState() => _LegalContractState();
}

class _LegalContractState extends State<LegalContract> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar2("Legal-About-Contact"),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            legalCard("About",Url.about),
            legalCard("Privacy",Url.privacy),
            legalCard("Terms & Conditions",Url.terms),
            legalCard("Contact",Url.contact),
          ],
        ),
      ),
      drawer: drawer(context),
      bottomNavigationBar: bottomNavigation(),
    );
  }
}
