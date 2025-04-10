import 'package:flutter/material.dart';
import 'package:flutter_training/component/forecast_content.dart';
import 'package:flutter_training/component/forecast_text_button.dart';

class ForecastScreen extends StatelessWidget {
  const ForecastScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FractionallySizedBox(
          widthFactor: 0.5,
          child: Column(
            children: [
              // Upper half space
              const Spacer(),
              // Forecast content
              const ForecastContent(),
              // Control buttons with lower half space
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.only(top: 80),
                  child: Row(
                    children: [
                      Expanded(
                        child: ForecastTextButton(
                          label: 'Close',
                          color: Colors.blue,
                          onPressed: () {},
                        ),
                      ),
                      Expanded(
                        child: ForecastTextButton(
                          label: 'Reload',
                          color: Colors.blue,
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
