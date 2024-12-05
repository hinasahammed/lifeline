import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:lifeline/gen/assets.gen.dart';

class WhatYouWantCard extends StatelessWidget {
  const WhatYouWantCard({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      children: [
        card(
          Assets.images.bloodRequest.image(),
          "Blood Request",
          theme,
          () {},
        ),
        card(
          Assets.images.donateBlood.image(),
          "Donate Blood",
          theme,
          () {},
        ),
        card(
          Assets.images.findDonor.image(),
          "Find Donor",
          theme,
          () {},
        ),
      ],
    );
  }
}

Widget card(Image image, String title, ThemeData theme, Function()? onTap) {
  return Card(
    child: InkWell(
      onTap: onTap,
      child: Container(
        width: 130,
        height: 170,
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            image,
            const Gap(10),
            Text(
              title,
              style: theme.textTheme.bodyLarge!.copyWith(
                color: theme.colorScheme.onSurface,
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    ),
  );
}
