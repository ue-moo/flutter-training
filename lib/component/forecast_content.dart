import 'package:flutter/material.dart';

class ForecastContent extends StatelessWidget {
  const ForecastContent({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      children: [
        const AspectRatio(aspectRatio: 1, child: Placeholder()),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  '** ℃',
                  style: theme.textTheme.labelLarge?.copyWith(
                    color: Colors.blue,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Expanded(
                child: Text(
                  '** ℃',
                  style: theme.textTheme.labelLarge?.copyWith(
                    color: Colors.red,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
