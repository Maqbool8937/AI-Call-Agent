import 'package:flutter/material.dart';

class StarterSubscriptionCard extends StatelessWidget {
  final String title; // plan name (e.g., "Starter")
  final String amount; // plan price (e.g., "€10 / month")
  final String subtitle; // subtitle text (e.g., "excl. VAT, billed yearly")
  final Widget actionButton; // button (can pass custom widget)

  const StarterSubscriptionCard({
    super.key,
    required this.title,
    required this.amount,
    required this.subtitle,
    required this.actionButton,
  });

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;

    // Fixed features rows
    Widget buildRow(String label, String value) {
      return Padding(
        padding: EdgeInsets.only(top: mediaQuery.height * 0.015),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 4,
              child: Text(
                label,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: Text(
                value,
                textAlign: TextAlign.right,
                maxLines: 2,
                style: const TextStyle(fontSize: 15, color: Color(0xff6C6C6C)),
              ),
            ),
          ],
        ),
      );
    }

    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: mediaQuery.width * 0.05,
        vertical: mediaQuery.height * 0.02,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade300),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Color(0xff644983),
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                amount,
                style: const TextStyle(
                  color: Color(0xff717375),
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),

          const SizedBox(height: 6),

          // Subtitle
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              subtitle,
              style: const TextStyle(
                fontSize: 11,
                color: Color(0xff6C6C6C),
                fontWeight: FontWeight.w500,
              ),
            ),
          ),

          SizedBox(height: mediaQuery.height * 0.02),

          // Fixed description
          const Text(
            'Enjoy our starter subscription, for a discounted price.',
            style: TextStyle(color: Color(0xff717375), fontSize: 16),
          ),

          SizedBox(height: mediaQuery.height * 0.03),

          // Features
          buildRow("Calls", "300 minutes"),
          buildRow("Usage", "24 hours / 7 days"),
          buildRow("Users", "Maximum 1"),
          buildRow("Call Records", "Not included"),
          buildRow("Call Transcript", "Not included"),
          buildRow("Extra Call Cost", "€0.35 p/minute"),

          SizedBox(height: mediaQuery.height * 0.04),

          // Custom button
          actionButton,
        ],
      ),
    );
  }
}
