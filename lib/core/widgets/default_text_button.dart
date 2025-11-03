import 'package:flutter/material.dart';

class DefaultTextButton extends StatelessWidget {
  final Function() onPress;
  final String text;
  final TextStyle? textStyle;

  const DefaultTextButton({
    Key? key,
    required this.onPress,
    required this.text,
    this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
      ),
      onPressed: onPress,
      child: Text(
        text,
        style: textStyle ??
            Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: Theme.of(context).hintColor),
        textAlign: TextAlign.start,
      ),
    );
  }
}
