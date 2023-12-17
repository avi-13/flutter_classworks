import 'package:flutter/material.dart';

class DateAndTime extends StatefulWidget {
  const DateAndTime({super.key});

  @override
  State<DateAndTime> createState() => _DateAndTimeState();
}

class _DateAndTimeState extends State<DateAndTime> {
  DateTime selectedDate = DateUtils.dateOnly(DateTime.now());
  TimeOfDay selectedTime = TimeOfDay.now();

  Future<void> _selectDate() async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  Future<void> _selectTime() async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: selectedTime,
    );
    if (picked != null && picked != selectedTime) {
      setState(() {
        selectedTime = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Text("Time: ${selectedTime.format(context)}"),
                const Spacer(),
                ElevatedButton(
                  onPressed: _selectTime,
                  child: const Text("Change Time"),
                ),
              ],
            ),
            Row(
              children: [
                Text("Date: ${selectedDate.toLocal()}"),
                const Spacer(),
                ElevatedButton(
                  onPressed: _selectDate,
                  child: const Text("Change Date"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
