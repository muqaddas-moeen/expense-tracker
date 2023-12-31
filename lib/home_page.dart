import 'package:expense_tracker/add_expense_data.dart';
import 'package:expense_tracker/model/expense.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomaPage extends StatefulWidget {
  const HomaPage({super.key, required this.addExpenseData});

  final Widget addExpenseData;
  @override
  State<HomaPage> createState() => _HomaPageState();
}

class _HomaPageState extends State<HomaPage> {
  List<Expense> registeredExpenses = [
    Expense(
        title: 'flutter exam 1',
        amount: 2000.00,
        date: DateTime.now(),
        category: Category.work),
    Expense(
        title: 'flutter exam 2',
        amount: 2000.00,
        date: DateTime.now(),
        category: Category.work),
    Expense(
        title: 'flutter exam 3',
        amount: 2000.00,
        date: DateTime.now(),
        category: Category.work),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Track Your Expense!',
            style: GoogleFonts.dancingScript(
              color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            )),
      ),
      body: const Center(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const AddExpenseData()));
        },
        child: const Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
    );
  }
}
