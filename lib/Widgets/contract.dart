import 'package:flutter/material.dart';

class Contract extends StatelessWidget {
  final String status;
  final double amount;
  final String contractType;
  final String target;

  const Contract({
    required this.status,
    required this.amount,
    required this.contractType,
    required this.target,
  });
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(16.0),
      margin: EdgeInsets.symmetric(vertical: 8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 4,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Status: $status',
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8.0),
          Text('Amount: \$${amount.toStringAsFixed(2)}'),
          SizedBox(height: 8.0),
          Text('Contract Type: $contractType'),
          SizedBox(height: 8.0),
          Text('Target Person: $target'),
        ],
      ),
    );
  }
}