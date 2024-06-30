import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../../Utils/Constants/app_colors.dart';

typedef OnSegmentChanged = void Function(int);

class GeneralScreen extends StatefulWidget {
  final OnSegmentChanged onSegmentChanged;

  const GeneralScreen({super.key, required this.onSegmentChanged});

  @override
  State<GeneralScreen> createState() => _GeneralScreenState();
}

class _GeneralScreenState extends State<GeneralScreen> {
  Map<String, bool> settings = {
    'Enable Keypad Theme': true,
    'EBT List': false,
    'Show Order Items by desc': true,
    'Show Items With Images': true,
    'Enable Swipe For Delete Item': true,
    'Print End Of Shift Receipt': true,
    'Show Total Discount on Statistics': true,
    'Show change Due pop-up': true,
    'Tap and Scan': false,
  };
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                ' Auto Lock Screen',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 50,
                width: 50,
                child: Switch(
                  value: true,
                  onChanged: (bool value) {
                    setState(() {
                      // enableTip = value;
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
                ' Select Timer',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.grey,
                ),
              ),
              DropdownButton<String>(
                value: 'Never',
                onChanged: (String? newValue) {
                  setState(() {
                    // selectTimer = newValue!;
                  });
                },
                items: <String>['Never', '1 min', '5 min', '10 min']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ],
          ),
          Text(
            'SALES AND PROMOTION',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: AppColors.secondaryColor,
            ),
          ),
          CheckboxListTile(
            title: Text('Sequence Base Promotion'),
            value: true,
            onChanged: (bool? value) {},
            controlAffinity: ListTileControlAffinity
                .leading, // place the checkbox at the start of the ListTile
          ),
          Text(
            'LOWEST PROMOTION',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: AppColors.secondaryColor,
            ),
          ),
          RadioListTile<String>(
            title: const Text('Merchant Benefit'),
            value: 'Merchant Benefit',
            groupValue: "promotionPreference",
            onChanged: (String? value) {
              setState(() {
                // promotionPreference = value!;
              });
            },
          ),
          RadioListTile<String>(
            title: const Text('Customer Benefit'),
            value: 'Customer Benefit',
            groupValue: "promotionPreference",
            onChanged: (String? value) {
              setState(() {
                // promotionPreference = value!;
              });
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                ' Primay Item Field',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.black54,
                ),
              ),
              DropdownButton<String>(
                value: 'UPC',
                onChanged: (String? newValue) {
                  setState(() {
                    // selectTimer = newValue!;
                  });
                },
                items: <String>['UPC']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                ' Search Filter Text',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.black54,
                ),
              ),
              DropdownButton<String>(
                value: 'Pack, Size...',
                onChanged: (String? newValue) {
                  setState(() {
                    // selectTimer = newValue!;
                  });
                },
                items: <String>['Pack, Size...']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width / 2,
                child: Text(
                  'Payment Tender shortcut for Cash Register',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.black54,
                  ),
                ),
              ),
              DropdownButton<String>(
                value: 'Card',
                onChanged: (String? newValue) {
                  setState(() {
                    // selectTimer = newValue!;
                  });
                },
                items: <String>['Card']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ],
          ),
          ListView(
            physics: NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            children: settings.keys.map((String key) {
              return CheckboxListTile(
                title: Text(key),
                value: settings[key],
                onChanged: (bool? value) {
                  setState(() {
                    settings[key] = value!;
                  });
                },
                controlAffinity: ListTileControlAffinity
                    .leading, // place the checkbox at the start of the ListTile
              );
            }).toList(),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                onPressed: () {
                  widget.onSegmentChanged(3);
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
                  widget.onSegmentChanged(4);
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
                  widget.onSegmentChanged(4);
                },
                child: Text(
                  'Done',
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
        ],
      ),
    );
  }
}
