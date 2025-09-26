import 'package:flutter/material.dart';

class FlavorItem extends StatefulWidget {
   FlavorItem({
    super.key,
    required this.flavor,
    required this.emoji,
    required this.isSelected,
    required this.onTap,
  });

  final String flavor;
  final String emoji;
  bool isSelected=false;
  final VoidCallback onTap;





  @override
  State<FlavorItem> createState() => _FlavorItemState();
}

class _FlavorItemState extends State<FlavorItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        setState(() {
          widget.isSelected = !widget.isSelected;



        });
      },



      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          color: widget.isSelected ? Colors.amber.withOpacity(0.2) : Colors.transparent,
          borderRadius: BorderRadius.circular(20),
          border: widget.isSelected ? Border.all(color: Colors.amber, width: 2) : null,
        ),
        child: Row(
          children: [
            Text(widget.emoji, style: const TextStyle(fontSize: 20)),
            const SizedBox(width: 8),
            Text(
              widget.flavor,
              style: TextStyle(
                color: widget.isSelected ? Colors.amber : Colors.grey[400],
                fontWeight: widget.isSelected ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}