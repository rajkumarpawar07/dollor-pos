import 'package:dollar_pos/Features/Core/Screens/Printer/Widgets/sample_reciept.dart';
import 'package:dollar_pos/Utils/Constants/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

typedef OnSegmentChanged = void Function(int);

class PrinterScreen extends StatelessWidget {
  final OnSegmentChanged onSegmentChanged;
  const PrinterScreen({super.key, required this.onSegmentChanged});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            Text(
              ' RECEIPT PRINT',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: AppColors.primaryColor),
            ),
            // Top section with dropdown and button
            Row(
              children: [
                Expanded(
                  child: DropdownButtonFormField<String>(
                    decoration: const InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                      border: OutlineInputBorder(),
                      hintText: 'Select Printer',
                    ),
                    items: ['Printer 1', 'Printer 2', 'Printer 3']
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
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  width: 120,
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle test print
                    },
                    child: Text(
                      'Test Print',
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(5),
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
              ' TEST PRINT',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: AppColors.primaryColor),
            ),
            // Top section with dropdown and button
            Row(
              children: [
                Expanded(
                  child: DropdownButtonFormField<String>(
                    decoration: const InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
                      border: OutlineInputBorder(),
                      hintText: 'Print theme',
                    ),
                    items: ['Theme 1', 'Theme 2', 'Theme 3']
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
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 80,
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle test print
                    },
                    child: Text(
                      'Save',
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(5),
                        foregroundColor: Colors.white,
                        backgroundColor: AppColors.primaryColor),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            // Divider

            // Receipt preview
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(' RECEIPT LOOKUP',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: Colors.black)),
                SizedBox(
                  width: 100,
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle test print
                    },
                    child: Text(
                      'CUSTOMISE',
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.all(5),
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.black),
                  ),
                ),
              ],
            ),

            // Receipt image or representation here
            // Since I cannot see the image, I'll use a placeholder
            ReceiptWidget(),

            SizedBox(
              height: 20,
            ),
            // Save button

            // Bottom navigation buttons (Skip and Next)
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () {
                    onSegmentChanged(2);
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
                    onSegmentChanged(2);
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
              height: 20,
            ),
          ],
        ));
  }
}
