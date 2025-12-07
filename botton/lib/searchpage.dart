import 'package:flutter/material.dart';

class Searchpage extends StatelessWidget {
  const Searchpage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> items = [
      "عنصر 1",
      "عنصر 2",
      "عنصر 3",
      "عنصر 4",
      "عنصر 5",
      "عنصر 6",
      "عنصر 7",
      "عنصر 8",
      "عنصر 9",
      "عنصر 10",
    ];

    return ListView.builder(
      padding: const EdgeInsets.all(15),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Card(
          elevation: 3,
          margin: const EdgeInsets.symmetric(vertical: 8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: ListTile(
            leading: Icon(Icons.search, color: Colors.pink.shade300),
            title: Text(items[index]),
            subtitle: Text("وصف ${items[index]}"),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("ضغطت على ${items[index]}")),
              );
            },
          ),
        );
      },
    );
  }
}