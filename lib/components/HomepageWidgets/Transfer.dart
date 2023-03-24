import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:safe_sofware_test/utilis/ServiceWidget.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class Transfer extends StatelessWidget {
  final List icondetails = <IconData>[
    Icons.add,
    Boxicons.bx_transfer_alt,
    LineAwesomeIcons.telegram
  ];

  final List textdetails = [
    "Add User",
    "Own Account",
    "Third Party",
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
            child: GridView.builder(
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
