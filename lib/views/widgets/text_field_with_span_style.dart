import 'package:flutter/material.dart';
import 'package:vacations_app/base/base_view/base_view.dart';
import 'package:vacations_app/base/base_view_models/base_view_model.dart';
import 'package:vacations_app/constants.dart';

class TextFieldWithSpanStyleAndIcons extends StatefulWidget {
  const TextFieldWithSpanStyleAndIcons({
    super.key,
    required this.firstTextSpan,
    this.imageIconItem,
    this.focusNode,
  });

  final FocusNode? focusNode;
  final String firstTextSpan;
  final Widget? imageIconItem;

  @override
  State<TextFieldWithSpanStyleAndIcons> createState() =>
      _TextFieldWithSpanStyleAndIconsState();
}

class _TextFieldWithSpanStyleAndIconsState
    extends State<TextFieldWithSpanStyleAndIcons> {
  @override
  Widget build(BuildContext context) {
    return BaseView(
      vmBuilder: (context) => BaseViewModel(),
      builder: _buildScreen,
    );
  }

  Widget _buildScreen(context, BaseViewModel viewModel) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: DropdownButtonFormField<String>(
        value: viewModel.selectedVacationType,
        onChanged: (newValue) {
          viewModel.selectedVacationType = newValue;
        },
        items: viewModel.vacationsOptions.map((type) {
          return DropdownMenuItem<String>(
            value: type,
            child: Text(type),
          );
        }).toList(),
        decoration: InputDecoration(
          label: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: widget.firstTextSpan,
                  style: kFirstTextFieldSpanStyle,
                ),
                const TextSpan(
                  text: '*',
                  style: kSecTextFieldSpanStyle,
                )
              ],
            ),
          ),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
        ),
      ),
    );
  }
}

class TextFieldWithSpanStyle extends StatelessWidget {
  const TextFieldWithSpanStyle({
    super.key,
    required this.firstTextSpan,
    required this.maxLines,
  });

  final int maxLines;
  final String firstTextSpan;

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      decoration: InputDecoration(
        label: Text.rich(
          textAlign: TextAlign.start,
          TextSpan(
            children: [
              TextSpan(
                text: firstTextSpan,
                style: kFirstTextFieldSpanStyle,
              ),
              const TextSpan(
                text: '*',
                style: kSecTextFieldSpanStyle,
              )
            ],
          ),
        ),
        // contentPadding:
        //     const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
      ),
    );
  }
}
