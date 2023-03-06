import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:safe_sofware_test/utilis/AppBar.dart';
import 'package:safe_sofware_test/utilis/Titles.dart';
import 'package:safe_sofware_test/components/HomepageWidgets/Banking.dart';
import 'package:safe_sofware_test/components/HomepageWidgets/Transfer.dart';
import 'package:safe_sofware_test/components/HomepageWidgets/UtilityPayments.dart';
import 'package:safe_sofware_test/utilis/colors.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: CustomScrollView(
        slivers: [
          HomePageAppBar(),
          SliverList(
              delegate: SliverChildListDelegate([
            Titles(title: "Banking"),
            Banking(),
            Titles(title: "Transfer"),
            Transfer(),
            Titles(title: "Utility Payments"),
            UtilityPayments(),
          ]))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.mic,
          color: Colors.white,
        ),
        mini: true,
        backgroundColor: mycolor.primarycolor,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    ));
  }
}
