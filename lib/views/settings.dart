import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../services/color_picker.dart';
import '../views_models/view_model.dart';
import '../widgets/nav_bar.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: navBar(context, 'Settings'),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Consumer<ThemeViewModel>(
          builder: (context, themeViewModel, child) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Pick a main color:'),
                const SizedBox(height: 16.0),
                ColorPicker(
                  selectedColor: themeViewModel.mainColor,
                  onColorSelected: (color) {
                    themeViewModel.mainColor = color;
                  },
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}



