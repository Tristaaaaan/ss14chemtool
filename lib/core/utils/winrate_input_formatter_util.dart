import 'package:flutter/services.dart';

class AmountFormatter extends TextInputFormatter {
  final bool integersOnly;
  final double max;
  final double min;
  final int decimalPlaces;

  const AmountFormatter({
    this.integersOnly = false,
    this.max = 100,
    this.min = 0,
    this.decimalPlaces = 2,
  });

  static final _decimalRegex = RegExp(r'^(?:\d+|\d+\.\d*|\.\d+)?$');
  static final _integerRegex = RegExp(r'^\d*$');

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    final text = newValue.text;

    if (text.isEmpty) return newValue;

    if (integersOnly) {
      if (_integerRegex.hasMatch(text)) {
        final value = int.tryParse(text);
        if (value == null || (value >= min && value <= max)) {
          return newValue;
        }
      }
      return oldValue;
    } else {
      if (_decimalRegex.hasMatch(text)) {
        if (text.contains('.')) {
          final parts = text.split('.');
          if (parts.length > 1 && parts[1].length > decimalPlaces) {
            return oldValue;
          }
        }

        final value = double.tryParse(text);
        if (value == null || (value >= min && value <= max)) {
          return newValue;
        }
      }
      return oldValue;
    }
  }
}
