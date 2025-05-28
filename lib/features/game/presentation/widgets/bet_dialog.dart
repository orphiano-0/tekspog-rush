import 'package:flutter/material.dart';

class BetDialog extends StatelessWidget {
  const BetDialog({super.key});

  final List<Map<String, String>> imageData = const [
    {'path': 'assets/images/pogs/pog_bayanihan.png', 'label': 'Image 1'},
    {'path': 'assets/images/pogs/pog_tikbalang.png', 'label': 'Image 2'},
    {'path': 'assets/images/pogs/pog_jeep.png', 'label': 'Image 3'},
  ];

  Widget _buildClickableImage(BuildContext context, String path, String label) {
    return GestureDetector(
      onTap: () {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('$label tapped!')));
      },
      child: Image.asset(
        path,
        width: 80,
        height: 80,
        fit: BoxFit.cover,
        errorBuilder:
            (context, error, stackTrace) =>
                const Icon(Icons.error, size: 100, color: Colors.red),
      ),
    );
  }

  void _showImageDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: SingleChildScrollView(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:
                  imageData
                      .map(
                        (data) => _buildClickableImage(
                          context,
                          data['path']!,
                          data['label']!,
                        ),
                      )
                      .toList(),
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Start'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Clickable Images Dialog')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _showImageDialog(context),
          child: const Text('Open Image Dialog'),
        ),
      ),
    );
  }
}
