import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CustomOnboards extends StatelessWidget {
  const CustomOnboards({
    super.key,
    required this.image,
    required this.desc,
    required this.title,
  });
  final Image image;
  final String title;
  final String desc;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        image,
        const Gap(20),
        Text(
          title,
          style: theme.textTheme.titleLarge!.copyWith(
            color: theme.colorScheme.onSurface,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Gap(20),
        Text(
          desc,
          style: theme.textTheme.bodyLarge!.copyWith(
            color: theme.colorScheme.onSurface,
          ),
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
