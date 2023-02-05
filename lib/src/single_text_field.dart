import 'package:flutter/material.dart';

class SingleTextField extends StatelessWidget {
  final String? title;
  final String? prefixText;
  final TextInputType? textInputType;
  final TextEditingController? controller;
  final Function(String)? onChanged;
  final String? label;
  final String? hint;
  final bool? enable;
  final Function()? onTap;
  const SingleTextField(
      {Key? key,
      this.title,
      this.prefixText,
      this.textInputType,
      this.controller,
      this.onChanged,
      this.label,
      this.hint,
      this.enable,
      this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (title != null)
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    title!,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
              ],
            ),
          ),
        TextField(
          enabled: enable ?? true,
          controller: controller ?? TextEditingController(),
          style: TextStyle(
              fontSize: 14,
              color: enable != null
                  ? enable == false
                      ? Colors.grey
                      : Colors.black
                  : Colors.black),
          decoration: InputDecoration(
              border: const OutlineInputBorder(),
              labelText: label ?? 'Answer',
              hintText: hint ?? 'Enter your Answer',
              prefixText: prefixText),
          keyboardType: textInputType ?? TextInputType.multiline,
          maxLines: null,
          onChanged: onChanged ?? (value) {},
          onTap: onTap ?? () {},
        ),
      ],
    );
  }
}
