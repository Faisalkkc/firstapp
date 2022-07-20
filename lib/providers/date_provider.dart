import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DateProvider extends ChangeNotifier {
  DateTime? _selectedDate;

  DateTime? get selectedDate {
    return _selectedDate;
  }

  void _pickDateDialog(BuildContext context) {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1950),
      lastDate: DateTime.now(),
    ).then((pickedDate) {
      if (pickedDate != null) {
        _selectedDate = pickedDate;
        notifyListeners();
      }
    });
  }
}
