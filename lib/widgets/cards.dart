import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:globesity/constants/constants.dart';
import 'package:globesity/constants/users.dart';
import 'package:globesity/webViews/web_view_container.dart';

profileCard(context) {
  return GestureDetector(
    onTap: () {},
    child: Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      width: MediaQuery.of(context).size.width - 50,
      height: 140,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Constant.greenColor.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 5,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width - 90,
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      Users.fullName.toString(),
                      style: const TextStyle(fontSize: 18),
                    ),
                    Icon(
                      Users.gender.toString().toLowerCase() == "female"
                          ? Icons.female
                          : Icons.male,
                      color: Users.gender.toString().toLowerCase() == "female"
                          ? Colors.pink
                          : Colors.blue,
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 4),
                  height: 1,
                  color: Colors.blueGrey,
                  width: MediaQuery.of(context).size.width - 150,
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  Users.email.toString().toLowerCase(),
                  style: const TextStyle(fontSize: 14),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  Users.mailing.toString() +
                      " - " +
                      Users.country.toString(),
                  style: const TextStyle(fontSize: 14),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  Users.mobile.toString(),
                  style: const TextStyle(fontSize: 14),
                ),
              ],
            ),
          ),
          Container(
            height: 150,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 18),
            color: Constant.greenColor,
            child: Center(
              child: RotatedBox(
                quarterTurns: 3,
                child: Text(
                  Users.status.toString(),
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

textCard(slug, msg) {
  return Container(
    margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
    child: Column(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 4),
            child: Text(
              slug + " : " + msg,
              style: const TextStyle(fontSize: 16),
            ),
          ),
        ),
        Container(
          height: 0.5,
          color: Colors.blue,
          margin: const EdgeInsets.symmetric(horizontal: 10),
        )
      ],
    ),
  );
}

homeCard(txt, img) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: Text(
          txt,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Constant.greenColor,
          ),
        ),
      ),
      const SizedBox(
        height: 20,
      ),
      Align(
        alignment: Alignment.center,
        child: Image(
          image: AssetImage(img),
        ),
      ),
      const SizedBox(
        height: 20,
      ),
    ],
  );
}

bootCampCard(title, price, description) {
  return Container(
    padding: const EdgeInsets.all(10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Constant.greenColor,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Image(image: AssetImage("assets/medicine.png")),
        const SizedBox(
          height: 10,
        ),
        Text(
          price,
          style: TextStyle(
            fontSize: 20,
            color: Constant.greenColor,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          description,
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          height: 0.5,
          color: Colors.black,
        )
      ],
    ),
  );
}

legalCard(title,url){
  return GestureDetector(
    onTap: (){
      Get.to(WebViewContainer(url, title));
    },
    child: Container(
      padding:const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const Image(image: AssetImage("assets/obese.png"),width: 50),
              const Icon(Icons.star_border_outlined),
              const SizedBox(width: 5,),
              Text(title,style: TextStyle(color: Constant.greenColor),),
            ],
          ),
          Row(
            children:const[
              Icon(Icons.more_vert)
            ],
          )

        ],
      ),
    ),
  );
}


userHomeCard(txt,slug, img) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: Text(
          txt,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Constant.greenColor,
          ),
        ),
      ),
      Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: Text(
          slug,
          style:const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: Colors.blueGrey,
          ),
        ),
      ),
      const SizedBox(
        height: 20,
      ),
      // ignore: sized_box_for_whitespace
      Container(
        height: 150,
        child: Align(
          alignment: Alignment.center,
          child: Image(
            image: AssetImage(img),
          ),
        ),
      ),
      const SizedBox(
        height: 20,
      ),
    ],
  );
}


profileBottom(name,val){
  return Container(
    width: 150,
    height: 120,
    padding: const EdgeInsets.symmetric(
        vertical: 10, horizontal: 10),
    margin: EdgeInsets.symmetric(vertical: 10),
    decoration: BoxDecoration(
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Constant.greenColor.withOpacity(0.5),
          spreadRadius: 3,
          blurRadius: 5,
          offset: const Offset(
              0, 3), // changes position of shadow
        ),
      ],
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(val.toString(),style:const TextStyle(fontSize: 18),textAlign: TextAlign.center,),
        Container(height: 1,color: Colors.black,width: 50,margin: EdgeInsets.symmetric(vertical: 10),),
        Text(name,textAlign: TextAlign.center,),
      ],
    ),
  );
}
