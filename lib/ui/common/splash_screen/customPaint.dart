import 'dart:ui' as ui;

import '../../../export.dart';

//Copy this CustomPainter code to the Bottom of the File
class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {

    Path path_0 = Path();
    path_0.moveTo(size.width*-0.1493333,size.height);
    path_0.lineTo(size.width*1.002667,size.height);
    path_0.lineTo(size.width*1.002667,size.height*0.9891041);
    path_0.cubicTo(size.width*0.4866667,size.height*0.9443099,size.width*0.8235200,size.height*0.6397772,size.width*0.6699120,size.height*0.5312930);
    path_0.cubicTo(size.width*0.5163040,size.height*0.4228087,size.width*0.2456600,size.height*0.6328232,size.width*0.2182299,size.height*0.3254528);
    path_0.cubicTo(size.width*0.1962859,size.height*0.07955496,size.width*-0.03595573,size.height*0.006026901,size.width*-0.1493333,0);
    path_0.lineTo(size.width*-0.1493333,size.height);
    path_0.close();

    Paint paint_0_fill = Paint()..style=PaintingStyle.fill;
    paint_0_fill.color = const Color(0xffFF8800).withOpacity(1.0);
    canvas.drawPath(path_0,paint_0_fill);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}