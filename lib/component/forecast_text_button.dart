import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ForecastTextButton extends StatelessWidget {
  const ForecastTextButton({
    required this.label,
    required this.color,
    required this.onPressed,
    super.key,
  });

  final String label;
  final Color color;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        label,
        textAlign: TextAlign.center,
        style: TextStyle(color: color),
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('label', label));
    properties.add(ColorProperty('color', color));
    properties.add(
      ObjectFlagProperty<VoidCallback>.has('onPressed', onPressed),
    );
  }
}
