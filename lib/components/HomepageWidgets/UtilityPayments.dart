import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:safe_sofware_test/utilis/ServiceWidget.dart';
import 'package:flutter_boxicons/flutter_boxicons.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class UtilityPayments extends StatelessWidget {
  final List icondetails = <IconData>[
    Icons.phone_android,
    Icons.copy,
    FontAwesomeIcons.satelliteDish,
    MdiIcons.lightbulbOn,
  ];

  final List textdetails = [
    "A",
    "B",
    "C",
    "D",
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
      child: Row(
        children: [
          Container(
            height: 100,
            width: 370,
            child: GridView.builder(
              shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: icondetails.length,
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
