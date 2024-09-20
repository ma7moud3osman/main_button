import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:main_button/main_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Home'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const HeaderWidget(title: 'MainButton.icon'),
              MainButton(
                label: 'test',
                isDisable: true,
                onPressed: () => log('CustomIconButton'),
              ),
              const HeaderWidget(title: 'MainButton.icon'),
              MainButton(
                label: 'test',
                isLoading: true,
                onPressed: () => log('CustomIconButton'),
              ),
              const HeaderWidget(title: 'MainButton.icon'),
              MainButton.icon(
                iconType: IconType.icon,
                icon: Icons.add,
                label: 'test',
                onPressed: () => log('CustomIconButton'),
              ),
              const HeaderWidget(title: 'MainButton.icon'),
              MainButton.icon(
                iconType: IconType.icon,
                icon: Icons.add,
                borderRadius: 30,
                width: 200,
                // padding: const EdgeInsets.symmetric(horizontal: 12),

                label: 'test',
                onPressed: () => log('CustomIconButton'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HeaderWidget extends StatelessWidget {
  final String title;
  const HeaderWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 16),
        Text(title),
        const SizedBox(height: 8),
      ],
    );
  }
}
