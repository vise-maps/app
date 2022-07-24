import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';

//Copy this CustomPainter code to the Bottom of the File
class FolderPainter extends CustomPainter {
  FolderPainter({Listenable? repaint}) : super(repaint: repaint);

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawPath(
        Path()
          ..moveTo(size.width * 0.4211855, size.height * 0.1512850)
          ..lineTo(size.width * 0.2619806, size.height * 0.01093535)
          ..cubicTo(
              size.width * 0.2505423,
              size.height * 0.003401495,
              size.width * 0.2377250,
              size.height * -0.0003560155,
              size.width * 0.2247681,
              size.height * 0.00002654920)
          ..lineTo(size.width * 0.04301492, size.height * 0.00002654920)
          ..cubicTo(
              size.width * 0.01286258,
              size.height * -0.0002643495,
              size.width * 0.001529685,
              size.height * 0.01756220,
              0,
              size.height * 0.04813385)
          ..lineTo(0, size.height * 0.9294400)
          ..cubicTo(
              size.width * 0.0002515359,
              size.height * 0.9484550,
              size.width * 0.006603065,
              size.height * 0.9665700,
              size.width * 0.01765802,
              size.height * 0.9798050)
          ..cubicTo(
              size.width * 0.02871298,
              size.height * 0.9930350,
              size.width * 0.04356613,
              size.height * 1.000295,
              size.width * 0.05895161,
              size.height * 0.9999900)
          ..lineTo(size.width * 0.9410444, size.height * 0.9999900)
          ..cubicTo(
              size.width * 0.9564274,
              size.height * 1.000295,
              size.width * 0.9712823,
              size.height * 0.9930350,
              size.width * 0.9823347,
              size.height * 0.9798050)
          ..cubicTo(
              size.width * 0.9933911,
              size.height * 0.9665700,
              size.width * 0.9997419,
              size.height * 0.9484550,
              size.width * 0.9999960,
              size.height * 0.9294400)
          ..lineTo(size.width * 0.9999960, size.height * 0.2231730)
          ..cubicTo(
              size.width * 0.9999960,
              size.height * 0.1877200,
              size.width * 0.9735726,
              size.height * 0.1606300,
              size.width * 0.9292258,
              size.height * 0.1512665)
          ..lineTo(size.width * 0.4211855, size.height * 0.1512850)
          ..close(),
        Paint()..color = const Color(0xffC2B1AA));

    canvas.drawPath(
        Path()
          ..moveTo(size.width * 0.2795560, size.height * 0.2353830)
          ..lineTo(size.width * 0.1204548, size.height * 0.1006915)
          ..cubicTo(
              size.width * 0.1141794,
              size.height * 0.09390750,
              size.width * 0.1060331,
              size.height * 0.09035700,
              size.width * 0.09769758,
              size.height * 0.09077250)
          ..lineTo(size.width * 0.03786742, size.height * 0.09077250)
          ..cubicTo(
              size.width * 0.01263242,
              size.height * 0.09118100,
              size.width * -0.003514423,
              size.height * 0.1062000,
              size.width * 0.0006693589,
              size.height * 0.1339060)
          ..lineTo(size.width * 0.0006693589, size.height * 0.9358500)
          ..cubicTo(
              size.width * 0.0006693589,
              size.height * 0.9712400,
              size.width * 0.02704403,
              size.height,
              size.width * 0.05958065,
              size.height)
          ..lineTo(size.width * 0.9410847, size.height)
          ..cubicTo(
              size.width * 0.9736210,
              size.height,
              size.width * 0.9999960,
              size.height * 0.9712750,
              size.width * 0.9999960,
              size.height * 0.9358500)
          ..lineTo(size.width * 0.9999960, size.height * 0.2936900)
          ..cubicTo(
              size.width * 0.9999960,
              size.height * 0.2614920,
              size.width * 0.9760282,
              size.height * 0.2353830,
              size.width * 0.9464556,
              size.height * 0.2353830)
          ..lineTo(size.width * 0.2795560, size.height * 0.2353830)
          ..close(),
        Paint()..color = const Color(0xff9B7B71));

    canvas.drawPath(
        Path()
          ..moveTo(size.width * 0.9924556, size.height * 0.3890150)
          ..lineTo(size.width * 0.8341331, size.height * 0.3890150)
          ..cubicTo(
              size.width * 0.8300726,
              size.height * 0.3890150,
              size.width * 0.8267823,
              size.height * 0.3930780,
              size.width * 0.8267823,
              size.height * 0.3980900)
          ..lineTo(size.width * 0.8267823, size.height * 0.4371400)
          ..cubicTo(
              size.width * 0.8267823,
              size.height * 0.4421520,
              size.width * 0.8300726,
              size.height * 0.4462150,
              size.width * 0.8341331,
              size.height * 0.4462150)
          ..lineTo(size.width * 0.9924556, size.height * 0.4462150)
          ..cubicTo(
              size.width * 0.9965161,
              size.height * 0.4462150,
              size.width * 0.9998065,
              size.height * 0.4421520,
              size.width * 0.9998065,
              size.height * 0.4371400)
          ..lineTo(size.width * 0.9998065, size.height * 0.3980900)
          ..cubicTo(
              size.width * 0.9998065,
              size.height * 0.3930780,
              size.width * 0.9965161,
              size.height * 0.3890150,
              size.width * 0.9924556,
              size.height * 0.3890150)
          ..close(),
        Paint()..color = const Color(0xFFFFFFFF));
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
