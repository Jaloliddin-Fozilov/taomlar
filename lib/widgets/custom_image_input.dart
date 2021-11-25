import 'package:flutter/material.dart';

class CustomImageInput extends StatelessWidget {
  final String? imageUrl;
  final TextEditingController imageController;
  final String label;
  const CustomImageInput({
    Key? key,
    required this.imageUrl,
    required this.imageController,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              alignment: Alignment.center,
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
              ),
              child: imageUrl != null && imageUrl!.isNotEmpty
                  ? Image.network(imageUrl!)
                  : const Text("Rasm kiriting!"),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: TextField(
                decoration: InputDecoration(labelText: label),
                controller: imageController,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
