import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:safe_sofware_test/utilis/ServiceWidget.dart';

class Banking extends StatelessWidget {
  final List icondetails = <IconData>[
    Icons.account_balance,
    Icons.menu_book,
    Icons.manage_search
  ];

  final List textdetails = [
    "Account",
    "Passbook",
    "Search",
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
      child: Row(
        children: [
          Container(
            height: 100,
           width: 340,
            child:
             GridView.builder(
              // scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 1 / 3,
                  crossAxisSpacing: 2),
              itemCount: icondetails.length,

              itemBuilder: (context, index) {
                return ServiceWidget(
                    iconData: icondetails[index], text: textdetails[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
