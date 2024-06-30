import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
import 'package:dollar_pos/Features/Core/Screens/Display/display_screen.dart';
import 'package:dollar_pos/Features/Core/Screens/Printer/printer_screen.dart';
import 'package:dollar_pos/Utils/Constants/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../General/general_screen.dart';
import '../Terminal/terminal_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedSegment = 1;
  void _changeSegment(int segment) {
    setState(() {
      _selectedSegment = segment;
    });
  } // Default to the first segment.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text(
          'Dollar POS',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        actions: const [
          Icon(Iconsax.global_search4),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: CustomSlidingSegmentedControl<int>(
                innerPadding: const EdgeInsets.all(2.0),
                initialValue: _selectedSegment,
                padding: 18,
                children: const {
                  1: Text(
                    'Printer',
                    style: TextStyle(color: Colors.white),
                  ),
                  2: Text(
                    'Terminal',
                    style: TextStyle(color: Colors.white),
                  ),
                  3: Text(
                    'Display',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: Colors.white),
                  ),
                  4: Text(
                    'General',
                    style: TextStyle(color: Colors.white),
                  ),
                },
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(8),
                ),
                thumbDecoration: BoxDecoration(
                  color: AppColors.primaryColor, // Your app's primary color.
                  borderRadius: BorderRadius.circular(6),
                ),
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInToLinear,
                onValueChanged: (int newValue) {
                  _changeSegment(newValue);
                },
              ),
            ),
          ),
          Expanded(
            child: Container(
              // This Container can be replaced with your content based on the selected segment.
              child: _buildSegmentContent(_selectedSegment),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSegmentContent(int segment) {
    switch (segment) {
      case 1:
        return PrinterScreen(onSegmentChanged: _changeSegment);
      case 2:
        return TermainalScreen(onSegmentChanged: _changeSegment);
      case 3:
        return DisplayScreen(onSegmentChanged: _changeSegment);
      case 4:
        return GeneralScreen(onSegmentChanged: _changeSegment);
      default:
        return Center(child: Text('Unknown'));
    }
  }
}
