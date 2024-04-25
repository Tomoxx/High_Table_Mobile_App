import 'package:flutter/material.dart';

class Contract extends StatelessWidget {
  final double amount;
  final String contractType;
  final String target;
  final String backgroundImage;

  const Contract({
    required this.amount,
    required this.contractType,
    required this.target,
    required this.backgroundImage,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color.fromARGB(255, 77, 6, 10),
      elevation: 4,
      margin: EdgeInsets.all(8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 4),
                  Text('Amount: \$${amount.toStringAsFixed(2)}',
                      style: TextStyle(color: Colors.white)),
                  SizedBox(height: 4),
                  Text('Contract Type: $contractType',
                      style: TextStyle(color: Colors.white)),
                  SizedBox(height: 4),
                  Text('Target Person: $target',
                      style: TextStyle(color: Colors.white)),
                ],
              ),
            ),
          ),
          SizedBox(width: 8),
          Expanded(
            flex: 1,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
              child: Image.asset(
                backgroundImage,
                fit: BoxFit.cover,
                width: 100,
                height: 100,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
