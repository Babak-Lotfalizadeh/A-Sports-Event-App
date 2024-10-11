import 'package:flutter/material.dart';
import 'package:sports_event/util/exports.dart';

class TabButton extends StatelessWidget {
  final String title;
  final bool selected;
  final Function() onTap;

  const TabButton({
    required this.title,
    required this.onTap,
    required this.selected,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(
          top: Sizes.normalPadding.value,
          left: Sizes.normalPadding.value,
          right: Sizes.normalPadding.value,
        ),
        padding: EdgeInsets.only(bottom: Sizes.normalPadding.value),
        decoration: BoxDecoration(
          border: selected
              ? Border(
                  bottom: BorderSide(
                    width: Sizes.borderNormal.value,
                    color: Colors.lightBlue,
                  ),
                )
              : null,
        ),
        child: Text(
          title.toUpperCase(),
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
            color: selected ? Colors.lightBlue : null,
          ),
        ),
      ),
    );
  }
}
