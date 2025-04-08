import 'package:chair_store/theme/theme.dart';
import 'package:flutter/material.dart';

class rowWidget extends StatelessWidget {
  final String title,sub;
  const rowWidget({
    super.key, required this.title, required this.sub,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: [
          Text(
            title,
            style: blackTextStyle.copyWith(
              fontSize: 18,
              fontWeight: semiBold,
            ),
          ),
          const Spacer(),
          Text(sub, style: blackTextStyle.copyWith(fontSize: 12)),
        ],
      ),
    );
  }
}

