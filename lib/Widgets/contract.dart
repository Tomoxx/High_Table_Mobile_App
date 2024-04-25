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
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 4),
                  Text('Amount: \$${amount.toStringAsFixed(2)}'),
                  SizedBox(height: 4),
                  Text('Contract Type: $contractType'),
                  SizedBox(height: 4),
                  Text('Target Person: $target'),
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
    // return Container(
    //   width: MediaQuery.of(context).size.width,
    //   padding: EdgeInsets.all(16.0),
    //   margin: EdgeInsets.symmetric(vertical: 8.0),
    //   decoration: BoxDecoration(
    //     color: Colors.white,
    //     borderRadius: BorderRadius.circular(8.0),
    //     boxShadow: [
    //       BoxShadow(
    //         color: Colors.grey.withOpacity(0.5),
    //         spreadRadius: 2,
    //         blurRadius: 4,
    //         offset: Offset(0, 3),
    //       ),
    //     ],
    //   ),
    //   child: Column(
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     children: [
    //       Text(
    //         'Status: $status',
    //         style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
    //       ),
    //       SizedBox(height: 8.0),
    //       Text('Amount: \$${amount.toStringAsFixed(2)}'),
    //       SizedBox(height: 8.0),
    //       Text('Contract Type: $contractType'),
    //       SizedBox(height: 8.0),
    //       Text('Target Person: $target'),
    //     ],
    //   ),
    // );
  }
}
