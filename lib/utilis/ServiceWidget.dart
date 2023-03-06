import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:safe_sofware_test/utilis/colors.dart';

class ServiceWidget extends StatelessWidget {
  final IconData iconData;
  final String text;
  ServiceWidget({required this.iconData, required this.text});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 5, 5, 0),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 10,
                      color: Colors.grey.shade400,
                      offset: const Offset(-3, 3),
                    )
                  ],
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                    colors: [
                      Colors.grey.shade400,
                      Colors.white,
                    ],
                    stops: [0.1, 0.6],
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                  )),
              child: Icon(
                iconData,
                color: mycolor.primarycolor,
              ),
              alignment: Alignment.center,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                text,
                maxLines: 1,
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1),
              ),
            )
          ],
        ),
      ),
    );
  }
}
