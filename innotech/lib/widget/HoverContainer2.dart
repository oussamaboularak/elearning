import 'package:flutter/material.dart';

class HoverContainer2 extends StatefulWidget {
  final String text;
  final VoidCallback onTap;

  const HoverContainer2({
    Key? key,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  _HoverContainer2State createState() => _HoverContainer2State();
}

class _HoverContainer2State extends State<HoverContainer2> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: GestureDetector(
        onTap: widget.onTap,
        child: Container(
          width: 100,
          height: 33,
          decoration: BoxDecoration(
            color: _isHovered ? Colors.grey[600] : const Color(0xFF5F82CC),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              if (_isHovered)
                const BoxShadow(
                  color: Color(0x3F000000),
                  blurRadius: 4,
                  offset: Offset(0, 4),
                  spreadRadius: 0,
                ),
            ],
          ),
          child: Center(
            child: Text(
              widget.text,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 13,
                fontFamily: 'Comic Neue',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
