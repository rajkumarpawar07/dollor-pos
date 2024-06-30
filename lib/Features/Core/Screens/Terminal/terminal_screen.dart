import 'dart:ffi';

import 'package:dollar_pos/Common/Widget/custom_TextField.dart';
import 'package:dollar_pos/Utils/Constants/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';

typedef OnSegmentChanged = void Function(int);

class TermainalScreen extends StatefulWidget {
  final OnSegmentChanged onSegmentChanged;

  const TermainalScreen({super.key, required this.onSegmentChanged});

  @override
  State<TermainalScreen> createState() => _TermainalScreenState();
}

class _TermainalScreenState extends State<TermainalScreen> {
  bool isSurchargeEnabled = false;
  bool isCashbackOffered = false;

  bool enableTip = false;
  bool customerSignature = false;
  bool dualPrice = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const SizedBox(
          height: 10,
        ),
        Text(
          ' DEVICES',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: AppColors.secondaryColor,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: DropdownButtonFormField<String>(
                decoration: const InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.0),
                  border: OutlineInputBorder(),
                  hintText: '< Select Device>',
                ),
                items: ['Device 1', 'Device 2', 'Device 3']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (value) {
                  // Handle printer selection
                },
              ),
            ),
            SizedBox(
              width: 10,
            ),
            SizedBox(
              height: 40,
              child: ElevatedButton(
                onPressed: () {
                  // Handle test print
                },
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(10),
                    foregroundColor: Colors.white,
                    backgroundColor: AppColors.primaryColor),
                child: const Text(
                  'Get IP',
                  style: TextStyle(fontSize: 12, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        SizedBox(
          height: 50,
          child: customTextField(hintText: 'Select IP Adress'),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 150,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Test Connection',
                  style: TextStyle(fontSize: 12, color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(0),
                    foregroundColor: Colors.white,
                    backgroundColor: AppColors.primaryColor),
              ),
            ),
            SizedBox(width: 10.0),
            SizedBox(
              width: 150,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Rboot',
                  style: TextStyle(fontSize: 12, color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(0),
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.black),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          ' Enable Tip',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: AppColors.secondaryColor,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              ' Tip',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 50,
              width: 50,
              child: Switch(
                value: enableTip,
                onChanged: (bool value) {
                  setState(() {
                    enableTip = value;
                  });
                },
              ),
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          ' CUSTOMER SIGNATURE',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: AppColors.secondaryColor,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              ' Customer Signature',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            SizedBox(
              width: 50,
              height: 50,
              child: Switch(
                value: customerSignature,
                onChanged: (bool value) {
                  setState(() {
                    customerSignature = value;
                  });
                },
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              ' Amount',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            SizedBox(
              width: 70,
            ),
            Expanded(
              child: customTextField(
                prefixIcon: Icon(
                  Iconsax.dollar_circle,
                  color: Colors.black54,
                ),
                hintText: '0.00',
              ),
            ),
          ],
        ),
        Text(
          ' DUAL PRICE',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: AppColors.secondaryColor,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                Text(
                  ' Dual \n Price',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                SizedBox(
                  width: 50,
                  height: 50,
                  child: Switch(
                    value: dualPrice,
                    onChanged: (bool value) {
                      setState(() {
                        dualPrice = value;
                      });
                    },
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
            Expanded(
              child: customTextField(
                prefixIcon: Icon(
                  Icons.percent,
                  color: Colors.black54,
                ),
                hintText: '0.00',
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          ' SURCHARGE',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: AppColors.secondaryColor,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              ' Supercharge',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            SizedBox(
              width: 50,
              height: 50,
              child: Switch(
                value: customerSignature,
                onChanged: (bool value) {
                  setState(() {
                    customerSignature = value;
                  });
                },
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              ' Superchnrge fees',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            SizedBox(
              width: 70,
            ),
            Expanded(
              child: customTextField(
                prefixIcon: Icon(
                  Iconsax.dollar_circle,
                  color: Colors.black54,
                ),
                hintText: '0.00',
              ),
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              ' Flat fee',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            SizedBox(
              width: 70,
            ),
            Expanded(
              child: customTextField(
                prefixIcon: Icon(
                  Iconsax.dollar_circle,
                  color: Colors.black54,
                ),
                hintText: '0.00',
              ),
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              ' Minimum fee to apply',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            SizedBox(
              width: 70,
            ),
            Expanded(
              child: customTextField(
                prefixIcon: Icon(
                  Iconsax.dollar_circle,
                  color: Colors.black54,
                ),
                hintText: '0.00',
              ),
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              ' Maximum fee to apply',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            SizedBox(
              width: 70,
            ),
            Expanded(
              child: customTextField(
                prefixIcon: Icon(
                  Iconsax.dollar_circle,
                  color: Colors.black54,
                ),
                hintText: '0.00',
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              ' OFFER CASHBACK',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: AppColors.secondaryColor,
              ),
            ),
            SizedBox(
              height: 50,
              width: 50,
              child: Switch(
                onChanged: null,
                value: true,
              ),
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ElevatedButton(
              onPressed: () {
                widget.onSegmentChanged(1);
              },
              child: Text(
                'previous',
                style: TextStyle(fontSize: 12, color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(0),
                foregroundColor: Colors.white,
                backgroundColor: Colors.black,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            ElevatedButton(
              onPressed: () {
                widget.onSegmentChanged(3);
              },
              child: Text(
                'Skip',
                style: TextStyle(fontSize: 12, color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(0),
                foregroundColor: Colors.white,
                backgroundColor: Colors.black,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            ElevatedButton(
              onPressed: () {
                widget.onSegmentChanged(3);
              },
              child: Text(
                'Next',
                style: TextStyle(fontSize: 12, color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(0),
                  foregroundColor: Colors.white,
                  backgroundColor: AppColors.primaryColor),
            ),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
        SizedBox(
          height: 30,
        ),
      ]),
    );
  }
}
