import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SmartDeviceBox2 extends StatelessWidget {
  final String smartDeviceName;
  final String iconPath;
  final bool powerOn;
  void Function(bool)? onChanged;

  SmartDeviceBox2({
    super.key,
    required this.smartDeviceName,
    required this.iconPath,
    required this.powerOn,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        decoration: BoxDecoration(

          color: powerOn ? Colors.grey[900] : Color.fromARGB(44, 164, 167, 189),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Icon - Aligned to the left
            Image.asset(
              iconPath,
              height: 65,
              color: powerOn ? Colors.white : Colors.grey.shade700,
            ),

            SizedBox(width: 20),

            // Smart device name + switch - Aligned to the center
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 10), // Add left padding
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      smartDeviceName,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                        color: powerOn ? Colors.white : Colors.black,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 50), // Add left padding
                      child: Transform.rotate(
                        angle: pi / 1,
                        child: CupertinoSwitch(
                          value: powerOn,
                          onChanged: onChanged,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Empty container for spacing - Aligned to the right
            Container(),
          ],
        ),
      ),
    );
  }
}
