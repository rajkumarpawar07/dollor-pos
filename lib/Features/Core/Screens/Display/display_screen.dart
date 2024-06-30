import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../../Utils/Constants/app_colors.dart';

typedef OnSegmentChanged = void Function(int);

class DisplayScreen extends StatefulWidget {
  final OnSegmentChanged onSegmentChanged;

  const DisplayScreen({super.key, required this.onSegmentChanged});

  @override
  State<DisplayScreen> createState() => _DisplayScreenState();
}

class _DisplayScreenState extends State<DisplayScreen> {
  bool cartScreen = false;
  bool itemSurcharge = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        Text(
                          'CUSTOMER SCREEN  ',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: AppColors.secondaryColor,
                          ),
                        ),
                      ],
                    ),
                    ...List.generate(
                      7,
                      (index) => Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Option ${index + 1}',
                            style: TextStyle(
                              color: Colors
                                  .black, // Use your AppColors.primaryColor
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Switch(
                            value: true,
                            onChanged: (bool value) {
                              // Handle switch toggle
                            },
                            activeColor:
                                Colors.red, // Use your AppColors.primaryColor
                          ),
                        ],
                      ),
                    ),
                    // Row(
                    //   crossAxisAlignment: CrossAxisAlignment.center,
                    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //   children: [
                    //     SizedBox(
                    //       width: 5,
                    //     ),
                    //     const Text('Item Supercharge'),
                    //     const SizedBox(
                    //       width: 10,
                    //     ),
                    //     SizedBox(
                    //       height: 50,
                    //       width: 50,
                    //       child: Switch(
                    //         value: true,
                    //         onChanged: (bool value) {},
                    //       ),
                    //     )
                    //   ],
                    // ),
                  ]),
              SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'IMAGE',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: AppColors.secondaryColor,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Image.network(
                    'https://via.placeholder.com/150', // Placeholder image
                    width: 150,
                    height: 150,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    width: 150,
                    child: Text(
                      'Tap the image to upload new',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                onPressed: () {
                  widget.onSegmentChanged(2);
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
        ],
      ),
    );
  }
}
