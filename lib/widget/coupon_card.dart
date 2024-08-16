import 'package:coupon_uikit/coupon_uikit.dart';
import 'package:flutter/material.dart';

class CustomCouponCard extends StatelessWidget {
  final String title;
  final String description;
  final String code;
  final String expiryDate;

  const CustomCouponCard({
    super.key,
    required this.title,
    required this.description,
    required this.code,
    required this.expiryDate,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200, // Ensures it takes the full width of its parent
      height: 250, // Explicit height to avoid layout issues
      child: CouponCard(
        height: 90,
        curvePosition: 180,
        curveRadius: 20,
        borderRadius: 6,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 37, 194, 184),
              Color.fromARGB(255, 31, 153, 162),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        firstChild: Container(
          height: 170,
          width: 150,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: Colors.white54,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 2),
              Text(
                code,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                description,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        secondChild: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(color: Colors.white),
            ),
          ),
          padding: EdgeInsets.symmetric(vertical: 12, horizontal: 30),
          child: ElevatedButton(
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                EdgeInsets.symmetric(horizontal: 1),
              ),
              backgroundColor: MaterialStateProperty.all<Color>(
                Colors.white,
              ),
            ),
            onPressed: () {},
            child: Text(
              'REDEEM',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 176, 39, 71),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
