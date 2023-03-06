import 'package:flutter/material.dart';

SliverAppBar HomePageAppBar() {
  return SliverAppBar(
    backgroundColor: const Color.fromARGB(255, 93, 50, 185),
    elevation: 0,
    leading: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.arrow_back,
          color: Colors.white,
        )),
    centerTitle: false,
    title: const Text(
      "Hello,",
      style: TextStyle(color: Colors.white),
    ),
    bottom: AppBar(
      elevation: 0,
      toolbarHeight: kToolbarHeight + 150,
      backgroundColor: const Color.fromARGB(255, 93, 50, 185),
      flexibleSpace: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Account No: 10000708001",
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
                const Text(
                  "Balance : 5000",
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
              ],
            ),
            Container(
              height: 30,
              width: 30,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey,
              ),
              child: const Icon(
                Icons.person,
                color: Colors.white,
              ),
              alignment: Alignment.center,
            ),
          ],
        ),
      ),
      title: const Padding(
          padding: EdgeInsets.fromLTRB(0, 160, 0, 0),
          child: Text(
            "CAMEROON PAY",
            style: TextStyle(
              color: Colors.white,
              fontSize: 17,
            ),
          )),
      titleTextStyle: const TextStyle(letterSpacing: 1, fontWeight: FontWeight.w700),
    ),
  );
}
