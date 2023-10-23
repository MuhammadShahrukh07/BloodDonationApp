import 'package:flutter/material.dart';


class ChipButtonExample extends StatefulWidget {
  const ChipButtonExample({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ChipButtonExampleState createState() => _ChipButtonExampleState();
}

class _ChipButtonExampleState extends State<ChipButtonExample> {
  List<String> selectedOptions = [];

  void handleChipSelection(String option) {
    setState(() {
      if (selectedOptions.contains(option)) {
        selectedOptions.remove(option);
      } else {
        selectedOptions.add(option);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Wrap(
          spacing: 8.0,
          children: <Widget>[
            ChipButton(
              label: 'Option 1',
              isSelected: selectedOptions.contains('Option 1'),
              onSelected: () => handleChipSelection('Option 1'),
            ),
            ChipButton(
              label: 'Option 2',
              isSelected: selectedOptions.contains('Option 2'),
              onSelected: () => handleChipSelection('Option 2'),
            ),
            ChipButton(
              label: 'Option 3',
              isSelected: selectedOptions.contains('Option 3'),
              onSelected: () => handleChipSelection('Option 3'),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Text('Selected Options: ${selectedOptions.join(', ')}'),
      ],
    );
  }
}

class ChipButton extends StatelessWidget {
  final String label;
  final bool isSelected;
  final Function onSelected;

  const ChipButton({super.key, 
    required this.label,
    required this.isSelected,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return FilterChip(
      label: Text(label),
      selected: isSelected,
      onSelected: (selected) => onSelected(),
      selectedColor: Colors.blue, // Change this to your desired selected color
      backgroundColor: Colors.grey, // Change this to your desired background color
      labelStyle: TextStyle(
        color: isSelected ? Colors.white : Colors.black,
      ),
    );
  }
}