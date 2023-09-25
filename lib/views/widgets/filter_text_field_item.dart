import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:vacations_app/constants.dart';
import 'package:vacations_app/views/components/system_colors.dart';

class FilterTextFieldItem extends StatefulWidget {
  const FilterTextFieldItem({
    super.key,
    required this.labelText,
    this.focusNode,
    this.secondLabelText,
  });

  final FocusNode? focusNode;
  final String labelText;
  final String? secondLabelText;

  @override
  State<FilterTextFieldItem> createState() => _FilterTextFieldItemState();
}

class _FilterTextFieldItemState extends State<FilterTextFieldItem> {
  final TextEditingController dateController = TextEditingController();

  DateTime? date;

  @override
  void dispose() {
    dateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: dateController,
      focusNode: widget.focusNode,
      decoration: InputDecoration(
        label: Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: widget.labelText,
                style: kFirstTextFieldSpanStyle,
              ),
              TextSpan(
                text: widget.secondLabelText,
                style: kSecTextFieldSpanStyle,
              )
            ],
          ),
        ),
        suffixIcon: IconButton(
          onPressed: () {
            showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(2000),
              lastDate: DateTime(2100),
            ).then((selectedDate) {
              setState(() {
                date = selectedDate;
                dateController.text =
                    DateFormat('dd-MM-yyyy').format(selectedDate!);
              });
            });
          },
          icon: const CalendarIconWithCircleBackground(),
        ),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
      ),
    );
  }
}

class CalendarIconWithCircleBackground extends StatelessWidget {
  const CalendarIconWithCircleBackground({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      width: 25,
      decoration: const ShapeDecoration(
        color: firstBackgroundVacationsTypesColor,
        shape: CircleBorder(),
        image: DecorationImage(
          image: AssetImage(
            'images/calendarIcon.png',
          ),
        ),
      ),
    );
  }
}

class TextFieldIcon extends StatelessWidget {
  const TextFieldIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      width: 25,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'images/arrowTextFieldIcon.png',
          ),
        ),
      ),
    );
  }
}

class DropdownFormFieldUtils {
  DropdownButtonFormField<String> buildDropdownButtonFormField({
    required String? value,
    required List<String> options,
    required String labelText,
    required void Function(String?) onChanged,
  }) {
    return DropdownButtonFormField<String>(
      value: value,
      onChanged: onChanged,
      items: options.map((type) {
        return DropdownMenuItem<String>(
          value: type,
          child: Text(type),
        );
      }).toList(),
      decoration: InputDecoration(
        labelText: labelText,
        contentPadding: const EdgeInsets.symmetric(horizontal: 16),
        border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))),
      ),
    );
  }
}
