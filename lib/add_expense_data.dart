import 'package:flutter/material.dart';

class AddExpenseData extends StatefulWidget {
  const AddExpenseData({super.key});

  @override
  State<AddExpenseData> createState() => _AddExpenseDataState();
}

class _AddExpenseDataState extends State<AddExpenseData> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text('Title '),
          const Text('Amount '),
          const Text('Data Time'),
          const Text('Category'),
          ElevatedButton(onPressed: () {}, child: const Text('Add'))
        ],
      ),
    );
  }
}
