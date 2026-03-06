import 'package:flutter/material.dart';
import 'package:ss14chemtool/shared/ui/atoms/regular_text.dart';

class BufferItem extends StatelessWidget {
  final String name;
  final double amount;
  const BufferItem({super.key, required this.name, required this.amount});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              RegularText(text: name),
              Spacer(),
              RegularText(text: amount.toString()),
            ],
          ),
        ],
      ),
    );
  }
}
