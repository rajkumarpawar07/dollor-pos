import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReceiptWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Gadgets', style: TextStyle(fontWeight: FontWeight.bold)),
            Text('123 AI Avenue, Tech City'),
            Text('Phone: 123-456-7890'),
            SizedBox(height: 20),
            Text('Date: March 21, 2024  04:23 AM'),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Quantum Computer'),
                Text('1 x \$1999.99'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('VR Headset'),
                Text('2 x \$399.99'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Wireless Charger'),
                Text('1 x \$59.99'),
              ],
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Subtotal'),
                Text('\$2859.97'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Tax'),
                Text('\$171.60'),
              ],
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Total'),
                Text('\$3031.57',
                    style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
            Divider(),
            Text('Payment Method: Credit Card ****1234'),
            SizedBox(height: 20),
            Center(
              child: BarcodeWidget(), // Placeholder for a barcode widget
            ),
          ],
        ),
      ),
    );
  }
}

// Placeholder widget for a barcode
class BarcodeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      height: 80.0,
      width: double.infinity,
      child: Center(
        child: Text('Barcode would be displayed here',
            style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
