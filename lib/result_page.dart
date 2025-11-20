
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ResultPage extends StatelessWidget {
  final double monthlyPayment;
  final int years;
  final double rate;

  const ResultPage({
    super.key,
    required this.monthlyPayment,
    required this.years,
    required this.rate,
  });

  @override
  Widget build(BuildContext context) {
    final formatter = NumberFormat.currency(symbol: '\$', decimalDigits: 0);
    return Scaffold(
      backgroundColor: const Color(0xff2e2252),
      appBar: AppBar(
        backgroundColor: Colors.deepPurple.shade300,
        title: const Text('Pembayaran Bulanan'),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, 
            children: [
              Text(
                formatter.format(monthlyPayment),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 42,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Loan Duration: $years years\nInterest Rate: ${rate.toStringAsFixed(1)}%',
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.white70, fontSize: 16),
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.deepPurple,
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text('Recalculate'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


