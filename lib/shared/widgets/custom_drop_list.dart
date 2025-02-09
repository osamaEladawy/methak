import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomDropList extends StatelessWidget {
  final String? value;
  final List<String> list;
  final ValueChanged<String> valueChanged;
  const CustomDropList({
    super.key,
    this.value,
    required this.valueChanged,
    required this.list,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
      ),
      padding: EdgeInsets.symmetric(horizontal: 5.w),
      child: DropdownButton(
          iconEnabledColor: Colors.green,
          dropdownColor: Color(0xFFB7C89C),
          borderRadius: BorderRadius.circular(15.r),
          iconSize: 35,
          value: value,
          items: [
            DropdownMenuItem<String>(
              value: 'Card',
              child: Text('Card'),
            ),
            DropdownMenuItem<String>(
              value: 'Option 2',
              child: Text('Option 2'),
            ),
            DropdownMenuItem<String>(
              value: 'Option 3',
              child: Text('Option 3'),
            ),
            DropdownMenuItem<String>(
              value: 'Option 4',
              child: Text('Option 4'),
            ),
            DropdownMenuItem<String>(
              value: 'Option 5',
              child: Text('Option 5'),
            ),
            DropdownMenuItem<String>(
              value: 'Option 6',
              child: Text('Option 6'),
            ),
            DropdownMenuItem<String>(
              value: 'Option 7',
              child: Text('Option 7'),
            ),
          ],
          //  list.map((title) {
          //   return DropdownMenuItem<String>(
          //     value: title,
          //     child: Text(title),
          //   );
          // }).toList(),
          onChanged: (newValue) {
            valueChanged(newValue!);
          }),
    );
  }
}
