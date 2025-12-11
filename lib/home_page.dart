import 'package:flutter/material.dart';
import 'dart:math';
import 'package:intl/intl.dart';
import 'package:flutter_application_1/result_page.dart';

class CalculateMortgagePage extends StatefulWidget {
  const CalculateMortgagePage({super.key});

  @override
  State<CalculateMortgagePage> createState() => _CalculateMortgagePageState();
}

class _CalculateMortgagePageState extends State<CalculateMortgagePage> {
  final _homePriceController = TextEditingController();
  final _downPaymentController = TextEditingController();
  double _interestRate = 10;
  int _loanYears = 15;
  double monthlyPayment = 0;

  final currencyFormat = NumberFormat.currency(symbol: '\$', decimalDigits: 0);

  void _calculateMortgage() {
    final homePrice = double.tryParse(_homePriceController.text) ?? 0;
    final downPayment = double.tryParse(_downPaymentController.text) ?? 0;
    final loanAmount = homePrice - downPayment;
    final monthlyRate = _interestRate / 100 / 12;
    final months = _loanYears * 12;

    if (loanAmount > 0 && monthlyRate > 0) {
      final payment = loanAmount *
          (monthlyRate / (1 - pow(1 + monthlyRate, -months)));

      setState(() {
        monthlyPayment = payment;
      });

      
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ResultPage(
            monthlyPayment: payment,
            years: _loanYears,
            rate: _interestRate,
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff7f2fa),
      appBar: AppBar(
        title: const Text('Hitung'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple.shade100,
      ),
      body: SafeArea( 
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Home Price
              TextField(
                controller: _homePriceController,
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
                maxLength: 15,
                decoration: InputDecoration(
                  counterText: '',
                  labelText: 'Harga Awal',
                  hintText: 'Masukkan Harga Awal', 
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              const SizedBox(height: 16),

              // Down Payment
              TextField(
                controller: _downPaymentController,
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
                maxLength: 15,
                decoration: InputDecoration(
                  counterText: '',
                  labelText: 'Uang Muka',
                  hintText: 'Masukkan Uang Muka',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              const SizedBox(height: 24),

              // Interest Rate Slider
              Text(
                'Interest Rate (${_interestRate.toStringAsFixed(1)}%)',
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              Slider(
                value: _interestRate,
                min: 1,
                max: 20,
                divisions: 19,
                activeColor: Colors.deepPurple,
                onChanged: (value) {
                  setState(() {
                    _interestRate = value;
                  });
                },
              ),
              const SizedBox(height: 24),

              // Loan Term Buttons
              const Text(
                'Loan Term (Years)',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Wrap( 
                alignment: WrapAlignment.center,
                spacing: 10,
                children: [10, 15, 20, 30].map((year) {
                  return ChoiceChip(
                    label: Text('$year'),
                    selected: _loanYears == year,
                    onSelected: (selected) {
                      setState(() {
                        _loanYears = year;
                      });
                    },
                    selectedColor: Colors.deepPurple,
                    backgroundColor: Colors.deepPurple.shade100,
                    labelStyle: TextStyle(
                      color:
                          _loanYears == year ? Colors.white : Colors.black,
                    ),
                  );
                }).toList(),
              ),
              const SizedBox(height: 32),

              ElevatedButton(
                onPressed: _calculateMortgage,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  'Calculate',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
