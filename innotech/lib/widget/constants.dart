import 'package:flutter/material.dart';

// Colors

const Gradient btnColor = LinearGradient(
  begin: Alignment.centerLeft,
  end: Alignment.centerRight,
  colors: [Color(0xff8bffc7), Color(0xfff1c251)],
);

const Color primaryColor = Color(0xFF5F82CC);
const Color secondaryColor = Color(0xFFE96B6B);
const Color backgroundColor = Color(0xFFF5F5F5);
const Color textColor = Color(0xFF333333);

// Text Styles
const TextStyle headingTextStyle = TextStyle(
  fontSize: 24,
  fontWeight: FontWeight.bold,
  color: textColor,
);

const TextStyle subheadingTextStyle = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.w500,
  color: textColor,
);

const TextStyle buttonTextStyle = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.bold,
  color: Colors.white,
);

// Button Styles
final ButtonStyle primaryButtonStyle = ElevatedButton.styleFrom(
  foregroundColor: Colors.white, backgroundColor: primaryColor,
  padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(8),
  ),
);

final ButtonStyle secondaryButtonStyle = ElevatedButton.styleFrom(
  foregroundColor: Colors.white, backgroundColor: secondaryColor,
  padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(8),
  ),
);
