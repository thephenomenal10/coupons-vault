import 'package:flutter/material.dart';

class ZigzagCouponWidget extends StatelessWidget {
  final Color backgroundColor;
  final Color textColor;
  final String couponCode;
  final String discount;
  final double height;
  final double width;

  const ZigzagCouponWidget({
    super.key,
    this.backgroundColor = Colors.blue,
    this.textColor = Colors.white,
    required this.couponCode,
    required this.discount,
    this.height = 150.0,
    this.width = 200.0,
    required double borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: ZigzagPainter(backgroundColor: backgroundColor),
      child: Container(
        height: height,
        width: width,
        child: Row(
          children: [
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'SAVE',
                      style: TextStyle(
                        color: textColor,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      discount,
                      style: TextStyle(
                        color: textColor,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: double.infinity,
              width: 1,
              color: textColor.withOpacity(0.5),
            ),
            Expanded(
              flex: 2,
              child: Center(
                child: Text(
                  couponCode,
                  style: TextStyle(
                    color: textColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ZigzagPainter extends CustomPainter {
  final Color backgroundColor;

  ZigzagPainter({required this.backgroundColor});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = backgroundColor
      ..style = PaintingStyle.fill;

    final path = Path();

    path.lineTo(0, size.height);

    final zigzagWidth = size.width / 20;
    var x = 0.0;
    var y = size.height;

    while (x < size.width) {
      x += zigzagWidth;
      y = (y == size.height) ? size.height - 10 : size.height;
      path.lineTo(x, y);
    }

    path.lineTo(size.width, 0);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
