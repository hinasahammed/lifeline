import 'package:flutter/material.dart';
import 'package:lifeline/gen/assets.gen.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    super.key,
    this.onPressed,
  });
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Stack(
      children: [
        const SizedBox(
          width: 110,
          height: 100,
        ),
        Card(
          shape: const CircleBorder(),
          elevation: 5,
          child: CircleAvatar(
            radius: 50,
            backgroundImage: Assets.images.profileImagePlaceholder.provider(),
          ),
        ),
        Positioned(
          bottom: -5,
          right: 0,
          child: IconButton(
              onPressed: onPressed,
              icon: Icon(
                Icons.add_circle,
                color: theme.colorScheme.primary,
              )),
        )
      ],
    );
  }
}
