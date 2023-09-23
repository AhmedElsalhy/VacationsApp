import 'package:flutter/material.dart';
import 'package:vacations_app/views/components/system_colors.dart';

class FilterTextFieldItem extends StatelessWidget {
  const FilterTextFieldItem({
    super.key,
    required this.imageIconItem,
    required this.labelText,
    required this.onPressed,
  });

  final Widget imageIconItem;
  final String labelText;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 181,
      child: TextField(
        decoration: InputDecoration(
          labelText: labelText,
          suffixIcon: IconButton(
            onPressed: onPressed,
            icon: imageIconItem,
          ),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
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
