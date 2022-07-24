import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';

class SignPainter extends CustomPainter {
  SignPainter({Listenable? repaint}): super(repaint: repaint);

  @override
  void paint(Canvas canvas, Size size) {
    final Path path0 = Path();
    path0.moveTo(size.width * 0.8144216, size.height * 0.4826357);
    path0.cubicTo(
        size.width * 0.8144216,
        size.height * 0.4966899,
        size.width * 0.8139216,
        size.height * 0.5105969,
        size.width * 0.8129248,
        size.height * 0.5243643);
    path0.cubicTo(
        size.width * 0.8121405,
        size.height * 0.5351124,
        size.width * 0.8110686,
        size.height * 0.5457597,
        size.width * 0.8097124,
        size.height * 0.5563140);
    path0.cubicTo(
        size.width * 0.8082712,
        size.height * 0.5674884,
        size.width * 0.8065033,
        size.height * 0.5785271,
        size.width * 0.8044118,
        size.height * 0.5894341);
    path0.lineTo(size.width * 0.8044118, size.height * 0.5894457);
    path0.cubicTo(
        size.width * 0.8030425,
        size.height * 0.5966240,
        size.width * 0.8015392,
        size.height * 0.6037403,
        size.width * 0.7999052,
        size.height * 0.6107984);
    path0.cubicTo(
        size.width * 0.7951536,
        size.height * 0.6313217,
        size.width * 0.7892484,
        size.height * 0.6514457,
        size.width * 0.7822255,
        size.height * 0.6710310);
    path0.cubicTo(
        size.width * 0.7806993,
        size.height * 0.6752907,
        size.width * 0.7791209,
        size.height * 0.6795194,
        size.width * 0.7774967,
        size.height * 0.6837248);
    path0.cubicTo(
        size.width * 0.7713431,
        size.height * 0.6996395,
        size.width * 0.7644542,
        size.height * 0.7151357,
        size.width * 0.7568595,
        size.height * 0.7301512);
    path0.cubicTo(
        size.width * 0.7355621,
        size.height * 0.7723178,
        size.width * 0.7089771,
        size.height * 0.8103953,
        size.width * 0.6780163,
        size.height * 0.8430814);
    path0.cubicTo(
        size.width * 0.6746667,
        size.height * 0.8466124,
        size.width * 0.6712680,
        size.height * 0.8500853,
        size.width * 0.6678268,
        size.height * 0.8535000);
    path0.cubicTo(
        size.width * 0.5947255,
        size.height * 0.9258760,
        size.width * 0.5024608,
        size.height * 0.9654496,
        size.width * 0.4072092,
        size.height * 0.9652752);
    path0.cubicTo(size.width * 0.1823114, size.height * 0.9652752, 0,
        size.height * 0.7491938, 0, size.height * 0.4826357);
    path0.cubicTo(
        0,
        size.height * 0.2160810,
        size.width * 0.1823114,
        size.height * 5.977829e-7,
        size.width * 0.4072092,
        size.height * 5.977829e-7);
    path0.cubicTo(
        size.width * 0.4991830,
        size.height * -0.0001712802,
        size.width * 0.5884706,
        size.height * 0.03672612,
        size.width * 0.6604118,
        size.height * 0.1046349);
    path0.cubicTo(
        size.width * 0.6637843,
        size.height * 0.1078019,
        size.width * 0.6671144,
        size.height * 0.1110407,
        size.width * 0.6704020,
        size.height * 0.1143504);
    path0.cubicTo(
        size.width * 0.6864444,
        size.height * 0.1304756,
        size.width * 0.7014150,
        size.height * 0.1480399,
        size.width * 0.7151863,
        size.height * 0.1668872);
    path0.lineTo(size.width * 0.7151961, size.height * 0.1668872);
    path0.cubicTo(
        size.width * 0.7793235,
        size.height * 0.2545039,
        size.width * 0.8145654,
        size.height * 0.3666465,
        size.width * 0.8144216,
        size.height * 0.4826357);
    path0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = const Color(0xffF2F2F2);
    canvas.drawPath(path0, paint0Fill);

    final Path path1 = Path();
    path1.moveTo(size.width * 0.1202075, size.height * 0.5660078);
    path1.cubicTo(
        size.width * 0.08141601,
        size.height * 0.5386434,
        size.width * 0.05213791,
        size.height * 0.4875000,
        size.width * 0.05593889,
        size.height * 0.4341899);
    path1.cubicTo(
        size.width * 0.09140392,
        size.height * 0.4744186,
        size.width * 0.1377320,
        size.height * 0.4984845,
        size.width * 0.1867265,
        size.height * 0.5021279);
    path1.cubicTo(
        size.width * 0.2056261,
        size.height * 0.5034496,
        size.width * 0.2267631,
        size.height * 0.5025930,
        size.width * 0.2406752,
        size.height * 0.5178101);
    path1.cubicTo(
        size.width * 0.2493317,
        size.height * 0.5272791,
        size.width * 0.2533614,
        size.height * 0.5415388,
        size.width * 0.2540225,
        size.height * 0.5554767);
    path1.cubicTo(
        size.width * 0.2546833,
        size.height * 0.5694186,
        size.width * 0.2523271,
        size.height * 0.5832829,
        size.width * 0.2499830,
        size.height * 0.5969690);
    path1.lineTo(size.width * 0.2507899, size.height * 0.6003178);
    path1.cubicTo(
        size.width * 0.2056477,
        size.height * 0.6005194,
        size.width * 0.1589993,
        size.height * 0.5933682,
        size.width * 0.1202075,
        size.height * 0.5660078);
    path1.close();

    Paint paint1Fill = Paint()..style = PaintingStyle.fill;
    paint1Fill.color = const Color(0xffE6E6E6);
    canvas.drawPath(path1, paint1Fill);

    final Path path2 = Path();
    path2.moveTo(size.width * 0.05688464, size.height * 0.4341279);
    path2.cubicTo(
        size.width * 0.07242712,
        size.height * 0.4744031,
        size.width * 0.09828137,
        size.height * 0.5078450,
        size.width * 0.1307745,
        size.height * 0.5297132);
    path2.cubicTo(
        size.width * 0.1377598,
        size.height * 0.5343450,
        size.width * 0.1451859,
        size.height * 0.5383256,
        size.width * 0.1530778,
        size.height * 0.5401744);
    path2.cubicTo(
        size.width * 0.1607817,
        size.height * 0.5419031,
        size.width * 0.1687359,
        size.height * 0.5411550,
        size.width * 0.1761141,
        size.height * 0.5380116);
    path2.cubicTo(
        size.width * 0.1830431,
        size.height * 0.5352403,
        size.width * 0.1898605,
        size.height * 0.5314574,
        size.width * 0.1972369,
        size.height * 0.5307326);
    path2.cubicTo(
        size.width * 0.2050121,
        size.height * 0.5299690,
        size.width * 0.2122101,
        size.height * 0.5335233,
        size.width * 0.2178654,
        size.height * 0.5397481);
    path2.cubicTo(
        size.width * 0.2247850,
        size.height * 0.5473682,
        size.width * 0.2289820,
        size.height * 0.5574806,
        size.width * 0.2327964,
        size.height * 0.5675388);
    path2.cubicTo(
        size.width * 0.2370317,
        size.height * 0.5787054,
        size.width * 0.2412814,
        size.height * 0.5903837,
        size.width * 0.2494016,
        size.height * 0.5984147);
    path2.cubicTo(
        size.width * 0.2503856,
        size.height * 0.5993876,
        size.width * 0.2490542,
        size.height * 0.6011395,
        size.width * 0.2480719,
        size.height * 0.6001667);
    path2.cubicTo(
        size.width * 0.2339441,
        size.height * 0.5861938,
        size.width * 0.2316382,
        size.height * 0.5627984,
        size.width * 0.2203451,
        size.height * 0.5463450);
    path2.cubicTo(
        size.width * 0.2150758,
        size.height * 0.5386667,
        size.width * 0.2078219,
        size.height * 0.5328217,
        size.width * 0.1992049,
        size.height * 0.5329767);
    path2.cubicTo(
        size.width * 0.1916696,
        size.height * 0.5331124,
        size.width * 0.1846369,
        size.height * 0.5370078,
        size.width * 0.1776415,
        size.height * 0.5398837);
    path2.cubicTo(
        size.width * 0.1702961,
        size.height * 0.5429031,
        size.width * 0.1629379,
        size.height * 0.5443217,
        size.width * 0.1551833,
        size.height * 0.5429922);
    path2.cubicTo(
        size.width * 0.1472507,
        size.height * 0.5416318,
        size.width * 0.1396775,
        size.height * 0.5379884,
        size.width * 0.1326229,
        size.height * 0.5335853);
    path2.cubicTo(
        size.width * 0.1166886,
        size.height * 0.5234612,
        size.width * 0.1021961,
        size.height * 0.5104302,
        size.width * 0.08967712,
        size.height * 0.4949729);
    path2.cubicTo(
        size.width * 0.07530621,
        size.height * 0.4774225,
        size.width * 0.06357451,
        size.height * 0.4570891,
        size.width * 0.05498922,
        size.height * 0.4348488);
    path2.cubicTo(
        size.width * 0.05445850,
        size.height * 0.4334729,
        size.width * 0.05635719,
        size.height * 0.4327636,
        size.width * 0.05688431,
        size.height * 0.4341279);
    path2.lineTo(size.width * 0.05688464, size.height * 0.4341279);
    path2.close();

    Paint paint2Fill = Paint()..style = PaintingStyle.fill;
    paint2Fill.color = const Color(0xFFFFFFFF);
    canvas.drawPath(path2, paint2Fill);

    final Path path3 = Path();
    path3.moveTo(size.width * 0.1199621, size.height * 0.5234031);
    path3.cubicTo(
        size.width * 0.1161265,
        size.height * 0.5293682,
        size.width * 0.1106278,
        size.height * 0.5335194,
        size.width * 0.1044471,
        size.height * 0.5351202);
    path3.cubicTo(
        size.width * 0.09826667,
        size.height * 0.5367248,
        size.width * 0.09180686,
        size.height * 0.5356705,
        size.width * 0.08622190,
        size.height * 0.5321473);
    path3.cubicTo(
        size.width * 0.08509379,
        size.height * 0.5314302,
        size.width * 0.08598137,
        size.height * 0.5293178,
        size.width * 0.08711078,
        size.height * 0.5300349);
    path3.cubicTo(
        size.width * 0.09230654,
        size.height * 0.5333295,
        size.width * 0.09832386,
        size.height * 0.5343101,
        size.width * 0.1040765,
        size.height * 0.5328023);
    path3.cubicTo(
        size.width * 0.1098291,
        size.height * 0.5312984,
        size.width * 0.1149386,
        size.height * 0.5274070,
        size.width * 0.1184820,
        size.height * 0.5218295);
    path3.cubicTo(
        size.width * 0.1192533,
        size.height * 0.5206163,
        size.width * 0.1207288,
        size.height * 0.5222016,
        size.width * 0.1199621,
        size.height * 0.5234031);
    path3.lineTo(size.width * 0.1199621, size.height * 0.5234031);
    path3.close();

    Paint paint3Fill = Paint()..style = PaintingStyle.fill;
    paint3Fill.color = const Color(0xFFFFFFFF);
    canvas.drawPath(path3, paint3Fill);

    final Path path4 = Path();
    path4.moveTo(size.width * 0.1727569, size.height * 0.5399651);
    path4.cubicTo(
        size.width * 0.1711428,
        size.height * 0.5247558,
        size.width * 0.1647516,
        size.height * 0.5108295,
        size.width * 0.1548578,
        size.height * 0.5009574);
    path4.cubicTo(
        size.width * 0.1538768,
        size.height * 0.4999806,
        size.width * 0.1552078,
        size.height * 0.4982287,
        size.width * 0.1561876,
        size.height * 0.4992054);
    path4.cubicTo(
        size.width * 0.1664670,
        size.height * 0.5095000,
        size.width * 0.1730935,
        size.height * 0.5240078,
        size.width * 0.1747438,
        size.height * 0.5398411);
    path4.cubicTo(
        size.width * 0.1749000,
        size.height * 0.5413488,
        size.width * 0.1729124,
        size.height * 0.5414651,
        size.width * 0.1727569,
        size.height * 0.5399651);
    path4.lineTo(size.width * 0.1727569, size.height * 0.5399651);
    path4.close();

    Paint paint4Fill = Paint()..style = PaintingStyle.fill;
    paint4Fill.color = const Color(0xFFFFFFFF);
    canvas.drawPath(path4, paint4Fill);

    final Path path5 = Path();
    path5.moveTo(size.width * 0.07777451, size.height * 0.4763178);
    path5.cubicTo(
        size.width * 0.07966438,
        size.height * 0.4743760,
        size.width * 0.08111765,
        size.height * 0.4719070,
        size.width * 0.08200425,
        size.height * 0.4691357);
    path5.cubicTo(
        size.width * 0.08289052,
        size.height * 0.4663682,
        size.width * 0.08318268,
        size.height * 0.4633760,
        size.width * 0.08285359,
        size.height * 0.4604380);
    path5.cubicTo(
        size.width * 0.08268105,
        size.height * 0.4589341,
        size.width * 0.08466895,
        size.height * 0.4588178,
        size.width * 0.08484052,
        size.height * 0.4603140);
    path5.cubicTo(
        size.width * 0.08519118,
        size.height * 0.4635620,
        size.width * 0.08486536,
        size.height * 0.4668605,
        size.width * 0.08389150,
        size.height * 0.4699264);
    path5.cubicTo(
        size.width * 0.08291765,
        size.height * 0.4729922,
        size.width * 0.08132582,
        size.height * 0.4757248,
        size.width * 0.07925458,
        size.height * 0.4778915);
    path5.cubicTo(
        size.width * 0.07907386,
        size.height * 0.4781163,
        size.width * 0.07882778,
        size.height * 0.4782481,
        size.width * 0.07856699,
        size.height * 0.4782674);
    path5.cubicTo(
        size.width * 0.07830588,
        size.height * 0.4782829,
        size.width * 0.07804967,
        size.height * 0.4781822,
        size.width * 0.07784967,
        size.height * 0.4779806);
    path5.cubicTo(
        size.width * 0.07765458,
        size.height * 0.4777713,
        size.width * 0.07753725,
        size.height * 0.4774806,
        size.width * 0.07752320,
        size.height * 0.4771667);
    path5.cubicTo(
        size.width * 0.07750915,
        size.height * 0.4768566,
        size.width * 0.07759967,
        size.height * 0.4765504,
        size.width * 0.07777451,
        size.height * 0.4763178);
    path5.lineTo(size.width * 0.07777451, size.height * 0.4763178);
    path5.close();

    Paint paint5Fill = Paint()..style = PaintingStyle.fill;
    paint5Fill.color = const Color(0xFFFFFFFF);
    canvas.drawPath(path5, paint5Fill);

    final Path path6 = Path();
    path6.moveTo(size.width * 0.1815039, size.height * 0.3309031);
    path6.cubicTo(
        size.width * 0.1816343,
        size.height * 0.3318399,
        size.width * 0.1817647,
        size.height * 0.3327767,
        size.width * 0.1819098,
        size.height * 0.3337221);
    path6.cubicTo(
        size.width * 0.1837163,
        size.height * 0.3463047,
        size.width * 0.1863820,
        size.height * 0.3586922,
        size.width * 0.1898810,
        size.height * 0.3707628);
    path6.cubicTo(
        size.width * 0.1901392,
        size.height * 0.3717012,
        size.width * 0.1904124,
        size.height * 0.3726473,
        size.width * 0.1906928,
        size.height * 0.3735752);
    path6.cubicTo(
        size.width * 0.1993843,
        size.height * 0.4025504,
        size.width * 0.2125386,
        size.height * 0.4293605,
        size.width * 0.2294876,
        size.height * 0.4526434);
    path6.cubicTo(
        size.width * 0.2362392,
        size.height * 0.4618992,
        size.width * 0.2435752,
        size.height * 0.4705349,
        size.width * 0.2514324,
        size.height * 0.4784729);
    path6.cubicTo(
        size.width * 0.2622833,
        size.height * 0.4894341,
        size.width * 0.2747850,
        size.height * 0.5002984,
        size.width * 0.2817422,
        size.height * 0.5144535);
    path6.cubicTo(
        size.width * 0.2824820,
        size.height * 0.5159186,
        size.width * 0.2831444,
        size.height * 0.5174380,
        size.width * 0.2837258,
        size.height * 0.5190039);
    path6.lineTo(size.width * 0.2541771, size.height * 0.5988953);
    path6.cubicTo(
        size.width * 0.2540330,
        size.height * 0.5990349,
        size.width * 0.2539039,
        size.height * 0.5991860,
        size.width * 0.2537595,
        size.height * 0.5993295);
    path6.lineTo(size.width * 0.2527029, size.height * 0.6025853);
    path6.cubicTo(
        size.width * 0.2522735,
        size.height * 0.6022093,
        size.width * 0.2518350,
        size.height * 0.6018062,
        size.width * 0.2514056,
        size.height * 0.6014302);
    path6.cubicTo(
        size.width * 0.2511559,
        size.height * 0.6012132,
        size.width * 0.2509124,
        size.height * 0.6009806,
        size.width * 0.2506627,
        size.height * 0.6007636);
    path6.cubicTo(
        size.width * 0.2504984,
        size.height * 0.6006124,
        size.width * 0.2503340,
        size.height * 0.6004612,
        size.width * 0.2501784,
        size.height * 0.6003372);
    path6.cubicTo(
        size.width * 0.2501235,
        size.height * 0.6002868,
        size.width * 0.2500690,
        size.height * 0.6002364,
        size.width * 0.2500294,
        size.height * 0.6001938);
    path6.cubicTo(
        size.width * 0.2498739,
        size.height * 0.6000698,
        size.width * 0.2497402,
        size.height * 0.5999341,
        size.width * 0.2496000,
        size.height * 0.5998178);
    path6.cubicTo(
        size.width * 0.2471438,
        size.height * 0.5975853,
        size.width * 0.2446967,
        size.height * 0.5953295,
        size.width * 0.2422582,
        size.height * 0.5930504);
    path6.cubicTo(
        size.width * 0.2422428,
        size.height * 0.5930426,
        size.width * 0.2422428,
        size.height * 0.5930426,
        size.width * 0.2422340,
        size.height * 0.5930155);
    path6.cubicTo(
        size.width * 0.2236931,
        size.height * 0.5755814,
        size.width * 0.2062170,
        size.height * 0.5561589,
        size.width * 0.1917840,
        size.height * 0.5342093);
    path6.cubicTo(
        size.width * 0.1913500,
        size.height * 0.5335465,
        size.width * 0.1909003,
        size.height * 0.5328798,
        size.width * 0.1904797,
        size.height * 0.5321822);
    path6.cubicTo(
        size.width * 0.1840203,
        size.height * 0.5222481,
        size.width * 0.1782572,
        size.height * 0.5117016,
        size.width * 0.1732471,
        size.height * 0.5006512);
    path6.cubicTo(
        size.width * 0.1705203,
        size.height * 0.4945891,
        size.width * 0.1680542,
        size.height * 0.4883682,
        size.width * 0.1658582,
        size.height * 0.4820155);
    path6.cubicTo(
        size.width * 0.1602105,
        size.height * 0.4655775,
        size.width * 0.1567791,
        size.height * 0.4481899,
        size.width * 0.1556902,
        size.height * 0.4304884);
    path6.cubicTo(
        size.width * 0.1535235,
        size.height * 0.3952016,
        size.width * 0.1609029,
        size.height * 0.3594884,
        size.width * 0.1800261,
        size.height * 0.3329163);
    path6.cubicTo(
        size.width * 0.1805157,
        size.height * 0.3322372,
        size.width * 0.1809990,
        size.height * 0.3315748,
        size.width * 0.1815039,
        size.height * 0.3309031);
    path6.close();

    Paint paint6Fill = Paint()..style = PaintingStyle.fill;
    paint6Fill.color = const Color(0xffE6E6E6);
    canvas.drawPath(path6, paint6Fill);

    final Path path7 = Path();
    path7.moveTo(size.width * 0.1822944, size.height * 0.3315260);
    path7.cubicTo(
        size.width * 0.1742467,
        size.height * 0.3747725,
        size.width * 0.1779007,
        size.height * 0.4199264,
        size.width * 0.1927373,
        size.height * 0.4605698);
    path7.cubicTo(
        size.width * 0.1959605,
        size.height * 0.4692558,
        size.width * 0.1998680,
        size.height * 0.4777326,
        size.width * 0.2052310,
        size.height * 0.4848372);
    path7.cubicTo(
        size.width * 0.2105036,
        size.height * 0.4917171,
        size.width * 0.2172343,
        size.height * 0.4967984,
        size.width * 0.2247235,
        size.height * 0.4995504);
    path7.cubicTo(
        size.width * 0.2316627,
        size.height * 0.5022829,
        size.width * 0.2390281,
        size.height * 0.5041279,
        size.width * 0.2452859,
        size.height * 0.5088101);
    path7.cubicTo(
        size.width * 0.2518824,
        size.height * 0.5137481,
        size.width * 0.2558235,
        size.height * 0.5217248,
        size.width * 0.2571758,
        size.height * 0.5307326);
    path7.cubicTo(
        size.width * 0.2588304,
        size.height * 0.5417519,
        size.width * 0.2570451,
        size.height * 0.5528217,
        size.width * 0.2549817,
        size.height * 0.5635736);
    path7.cubicTo(
        size.width * 0.2526908,
        size.height * 0.5755116,
        size.width * 0.2501520,
        size.height * 0.5878682,
        size.width * 0.2525562,
        size.height * 0.6000736);
    path7.cubicTo(
        size.width * 0.2528477,
        size.height * 0.6015543,
        size.width * 0.2508944,
        size.height * 0.6020039,
        size.width * 0.2506036,
        size.height * 0.6005271);
    path7.cubicTo(
        size.width * 0.2464203,
        size.height * 0.5792907,
        size.width * 0.2564647,
        size.height * 0.5589612,
        size.width * 0.2558065,
        size.height * 0.5377674);
    path7.cubicTo(
        size.width * 0.2554993,
        size.height * 0.5278760,
        size.width * 0.2526755,
        size.height * 0.5180349,
        size.width * 0.2457170,
        size.height * 0.5120078);
    path7.cubicTo(
        size.width * 0.2396320,
        size.height * 0.5067403,
        size.width * 0.2320382,
        size.height * 0.5048295,
        size.width * 0.2249918,
        size.height * 0.5021357);
    path7.cubicTo(
        size.width * 0.2175928,
        size.height * 0.4993062,
        size.width * 0.2109971,
        size.height * 0.4951860,
        size.width * 0.2054804,
        size.height * 0.4885930);
    path7.cubicTo(
        size.width * 0.1998369,
        size.height * 0.4818450,
        size.width * 0.1956418,
        size.height * 0.4735310,
        size.width * 0.1922454,
        size.height * 0.4649845);
    path7.cubicTo(
        size.width * 0.1846654,
        size.height * 0.4455271,
        size.width * 0.1797134,
        size.height * 0.4247829,
        size.width * 0.1775706,
        size.height * 0.4035039);
    path7.cubicTo(
        size.width * 0.1750114,
        size.height * 0.3792380,
        size.width * 0.1759739,
        size.height * 0.3546302,
        size.width * 0.1804160,
        size.height * 0.3307473);
    path7.cubicTo(
        size.width * 0.1806912,
        size.height * 0.3292694,
        size.width * 0.1825680,
        size.height * 0.3300574,
        size.width * 0.1822944,
        size.height * 0.3315260);
    path7.close();

    Paint paint7Fill = Paint()..style = PaintingStyle.fill;
    paint7Fill.color = const Color(0xFFFFFFFF);
    canvas.drawPath(path7, paint7Fill);

    final Path path8 = Path();
    path8.moveTo(size.width * 0.1873095, size.height * 0.4478140);
    path8.cubicTo(
        size.width * 0.1812176,
        size.height * 0.4498372,
        size.width * 0.1747173,
        size.height * 0.4492326,
        size.width * 0.1689690,
        size.height * 0.4461008);
    path8.cubicTo(
        size.width * 0.1632206,
        size.height * 0.4429690,
        size.width * 0.1585984,
        size.height * 0.4375155,
        size.width * 0.1559281,
        size.height * 0.4307171);
    path8.cubicTo(
        size.width * 0.1553918,
        size.height * 0.4293411,
        size.width * 0.1571729,
        size.height * 0.4282868,
        size.width * 0.1577101,
        size.height * 0.4296667);
    path8.cubicTo(
        size.width * 0.1601866,
        size.height * 0.4360039,
        size.width * 0.1644925,
        size.height * 0.4410814,
        size.width * 0.1698503,
        size.height * 0.4439845);
    path8.cubicTo(
        size.width * 0.1752085,
        size.height * 0.4468876,
        size.width * 0.1812654,
        size.height * 0.4474264,
        size.width * 0.1869284,
        size.height * 0.4455000);
    path8.cubicTo(
        size.width * 0.1881595,
        size.height * 0.4450814,
        size.width * 0.1885333,
        size.height * 0.4473992,
        size.width * 0.1873092,
        size.height * 0.4478140);
    path8.lineTo(size.width * 0.1873095, size.height * 0.4478140);
    path8.close();

    Paint paint8Fill = Paint()..style = PaintingStyle.fill;
    paint8Fill.color = const Color(0xFFFFFFFF);
    canvas.drawPath(path8, paint8Fill);

    final Path path9 = Path();
    path9.moveTo(size.width * 0.2210500, size.height * 0.4987132);
    path9.cubicTo(
        size.width * 0.2274869,
        size.height * 0.4854186,
        size.width * 0.2294592,
        size.height * 0.4697364,
        size.width * 0.2265739,
        size.height * 0.4547946);
    path9.cubicTo(
        size.width * 0.2262869,
        size.height * 0.4533140,
        size.width * 0.2282402,
        size.height * 0.4528643,
        size.width * 0.2285265,
        size.height * 0.4543450);
    path9.cubicTo(
        size.width * 0.2315046,
        size.height * 0.4698992,
        size.width * 0.2294242,
        size.height * 0.4862132,
        size.width * 0.2227003,
        size.height * 0.5000310);
    path9.cubicTo(
        size.width * 0.2220588,
        size.height * 0.5013488,
        size.width * 0.2204121,
        size.height * 0.5000233,
        size.width * 0.2210500,
        size.height * 0.4987132);
    path9.close();

    Paint paint9Fill = Paint()..style = PaintingStyle.fill;
    paint9Fill.color = const Color(0xFFFFFFFF);
    canvas.drawPath(path9, paint9Fill);

    final Path path10 = Path();
    path10.moveTo(size.width * 0.1775438, size.height * 0.3801159);
    path10.cubicTo(
        size.width * 0.1800386,
        size.height * 0.3799143,
        size.width * 0.1824520,
        size.height * 0.3789822,
        size.width * 0.1845673,
        size.height * 0.3774019);
    path10.cubicTo(
        size.width * 0.1866827,
        size.height * 0.3758221,
        size.width * 0.1884340,
        size.height * 0.3736442,
        size.width * 0.1896637,
        size.height * 0.3710640);
    path10.cubicTo(
        size.width * 0.1902912,
        size.height * 0.3697384,
        size.width * 0.1919373,
        size.height * 0.3710643,
        size.width * 0.1913141,
        size.height * 0.3723810);
    path10.cubicTo(
        size.width * 0.1899441,
        size.height * 0.3752244,
        size.width * 0.1880075,
        size.height * 0.3776271,
        size.width * 0.1856735,
        size.height * 0.3793787);
    path10.cubicTo(
        size.width * 0.1833395,
        size.height * 0.3811306,
        size.width * 0.1806791,
        size.height * 0.3821783,
        size.width * 0.1779245,
        size.height * 0.3824302);
    path10.cubicTo(
        size.width * 0.1776667,
        size.height * 0.3824798,
        size.width * 0.1774026,
        size.height * 0.3824112,
        size.width * 0.1771859,
        size.height * 0.3822380);
    path10.cubicTo(
        size.width * 0.1769690,
        size.height * 0.3820651,
        size.width * 0.1768160,
        size.height * 0.3818008,
        size.width * 0.1767578,
        size.height * 0.3814988);
    path10.cubicTo(
        size.width * 0.1767088,
        size.height * 0.3811919,
        size.width * 0.1767637,
        size.height * 0.3808748,
        size.width * 0.1769108,
        size.height * 0.3806159);
    path10.cubicTo(
        size.width * 0.1770578,
        size.height * 0.3803566,
        size.width * 0.1772853,
        size.height * 0.3801771,
        size.width * 0.1775438,
        size.height * 0.3801159);
    path10.lineTo(size.width * 0.1775438, size.height * 0.3801159);
    path10.close();

    Paint paint10Fill = Paint()..style = PaintingStyle.fill;
    paint10Fill.color = const Color(0xFFFFFFFF);
    canvas.drawPath(path10, paint10Fill);

    final Path path11 = Path();
    path11.moveTo(size.width * 0.2820778, size.height * 0.1118620);
    path11.lineTo(size.width * 0.3319183, size.height * 0.8033798);
    path11.lineTo(size.width * 0.2322369, size.height * 0.8122636);
    path11.lineTo(size.width * 0.2322369, size.height * 0.1206601);
    path11.cubicTo(
        size.width * 0.2441147,
        size.height * 0.1113446,
        size.width * 0.2611654,
        size.height * 0.1098872,
        size.width * 0.2820778,
        size.height * 0.1118620);
    path11.close();

    Paint paint11Fill = Paint()..style = PaintingStyle.fill;
    paint11Fill.color = const Color(0xffCCCCCC);
    canvas.drawPath(path11, paint11Fill);

    final Path path12 = Path();
    path12.moveTo(size.width * 0.5281013, size.height * 0.1118620);
    path12.lineTo(size.width * 0.4782614, size.height * 0.8033798);
    path12.lineTo(size.width * 0.5779412, size.height * 0.8122636);
    path12.lineTo(size.width * 0.5779412, size.height * 0.1206601);
    path12.cubicTo(
        size.width * 0.5660654,
        size.height * 0.1113446,
        size.width * 0.5490131,
        size.height * 0.1098872,
        size.width * 0.5281013,
        size.height * 0.1118620);
    path12.close();

    Paint paint12Fill = Paint()..style = PaintingStyle.fill;
    paint12Fill.color = const Color(0xffCCCCCC);
    canvas.drawPath(path12, paint12Fill);

    final Path path13 = Path();
    path13.moveTo(size.width * 0.5630163, size.height * 0.8408450);
    path13.lineTo(size.width * 0.2461016, size.height * 0.8408450);
    path13.cubicTo(
        size.width * 0.2410196,
        size.height * 0.8408372,
        size.width * 0.2361477,
        size.height * 0.8384419,
        size.width * 0.2325546,
        size.height * 0.8341822);
    path13.cubicTo(
        size.width * 0.2289611,
        size.height * 0.8299225,
        size.width * 0.2269399,
        size.height * 0.8241512,
        size.width * 0.2269343,
        size.height * 0.8181279);
    path13.lineTo(size.width * 0.2269343, size.height * 0.1308093);
    path13.cubicTo(
        size.width * 0.2269402,
        size.height * 0.1247864,
        size.width * 0.2289614,
        size.height * 0.1190120,
        size.width * 0.2325546,
        size.height * 0.1147531);
    path13.cubicTo(
        size.width * 0.2361480,
        size.height * 0.1104942,
        size.width * 0.2410199,
        size.height * 0.1080988,
        size.width * 0.2461016,
        size.height * 0.1080919);
    path13.lineTo(size.width * 0.5630163, size.height * 0.1080919);
    path13.cubicTo(
        size.width * 0.5680980,
        size.height * 0.1080988,
        size.width * 0.5729706,
        size.height * 0.1104942,
        size.width * 0.5765621,
        size.height * 0.1147531);
    path13.cubicTo(
        size.width * 0.5801569,
        size.height * 0.1190120,
        size.width * 0.5821765,
        size.height * 0.1247864,
        size.width * 0.5821830,
        size.height * 0.1308093);
    path13.lineTo(size.width * 0.5821830, size.height * 0.8181279);
    path13.cubicTo(
        size.width * 0.5821765,
        size.height * 0.8241512,
        size.width * 0.5801569,
        size.height * 0.8299225,
        size.width * 0.5765621,
        size.height * 0.8341822);
    path13.cubicTo(
        size.width * 0.5729706,
        size.height * 0.8384419,
        size.width * 0.5680980,
        size.height * 0.8408372,
        size.width * 0.5630163,
        size.height * 0.8408450);
    path13.close();
    path13.moveTo(size.width * 0.2461016, size.height * 0.1156329);
    path13.cubicTo(
        size.width * 0.2427065,
        size.height * 0.1156376,
        size.width * 0.2394520,
        size.height * 0.1172380,
        size.width * 0.2370516,
        size.height * 0.1200829);
    path13.cubicTo(
        size.width * 0.2346510,
        size.height * 0.1229283,
        size.width * 0.2333007,
        size.height * 0.1267857,
        size.width * 0.2332971,
        size.height * 0.1308093);
    path13.lineTo(size.width * 0.2332971, size.height * 0.8181279);
    path13.cubicTo(
        size.width * 0.2333007,
        size.height * 0.8221512,
        size.width * 0.2346510,
        size.height * 0.8260078,
        size.width * 0.2370513,
        size.height * 0.8288527);
    path13.cubicTo(
        size.width * 0.2394520,
        size.height * 0.8316977,
        size.width * 0.2427065,
        size.height * 0.8332984,
        size.width * 0.2461016,
        size.height * 0.8333023);
    path13.lineTo(size.width * 0.5630163, size.height * 0.8333023);
    path13.cubicTo(
        size.width * 0.5664118,
        size.height * 0.8332984,
        size.width * 0.5696667,
        size.height * 0.8316977,
        size.width * 0.5720654,
        size.height * 0.8288527);
    path13.cubicTo(
        size.width * 0.5744673,
        size.height * 0.8260078,
        size.width * 0.5758170,
        size.height * 0.8221512,
        size.width * 0.5758203,
        size.height * 0.8181279);
    path13.lineTo(size.width * 0.5758203, size.height * 0.1308093);
    path13.cubicTo(
        size.width * 0.5758170,
        size.height * 0.1267857,
        size.width * 0.5744673,
        size.height * 0.1229283,
        size.width * 0.5720654,
        size.height * 0.1200829);
    path13.cubicTo(
        size.width * 0.5696667,
        size.height * 0.1172380,
        size.width * 0.5664118,
        size.height * 0.1156376,
        size.width * 0.5630163,
        size.height * 0.1156329);
    path13.lineTo(size.width * 0.2461016, size.height * 0.1156329);
    path13.close();

    Paint paint13Fill = Paint()..style = PaintingStyle.fill;
    paint13Fill.color = const Color(0xffCCCCCC);
    canvas.drawPath(path13, paint13Fill);

    final Path path14 = Path();
    path14.moveTo(size.width * 0.5790033, size.height * 0.2224671);
    path14.lineTo(size.width * 0.2301160, size.height * 0.2224671);
    path14.lineTo(size.width * 0.2301160, size.height * 0.2300081);
    path14.lineTo(size.width * 0.5790033, size.height * 0.2300081);
    path14.lineTo(size.width * 0.5790033, size.height * 0.2224671);
    path14.close();

    Paint paint14Fill = Paint()..style = PaintingStyle.fill;
    paint14Fill.color = const Color(0xffCCCCCC);
    canvas.drawPath(path14, paint14Fill);

    final Path path15 = Path();
    path15.moveTo(size.width * 0.5790033, size.height * 0.3481519);
    path15.lineTo(size.width * 0.2301160, size.height * 0.3481519);
    path15.lineTo(size.width * 0.2301160, size.height * 0.3556934);
    path15.lineTo(size.width * 0.5790033, size.height * 0.3556934);
    path15.lineTo(size.width * 0.5790033, size.height * 0.3481519);
    path15.close();

    Paint paint15Fill = Paint()..style = PaintingStyle.fill;
    paint15Fill.color = const Color(0xffCCCCCC);
    canvas.drawPath(path15, paint15Fill);

    final Path path16 = Path();
    path16.moveTo(size.width * 0.3433333, size.height * 0.1118620);
    path16.lineTo(size.width * 0.3369706, size.height * 0.1118620);
    path16.lineTo(size.width * 0.3369706, size.height * 0.4549845);
    path16.lineTo(size.width * 0.3433333, size.height * 0.4549845);
    path16.lineTo(size.width * 0.3433333, size.height * 0.1118620);
    path16.close();

    Paint paint16Fill = Paint()..style = PaintingStyle.fill;
    paint16Fill.color = const Color(0xffCCCCCC);
    canvas.drawPath(path16, paint16Fill);

    final Path path17 = Path();
    path17.moveTo(size.width * 0.4721471, size.height * 0.1118620);
    path17.lineTo(size.width * 0.4657843, size.height * 0.1118620);
    path17.lineTo(size.width * 0.4657843, size.height * 0.4549845);
    path17.lineTo(size.width * 0.4721471, size.height * 0.4549845);
    path17.lineTo(size.width * 0.4721471, size.height * 0.1118620);
    path17.close();

    Paint paint17Fill = Paint()..style = PaintingStyle.fill;
    paint17Fill.color = const Color(0xffCCCCCC);
    canvas.drawPath(path17, paint17Fill);

    final Path path18 = Path();
    path18.moveTo(size.width * 0.6187680, size.height * 0.8615814);
    path18.lineTo(size.width * 0.2009539, size.height * 0.8615814);
    path18.cubicTo(
        size.width * 0.1933601,
        size.height * 0.8615814,
        size.width * 0.1860775,
        size.height * 0.8580078,
        size.width * 0.1807078,
        size.height * 0.8516434);
    path18.cubicTo(
        size.width * 0.1753382,
        size.height * 0.8452791,
        size.width * 0.1723219,
        size.height * 0.8366473,
        size.width * 0.1723219,
        size.height * 0.8276473);
    path18.cubicTo(
        size.width * 0.1723219,
        size.height * 0.8186473,
        size.width * 0.1753382,
        size.height * 0.8100155,
        size.width * 0.1807078,
        size.height * 0.8036512);
    path18.cubicTo(
        size.width * 0.1860775,
        size.height * 0.7972868,
        size.width * 0.1933601,
        size.height * 0.7937093,
        size.width * 0.2009539,
        size.height * 0.7937093);
    path18.lineTo(size.width * 0.6187680, size.height * 0.7937093);
    path18.cubicTo(
        size.width * 0.6263627,
        size.height * 0.7937093,
        size.width * 0.6336438,
        size.height * 0.7972868,
        size.width * 0.6390131,
        size.height * 0.8036512);
    path18.cubicTo(
        size.width * 0.6443856,
        size.height * 0.8100155,
        size.width * 0.6474020,
        size.height * 0.8186473,
        size.width * 0.6474020,
        size.height * 0.8276473);
    path18.cubicTo(
        size.width * 0.6474020,
        size.height * 0.8366473,
        size.width * 0.6443856,
        size.height * 0.8452791,
        size.width * 0.6390131,
        size.height * 0.8516434);
    path18.cubicTo(
        size.width * 0.6336438,
        size.height * 0.8580078,
        size.width * 0.6263627,
        size.height * 0.8615814,
        size.width * 0.6187680,
        size.height * 0.8615814);
    path18.close();

    Paint paint18Fill = Paint()..style = PaintingStyle.fill;
    paint18Fill.color = const Color(0xffCCCCCC);
    canvas.drawPath(path18, paint18Fill);

    final Path path19 = Path();
    path19.moveTo(size.width * 0.5790033, size.height * 0.4373915);
    path19.lineTo(size.width * 0.2322369, size.height * 0.4373915);
    path19.lineTo(size.width * 0.2322369, size.height * 0.4625271);
    path19.lineTo(size.width * 0.5790033, size.height * 0.4625271);
    path19.lineTo(size.width * 0.5790033, size.height * 0.4373915);
    path19.close();

    Paint paint19Fill = Paint()..style = PaintingStyle.fill;
    paint19Fill.color = const Color(0xffCCCCCC);
    canvas.drawPath(path19, paint19Fill);

    final Path path20 = Path();
    path20.moveTo(size.width * 0.3443203, size.height * 0.5173915);
    path20.lineTo(size.width * 0.3438791, size.height * 0.5171395);
    path20.cubicTo(
        size.width * 0.3202418,
        size.height * 0.5036047,
        size.width * 0.2892859,
        size.height * 0.5036163,
        size.width * 0.2435062,
        size.height * 0.5171822);
    path20.lineTo(size.width * 0.2430173, size.height * 0.5173295);
    path20.lineTo(size.width * 0.2428709, size.height * 0.5167558);
    path20.cubicTo(
        size.width * 0.2380278,
        size.height * 0.4979380,
        size.width * 0.2325418,
        size.height * 0.4766202,
        size.width * 0.2428480,
        size.height * 0.4661318);
    path20.cubicTo(
        size.width * 0.2429925,
        size.height * 0.4353566,
        size.width * 0.2657686,
        size.height * 0.4103682,
        size.width * 0.2937448,
        size.height * 0.4103682);
    path20.cubicTo(
        size.width * 0.3217150,
        size.height * 0.4103682,
        size.width * 0.3444869,
        size.height * 0.4353450,
        size.width * 0.3446405,
        size.height * 0.4661124);
    path20.cubicTo(
        size.width * 0.3599739,
        size.height * 0.4800039,
        size.width * 0.3526667,
        size.height * 0.5005349,
        size.width * 0.3445686,
        size.height * 0.5168915);
    path20.lineTo(size.width * 0.3443203, size.height * 0.5173915);
    path20.close();

    Paint paint20Fill = Paint()..style = PaintingStyle.fill;
    paint20Fill.color = const Color(0xff2F2E41);
    canvas.drawPath(path20, paint20Fill);

    final Path path21 = Path();
    path21.moveTo(size.width * 0.4896144, size.height * 0.4514922);
    path21.cubicTo(
        size.width * 0.4891895,
        size.height * 0.4539884,
        size.width * 0.4883105,
        size.height * 0.4563411,
        size.width * 0.4870359,
        size.height * 0.4583876);
    path21.cubicTo(
        size.width * 0.4857614,
        size.height * 0.4604341,
        size.width * 0.4841242,
        size.height * 0.4621240,
        size.width * 0.4822386,
        size.height * 0.4633411);
    path21.cubicTo(
        size.width * 0.4803529,
        size.height * 0.4645581,
        size.width * 0.4782647,
        size.height * 0.4652674,
        size.width * 0.4761242,
        size.height * 0.4654264);
    path21.cubicTo(
        size.width * 0.4739804,
        size.height * 0.4655814,
        size.width * 0.4718366,
        size.height * 0.4651783,
        size.width * 0.4698399,
        size.height * 0.4642481);
    path21.lineTo(size.width * 0.3863007, size.height * 0.5637481);
    path21.lineTo(size.width * 0.3788464, size.height * 0.5328527);
    path21.lineTo(size.width * 0.4618170, size.height * 0.4404535);
    path21.cubicTo(
        size.width * 0.4633627,
        size.height * 0.4365814,
        size.width * 0.4660490,
        size.height * 0.4335155,
        size.width * 0.4693725,
        size.height * 0.4318333);
    path21.cubicTo(
        size.width * 0.4726993,
        size.height * 0.4301550,
        size.width * 0.4764281,
        size.height * 0.4299806,
        size.width * 0.4798529,
        size.height * 0.4313411);
    path21.cubicTo(
        size.width * 0.4832778,
        size.height * 0.4327016,
        size.width * 0.4861667,
        size.height * 0.4355039,
        size.width * 0.4879641,
        size.height * 0.4392171);
    path21.cubicTo(
        size.width * 0.4897614,
        size.height * 0.4429341,
        size.width * 0.4903497,
        size.height * 0.4473023,
        size.width * 0.4896144,
        size.height * 0.4514922);
    path21.lineTo(size.width * 0.4896144, size.height * 0.4514922);
    path21.close();

    Paint paint21Fill = Paint()..style = PaintingStyle.fill;
    paint21Fill.color = const Color(0xffFFB6B6);
    canvas.drawPath(path21, paint21Fill);

    final Path path22 = Path();
    path22.moveTo(size.width * 0.2831471, size.height * 0.5472791);
    path22.cubicTo(
        size.width * 0.2831471,
        size.height * 0.5472791,
        size.width * 0.2755680,
        size.height * 0.5676357,
        size.width * 0.2942696,
        size.height * 0.5801899);
    path22.cubicTo(
        size.width * 0.3129712,
        size.height * 0.5927442,
        size.width * 0.3783333,
        size.height * 0.5753992,
        size.width * 0.3889412,
        size.height * 0.5729767);
    path22.cubicTo(
        size.width * 0.3995458,
        size.height * 0.5705543,
        size.width * 0.4391569,
        size.height * 0.5002946,
        size.width * 0.4391569,
        size.height * 0.5002946);
    path22.lineTo(size.width * 0.4335556, size.height * 0.4658411);
    path22.lineTo(size.width * 0.3810229, size.height * 0.5198915);
    path22.lineTo(size.width * 0.2831471, size.height * 0.5472791);
    path22.close();

    Paint paint22Fill = Paint()..style = PaintingStyle.fill;
    paint22Fill.color = const Color(0xffEF356A);
    canvas.drawPath(path22, paint22Fill);

    final Path path23 = Path();
    path23.moveTo(size.width * 0.2693529, size.height * 0.6598527);
    path23.lineTo(size.width * 0.2704134, size.height * 0.6837364);
    path23.cubicTo(
        size.width * 0.2704134,
        size.height * 0.6837364,
        size.width * 0.2672837,
        size.height * 0.7048876,
        size.width * 0.2698578,
        size.height * 0.7094535);
    path23.cubicTo(
        size.width * 0.2724124,
        size.height * 0.7139961,
        size.width * 0.3421275,
        size.height * 0.7145698,
        size.width * 0.3421275,
        size.height * 0.7145698);
    path23.cubicTo(
        size.width * 0.3421275,
        size.height * 0.7145698,
        size.width * 0.3467353,
        size.height * 0.6851357,
        size.width * 0.3507026,
        size.height * 0.6593760);
    path23.lineTo(size.width * 0.2693529, size.height * 0.6598527);
    path23.close();

    Paint paint23Fill = Paint()..style = PaintingStyle.fill;
    paint23Fill.color = const Color(0xffFFB6B6);
    canvas.drawPath(path23, paint23Fill);

    final Path path24 = Path();
    path24.moveTo(size.width * 0.4697908, size.height * 0.9756047);
    path24.lineTo(size.width * 0.4843660, size.height * 0.9721163);
    path24.lineTo(size.width * 0.4801928, size.height * 0.9023450);
    path24.lineTo(size.width * 0.4586830, size.height * 0.9074922);
    path24.lineTo(size.width * 0.4697908, size.height * 0.9756047);
    path24.close();

    Paint paint24Fill = Paint()..style = PaintingStyle.fill;
    paint24Fill.color = const Color(0xffFFB6B6);
    canvas.drawPath(path24, paint24Fill);

    final Path path25 = Path();
    path25.moveTo(size.width * 0.4906699, size.height * 0.8848062);
    path25.lineTo(size.width * 0.5042190, size.height * 0.8775853);
    path25.lineTo(size.width * 0.4866405, size.height * 0.8108256);
    path25.lineTo(size.width * 0.4666438, size.height * 0.8214845);
    path25.lineTo(size.width * 0.4906699, size.height * 0.8848062);
    path25.close();

    Paint paint25Fill = Paint()..style = PaintingStyle.fill;
    paint25Fill.color = const Color(0xffFFB6B6);
    canvas.drawPath(path25, paint25Fill);

    final Path path26 = Path();
    path26.moveTo(size.width * 0.5024706, size.height * 0.8471899);
    path26.lineTo(size.width * 0.4769575, size.height * 0.8643140);
    path26.lineTo(size.width * 0.4140392, size.height * 0.7444806);
    path26.cubicTo(
        size.width * 0.3698725,
        size.height * 0.7797481,
        size.width * 0.3266797,
        size.height * 0.7966395,
        size.width * 0.2831386,
        size.height * 0.8056512);
    path26.cubicTo(
        size.width * 0.2684176,
        size.height * 0.8087597,
        size.width * 0.2534085,
        size.height * 0.8071860,
        size.width * 0.2505824,
        size.height * 0.7894264);
    path26.cubicTo(
        size.width * 0.2504503,
        size.height * 0.7885969,
        size.width * 0.2503448,
        size.height * 0.7877597,
        size.width * 0.2502663,
        size.height * 0.7869225);
    path26.cubicTo(
        size.width * 0.2485278,
        size.height * 0.7675233,
        size.width * 0.2688859,
        size.height * 0.7426628,
        size.width * 0.2714739,
        size.height * 0.7189302);
    path26.lineTo(size.width * 0.3271895, size.height * 0.7149651);
    path26.lineTo(size.width * 0.3340621, size.height * 0.7254070);
    path26.lineTo(size.width * 0.3984935, size.height * 0.6784535);
    path26.cubicTo(
        size.width * 0.4114510,
        size.height * 0.6690116,
        size.width * 0.4284967,
        size.height * 0.6741202,
        size.width * 0.4365621,
        size.height * 0.6898605);
    path26.cubicTo(
        size.width * 0.4369869,
        size.height * 0.6906938,
        size.width * 0.4373824,
        size.height * 0.6915426,
        size.width * 0.4377484,
        size.height * 0.6924147);
    path26.lineTo(size.width * 0.5024706, size.height * 0.8471899);
    path26.close();

    Paint paint26Fill = Paint()..style = PaintingStyle.fill;
    paint26Fill.color = const Color(0xff2F2E41);
    canvas.drawPath(path26, paint26Fill);

    final Path path27 = Path();
    path27.moveTo(size.width * 0.4868562, size.height * 0.9278023);
    path27.lineTo(size.width * 0.4576634, size.height * 0.9310155);
    path27.lineTo(size.width * 0.4047320, size.height * 0.8027132);
    path27.cubicTo(
        size.width * 0.3522451,
        size.height * 0.8134147,
        size.width * 0.3027294,
        size.height * 0.8168411,
        size.width * 0.2598997,
        size.height * 0.8038992);
    path27.cubicTo(
        size.width * 0.2453984,
        size.height * 0.7995775,
        size.width * 0.2365343,
        size.height * 0.7818295,
        size.width * 0.2401010,
        size.height * 0.7642597);
    path27.cubicTo(
        size.width * 0.2402676,
        size.height * 0.7634380,
        size.width * 0.2404605,
        size.height * 0.7626279,
        size.width * 0.2406794,
        size.height * 0.7618217);
    path27.cubicTo(
        size.width * 0.2458052,
        size.height * 0.7432868,
        size.width * 0.2592232,
        size.height * 0.7301705,
        size.width * 0.2697944,
        size.height * 0.7097829);
    path27.lineTo(size.width * 0.3470131, size.height * 0.7111744);
    path27.lineTo(size.width * 0.3383889, size.height * 0.7464419);
    path27.lineTo(size.width * 0.4133987, size.height * 0.7349380);
    path27.cubicTo(
        size.width * 0.4284869,
        size.height * 0.7326240,
        size.width * 0.4422614,
        size.height * 0.7455659,
        size.width * 0.4441732,
        size.height * 0.7638450);
    path27.cubicTo(
        size.width * 0.4442712,
        size.height * 0.7648101,
        size.width * 0.4443399,
        size.height * 0.7657791,
        size.width * 0.4443693,
        size.height * 0.7667519);
    path27.lineTo(size.width * 0.4868562, size.height * 0.9278023);
    path27.close();

    Paint paint27Fill = Paint()..style = PaintingStyle.fill;
    paint27Fill.color = const Color(0xff2F2E41);
    canvas.drawPath(path27, paint27Fill);

    final Path path28 = Path();
    path28.moveTo(size.width * 0.2995042, size.height * 0.4991473);
    path28.cubicTo(
        size.width * 0.3168212,
        size.height * 0.4991473,
        size.width * 0.3308595,
        size.height * 0.4825116,
        size.width * 0.3308595,
        size.height * 0.4619845);
    path28.cubicTo(
        size.width * 0.3308595,
        size.height * 0.4414612,
        size.width * 0.3168212,
        size.height * 0.4248217,
        size.width * 0.2995042,
        size.height * 0.4248217);
    path28.cubicTo(
        size.width * 0.2821876,
        size.height * 0.4248217,
        size.width * 0.2681493,
        size.height * 0.4414612,
        size.width * 0.2681493,
        size.height * 0.4619845);
    path28.cubicTo(
        size.width * 0.2681493,
        size.height * 0.4825116,
        size.width * 0.2821876,
        size.height * 0.4991473,
        size.width * 0.2995042,
        size.height * 0.4991473);
    path28.close();

    Paint paint28Fill = Paint()..style = PaintingStyle.fill;
    paint28Fill.color = const Color(0xffFFB6B6);
    canvas.drawPath(path28, paint28Fill);

    final Path path29 = Path();
    path29.moveTo(size.width * 0.2811216, size.height * 0.5125620);
    path29.lineTo(size.width * 0.3098712, size.height * 0.5165698);
    path29.cubicTo(
        size.width * 0.3110837,
        size.height * 0.5167403,
        size.width * 0.3122212,
        size.height * 0.5173527,
        size.width * 0.3131258,
        size.height * 0.5183256);
    path29.cubicTo(
        size.width * 0.3140301,
        size.height * 0.5192984,
        size.width * 0.3146562,
        size.height * 0.5205775,
        size.width * 0.3149170,
        size.height * 0.5219922);
    path29.lineTo(size.width * 0.3194892, size.height * 0.5467907);
    path29.lineTo(size.width * 0.3479902, size.height * 0.5865698);
    path29.cubicTo(
        size.width * 0.3479902,
        size.height * 0.5865698,
        size.width * 0.3582255,
        size.height * 0.6093140,
        size.width * 0.3543856,
        size.height * 0.6350891);
    path29.cubicTo(
        size.width * 0.3505490,
        size.height * 0.6608682,
        size.width * 0.3488627,
        size.height * 0.6800194,
        size.width * 0.3488627,
        size.height * 0.6800194);
    path29.cubicTo(
        size.width * 0.3488627,
        size.height * 0.6800194,
        size.width * 0.2724085,
        size.height * 0.7139961,
        size.width * 0.2698497,
        size.height * 0.7094457);
    path29.cubicTo(
        size.width * 0.2672912,
        size.height * 0.7048992,
        size.width * 0.2664608,
        size.height * 0.6842364,
        size.width * 0.2664608,
        size.height * 0.6842364);
    path29.lineTo(size.width * 0.2562265, size.height * 0.5492868);
    path29.cubicTo(
        size.width * 0.2562265,
        size.height * 0.5492868,
        size.width * 0.2677402,
        size.height * 0.5265426,
        size.width * 0.2741369,
        size.height * 0.5265426);
    path29.cubicTo(
        size.width * 0.2782650,
        size.height * 0.5263798,
        size.width * 0.2777356,
        size.height * 0.5153682,
        size.width * 0.2811216,
        size.height * 0.5125620);
    path29.close();

    Paint paint29Fill = Paint()..style = PaintingStyle.fill;
    paint29Fill.color = const Color(0xffEF356A);
    canvas.drawPath(path29, paint29Fill);

    final Path path30 = Path();
    path30.moveTo(size.width * 0.3496405, size.height * 0.6883217);
    path30.cubicTo(
        size.width * 0.3536699,
        size.height * 0.6883217,
        size.width * 0.3569379,
        size.height * 0.6836744,
        size.width * 0.3569379,
        size.height * 0.6779380);
    path30.cubicTo(
        size.width * 0.3569379,
        size.height * 0.6722054,
        size.width * 0.3536699,
        size.height * 0.6675543,
        size.width * 0.3496405,
        size.height * 0.6675543);
    path30.cubicTo(
        size.width * 0.3456078,
        size.height * 0.6675543,
        size.width * 0.3423399,
        size.height * 0.6722054,
        size.width * 0.3423399,
        size.height * 0.6779380);
    path30.cubicTo(
        size.width * 0.3423399,
        size.height * 0.6836744,
        size.width * 0.3456078,
        size.height * 0.6883217,
        size.width * 0.3496405,
        size.height * 0.6883217);
    path30.close();

    Paint paint30Fill = Paint()..style = PaintingStyle.fill;
    paint30Fill.color = const Color(0xff6C63FF);
    canvas.drawPath(path30, paint30Fill);

    final Path path31 = Path();
    path31.moveTo(size.width * 0.4625588, size.height * 0.9576395);
    path31.lineTo(size.width * 0.4847778, size.height * 0.9444419);
    path31.lineTo(size.width * 0.4889673, size.height * 0.9560233);
    path31.lineTo(size.width * 0.5170654, size.height * 0.9627519);
    path31.cubicTo(
        size.width * 0.5184510,
        size.height * 0.9630853,
        size.width * 0.5197157,
        size.height * 0.9639341,
        size.width * 0.5206667,
        size.height * 0.9651783);
    path31.cubicTo(
        size.width * 0.5216176,
        size.height * 0.9664186,
        size.width * 0.5222092,
        size.height * 0.9679922,
        size.width * 0.5223562,
        size.height * 0.9696589);
    path31.cubicTo(
        size.width * 0.5225000,
        size.height * 0.9713295,
        size.width * 0.5221928,
        size.height * 0.9730078,
        size.width * 0.5214739,
        size.height * 0.9744574);
    path31.cubicTo(
        size.width * 0.5207549,
        size.height * 0.9759031,
        size.width * 0.5196667,
        size.height * 0.9770388,
        size.width * 0.5183660,
        size.height * 0.9777016);
    path31.lineTo(size.width * 0.4912157, size.height * 0.9914922);
    path31.lineTo(size.width * 0.4823954, size.height * 0.9824147);
    path31.lineTo(size.width * 0.4847092, size.height * 0.9947984);
    path31.lineTo(size.width * 0.4744739, size.height);
    path31.lineTo(size.width * 0.4625588, size.height * 0.9576395);
    path31.close();

    Paint paint31Fill = Paint()..style = PaintingStyle.fill;
    paint31Fill.color = const Color(0xff2F2E41);
    canvas.drawPath(path31, paint31Fill);

    final Path path32 = Path();
    path32.moveTo(size.width * 0.4843105, size.height * 0.8792519);
    path32.lineTo(size.width * 0.5063301, size.height * 0.8655930);
    path32.lineTo(size.width * 0.5106895, size.height * 0.8770853);
    path32.lineTo(size.width * 0.5388824, size.height * 0.8832287);
    path32.cubicTo(
        size.width * 0.5402745,
        size.height * 0.8835349,
        size.width * 0.5415490,
        size.height * 0.8843566,
        size.width * 0.5425196,
        size.height * 0.8855775);
    path32.cubicTo(
        size.width * 0.5434902,
        size.height * 0.8868023,
        size.width * 0.5441046,
        size.height * 0.8883605,
        size.width * 0.5442745,
        size.height * 0.8900233);
    path32.cubicTo(
        size.width * 0.5444444,
        size.height * 0.8916899,
        size.width * 0.5441601,
        size.height * 0.8933760,
        size.width * 0.5434641,
        size.height * 0.8948372);
    path32.cubicTo(
        size.width * 0.5427680,
        size.height * 0.8962984,
        size.width * 0.5416961,
        size.height * 0.8974574,
        size.width * 0.5404052,
        size.height * 0.8981473);
    path32.lineTo(size.width * 0.5134673, size.height * 0.9125039);
    path32.lineTo(size.width * 0.5045098, size.height * 0.9036124);
    path32.lineTo(size.width * 0.5070098, size.height * 0.9159457);
    path32.lineTo(size.width * 0.4968529, size.height * 0.9213566);
    path32.lineTo(size.width * 0.4843105, size.height * 0.8792519);
    path32.close();

    Paint paint32Fill = Paint()..style = PaintingStyle.fill;
    paint32Fill.color = const Color(0xff2F2E41);
    canvas.drawPath(path32, paint32Fill);

    final Path path33 = Path();
    path33.moveTo(size.width * 0.2815889, size.height * 0.4503295);
    path33.cubicTo(
        size.width * 0.2733052,
        size.height * 0.4503450,
        size.width * 0.2652203,
        size.height * 0.4473217,
        size.width * 0.2584441,
        size.height * 0.4416744);
    path33.lineTo(size.width * 0.2582176, size.height * 0.4414845);
    path33.lineTo(size.width * 0.2582176, size.height * 0.4411589);
    path33.cubicTo(
        size.width * 0.2582268,
        size.height * 0.4316628,
        size.width * 0.2614141,
        size.height * 0.4225581,
        size.width * 0.2670797,
        size.height * 0.4158411);
    path33.cubicTo(
        size.width * 0.2727458,
        size.height * 0.4091279,
        size.width * 0.2804278,
        size.height * 0.4053488,
        size.width * 0.2884405,
        size.height * 0.4053372);
    path33.lineTo(size.width * 0.3011657, size.height * 0.4053372);
    path33.cubicTo(
        size.width * 0.3091784,
        size.height * 0.4053488,
        size.width * 0.3168605,
        size.height * 0.4091279,
        size.width * 0.3225265,
        size.height * 0.4158411);
    path33.cubicTo(
        size.width * 0.3281928,
        size.height * 0.4225581,
        size.width * 0.3313791,
        size.height * 0.4316628,
        size.width * 0.3313889,
        size.height * 0.4411589);
    path33.cubicTo(
        size.width * 0.3313791,
        size.height * 0.4433333,
        size.width * 0.3306569,
        size.height * 0.4454147,
        size.width * 0.3293693,
        size.height * 0.4469651);
    path33.cubicTo(
        size.width * 0.3280850,
        size.height * 0.4485155,
        size.width * 0.3263395,
        size.height * 0.4494109,
        size.width * 0.3245059,
        size.height * 0.4494574);
    path33.lineTo(size.width * 0.2823039, size.height * 0.4503217);
    path33.cubicTo(
        size.width * 0.2820660,
        size.height * 0.4503256,
        size.width * 0.2818268,
        size.height * 0.4503295,
        size.width * 0.2815889,
        size.height * 0.4503295);
    path33.close();

    Paint paint33Fill = Paint()..style = PaintingStyle.fill;
    paint33Fill.color = const Color(0xff2F2E41);
    canvas.drawPath(path33, paint33Fill);

    final Path path34 = Path();
    path34.moveTo(size.width * 0.3335098, size.height * 0.4342791);
    path34.cubicTo(
        size.width * 0.3375686,
        size.height * 0.4315039,
        size.width * 0.3382451,
        size.height * 0.4238915,
        size.width * 0.3350229,
        size.height * 0.4172791);
    path34.cubicTo(
        size.width * 0.3318039,
        size.height * 0.4106667,
        size.width * 0.3259023,
        size.height * 0.4075581,
        size.width * 0.3218448,
        size.height * 0.4103333);
    path34.cubicTo(
        size.width * 0.3177873,
        size.height * 0.4131085,
        size.width * 0.3171092,
        size.height * 0.4207209,
        size.width * 0.3203304,
        size.height * 0.4273333);
    path34.cubicTo(
        size.width * 0.3235513,
        size.height * 0.4339457,
        size.width * 0.3294510,
        size.height * 0.4370581,
        size.width * 0.3335098,
        size.height * 0.4342791);
    path34.close();

    Paint paint34Fill = Paint()..style = PaintingStyle.fill;
    paint34Fill.color = const Color(0xff2F2E41);
    canvas.drawPath(path34, paint34Fill);

    final Path path35 = Path();
    path35.moveTo(size.width * 0.2700497, size.height * 0.4269031);
    path35.cubicTo(
        size.width * 0.2746049,
        size.height * 0.4215039,
        size.width * 0.2756121,
        size.height * 0.4139419,
        size.width * 0.2722990,
        size.height * 0.4100155);
    path35.cubicTo(
        size.width * 0.2689863,
        size.height * 0.4060891,
        size.width * 0.2626075,
        size.height * 0.4072829,
        size.width * 0.2580520,
        size.height * 0.4126822);
    path35.cubicTo(
        size.width * 0.2534967,
        size.height * 0.4180814,
        size.width * 0.2524895,
        size.height * 0.4256395,
        size.width * 0.2558026,
        size.height * 0.4295659);
    path35.cubicTo(
        size.width * 0.2591157,
        size.height * 0.4334961,
        size.width * 0.2654941,
        size.height * 0.4323023,
        size.width * 0.2700497,
        size.height * 0.4269031);
    path35.close();

    Paint paint35Fill = Paint()..style = PaintingStyle.fill;
    paint35Fill.color = const Color(0xff2F2E41);
    canvas.drawPath(path35, paint35Fill);

    final Path path36 = Path();
    path36.moveTo(size.width * 0.5475490, size.height * 0.7666899);
    path36.lineTo(size.width * 0.5162516, size.height * 0.7666899);
    path36.cubicTo(
        size.width * 0.5155458,
        size.height * 0.7666860,
        size.width * 0.5148497,
        size.height * 0.7668682,
        size.width * 0.5142092,
        size.height * 0.7672171);
    path36.cubicTo(
        size.width * 0.5135654,
        size.height * 0.7675698,
        size.width * 0.5130000,
        size.height * 0.7680814,
        size.width * 0.5125425,
        size.height * 0.7687209);
    path36.cubicTo(
        size.width * 0.5113889,
        size.height * 0.7684690,
        size.width * 0.5101993,
        size.height * 0.7685465,
        size.width * 0.5090752,
        size.height * 0.7689457);
    path36.cubicTo(
        size.width * 0.5079510,
        size.height * 0.7693450,
        size.width * 0.5069216,
        size.height * 0.7700504,
        size.width * 0.5060719,
        size.height * 0.7710116);
    path36.cubicTo(
        size.width * 0.5052255,
        size.height * 0.7719729,
        size.width * 0.5045817,
        size.height * 0.7731589,
        size.width * 0.5041928,
        size.height * 0.7744729);
    path36.cubicTo(
        size.width * 0.5038072,
        size.height * 0.7757868,
        size.width * 0.5036895,
        size.height * 0.7771899,
        size.width * 0.5038464,
        size.height * 0.7785698);
    path36.cubicTo(
        size.width * 0.5040065,
        size.height * 0.7799457,
        size.width * 0.5044412,
        size.height * 0.7812597,
        size.width * 0.5051111,
        size.height * 0.7824031);
    path36.cubicTo(
        size.width * 0.5057810,
        size.height * 0.7835426,
        size.width * 0.5066699,
        size.height * 0.7844806,
        size.width * 0.5077059,
        size.height * 0.7851357);
    path36.cubicTo(
        size.width * 0.5087418,
        size.height * 0.7857907,
        size.width * 0.5098922,
        size.height * 0.7861434,
        size.width * 0.5110686,
        size.height * 0.7861705);
    path36.cubicTo(
        size.width * 0.5122418,
        size.height * 0.7861938,
        size.width * 0.5134020,
        size.height * 0.7858876,
        size.width * 0.5144575,
        size.height * 0.7852791);
    path36.lineTo(size.width * 0.5170523, size.height * 0.7952752);
    path36.cubicTo(
        size.width * 0.5173595,
        size.height * 0.7964612,
        size.width * 0.5179804,
        size.height * 0.7974961,
        size.width * 0.5188203,
        size.height * 0.7982326);
    path36.cubicTo(
        size.width * 0.5196634,
        size.height * 0.7989690,
        size.width * 0.5206797,
        size.height * 0.7993682,
        size.width * 0.5217255,
        size.height * 0.7993682);
    path36.lineTo(size.width * 0.5420752, size.height * 0.7993682);
    path36.cubicTo(
        size.width * 0.5431209,
        size.height * 0.7993682,
        size.width * 0.5441373,
        size.height * 0.7989690,
        size.width * 0.5449804,
        size.height * 0.7982326);
    path36.cubicTo(
        size.width * 0.5458203,
        size.height * 0.7974961,
        size.width * 0.5464412,
        size.height * 0.7964612,
        size.width * 0.5467484,
        size.height * 0.7952752);
    path36.lineTo(size.width * 0.5522222, size.height * 0.7741899);
    path36.cubicTo(
        size.width * 0.5524477,
        size.height * 0.7733217,
        size.width * 0.5524967,
        size.height * 0.7724031,
        size.width * 0.5523693,
        size.height * 0.7715116);
    path36.cubicTo(
        size.width * 0.5522418,
        size.height * 0.7706163,
        size.width * 0.5519379,
        size.height * 0.7697713,
        size.width * 0.5514837,
        size.height * 0.7690426);
    path36.cubicTo(
        size.width * 0.5510261,
        size.height * 0.7683101,
        size.width * 0.5504346,
        size.height * 0.7677171,
        size.width * 0.5497516,
        size.height * 0.7673101);
    path36.cubicTo(
        size.width * 0.5490686,
        size.height * 0.7669031,
        size.width * 0.5483137,
        size.height * 0.7666899,
        size.width * 0.5475490,
        size.height * 0.7666899);
    path36.close();
    path36.moveTo(size.width * 0.5112222, size.height * 0.7836550);
    path36.cubicTo(
        size.width * 0.5098170,
        size.height * 0.7836550,
        size.width * 0.5084673,
        size.height * 0.7829961,
        size.width * 0.5074739,
        size.height * 0.7818140);
    path36.cubicTo(
        size.width * 0.5064771,
        size.height * 0.7806357,
        size.width * 0.5059183,
        size.height * 0.7790388,
        size.width * 0.5059183,
        size.height * 0.7773721);
    path36.cubicTo(
        size.width * 0.5059183,
        size.height * 0.7757054,
        size.width * 0.5064771,
        size.height * 0.7741085,
        size.width * 0.5074739,
        size.height * 0.7729302);
    path36.cubicTo(
        size.width * 0.5084673,
        size.height * 0.7717481,
        size.width * 0.5098170,
        size.height * 0.7710891,
        size.width * 0.5112222,
        size.height * 0.7710891);
    path36.cubicTo(
        size.width * 0.5113170,
        size.height * 0.7710891,
        size.width * 0.5114085,
        size.height * 0.7711163,
        size.width * 0.5115033,
        size.height * 0.7711202);
    path36.cubicTo(
        size.width * 0.5112941,
        size.height * 0.7721318,
        size.width * 0.5113203,
        size.height * 0.7731938,
        size.width * 0.5115784,
        size.height * 0.7741899);
    path36.lineTo(size.width * 0.5138170, size.height * 0.7828178);
    path36.cubicTo(
        size.width * 0.5130294,
        size.height * 0.7833605,
        size.width * 0.5121340,
        size.height * 0.7836512,
        size.width * 0.5112222,
        size.height * 0.7836550);
    path36.close();

    Paint paint36Fill = Paint()..style = PaintingStyle.fill;
    paint36Fill.color = const Color(0xff3F3D56);
    canvas.drawPath(path36, paint36Fill);

    final Path path37 = Path();
    path37.moveTo(size.width * 0.4077974, size.height * 0.7394031);
    path37.cubicTo(
        size.width * 0.4056601,
        size.height * 0.7396395,
        size.width * 0.4035065,
        size.height * 0.7393140,
        size.width * 0.4014837,
        size.height * 0.7384535);
    path37.cubicTo(
        size.width * 0.3994641,
        size.height * 0.7375969,
        size.width * 0.3976275,
        size.height * 0.7362209,
        size.width * 0.3961046,
        size.height * 0.7344302);
    path37.cubicTo(
        size.width * 0.3945817,
        size.height * 0.7326395,
        size.width * 0.3934085,
        size.height * 0.7304729,
        size.width * 0.3926667,
        size.height * 0.7280853);
    path37.cubicTo(
        size.width * 0.3919248,
        size.height * 0.7256977,
        size.width * 0.3916340,
        size.height * 0.7231473,
        size.width * 0.3918170,
        size.height * 0.7206124);
    path37.lineTo(size.width * 0.2874268, size.height * 0.6543101);
    path37.lineTo(size.width * 0.3102592, size.height * 0.6369845);
    path37.lineTo(size.width * 0.4087451, size.height * 0.7046783);
    path37.cubicTo(
        size.width * 0.4123170,
        size.height * 0.7053178,
        size.width * 0.4155686,
        size.height * 0.7074922,
        size.width * 0.4178791,
        size.height * 0.7107829);
    path37.cubicTo(
        size.width * 0.4201895,
        size.height * 0.7140775,
        size.width * 0.4214020,
        size.height * 0.7182597,
        size.width * 0.4212843,
        size.height * 0.7225388);
    path37.cubicTo(
        size.width * 0.4211699,
        size.height * 0.7268217,
        size.width * 0.4197320,
        size.height * 0.7309031,
        size.width * 0.4172451,
        size.height * 0.7340078);
    path37.cubicTo(
        size.width * 0.4147582,
        size.height * 0.7371163,
        size.width * 0.4113987,
        size.height * 0.7390388,
        size.width * 0.4077974,
        size.height * 0.7394031);
    path37.close();

    Paint paint37Fill = Paint()..style = PaintingStyle.fill;
    paint37Fill.color = const Color(0xffFFB6B6);
    canvas.drawPath(path37, paint37Fill);

    final Path path38 = Path();
    path38.moveTo(size.width * 0.2711366, size.height * 0.5324651);
    path38.cubicTo(
        size.width * 0.2711366,
        size.height * 0.5324651,
        size.width * 0.2525082,
        size.height * 0.5297016,
        size.width * 0.2477271,
        size.height * 0.5545388);
    path38.cubicTo(
        size.width * 0.2429461,
        size.height * 0.5793721,
        size.width * 0.2757186,
        size.height * 0.6486085,
        size.width * 0.2807190,
        size.height * 0.6599535);
    path38.cubicTo(
        size.width * 0.2857193,
        size.height * 0.6713023,
        size.width * 0.3538725,
        size.height * 0.6961202,
        size.width * 0.3538725,
        size.height * 0.6961202);
    path38.lineTo(size.width * 0.3801144, size.height * 0.6798721);
    path38.lineTo(size.width * 0.3213542, size.height * 0.6357326);
    path38.lineTo(size.width * 0.2711366, size.height * 0.5324651);
    path38.close();

    Paint paint38Fill = Paint()..style = PaintingStyle.fill;
    paint38Fill.color = const Color(0xffEF356A);
    canvas.drawPath(path38, paint38Fill);

    final Path path39 = Path();
    path39.moveTo(size.width * 0.4024379, size.height * 0.4298450);
    path39.lineTo(size.width * 0.4088007, size.height * 0.4298450);
    path39.cubicTo(
        size.width * 0.4118954,
        size.height * 0.4298450,
        size.width * 0.4148627,
        size.height * 0.4313023,
        size.width * 0.4170490,
        size.height * 0.4338953);
    path39.cubicTo(
        size.width * 0.4192353,
        size.height * 0.4364884,
        size.width * 0.4204673,
        size.height * 0.4400039,
        size.width * 0.4204673,
        size.height * 0.4436705);
    path39.lineTo(size.width * 0.3907745, size.height * 0.4436705);
    path39.cubicTo(
        size.width * 0.3907745,
        size.height * 0.4400039,
        size.width * 0.3920033,
        size.height * 0.4364884,
        size.width * 0.3941895,
        size.height * 0.4338953);
    path39.cubicTo(
        size.width * 0.3963791,
        size.height * 0.4313023,
        size.width * 0.3993431,
        size.height * 0.4298450,
        size.width * 0.4024379,
        size.height * 0.4298450);
    path39.close();

    Paint paint39Fill = Paint()..style = PaintingStyle.fill;
    paint39Fill.color = const Color(0xffCCCCCC);
    canvas.drawPath(path39, paint39Fill);

    final Path path40 = Path();
    path40.moveTo(size.width * 0.2006807, size.height * 0.1718969);
    path40.cubicTo(
        size.width * 0.2354938,
        size.height * 0.1718969,
        size.width * 0.2637154,
        size.height * 0.1384481,
        size.width * 0.2637154,
        size.height * 0.09718643);
    path40.cubicTo(
        size.width * 0.2637154,
        size.height * 0.05592519,
        size.width * 0.2354938,
        size.height * 0.02247609,
        size.width * 0.2006807,
        size.height * 0.02247609);
    path40.cubicTo(
        size.width * 0.1658673,
        size.height * 0.02247609,
        size.width * 0.1376458,
        size.height * 0.05592519,
        size.width * 0.1376458,
        size.height * 0.09718643);
    path40.cubicTo(
        size.width * 0.1376458,
        size.height * 0.1384481,
        size.width * 0.1658673,
        size.height * 0.1718969,
        size.width * 0.2006807,
        size.height * 0.1718969);
    path40.close();

    Paint paint40Fill = Paint()..style = PaintingStyle.fill;
    paint40Fill.color = const Color(0xff6C63FF);
    canvas.drawPath(path40, paint40Fill);

    final Path path41 = Path();
    path41.moveTo(size.width * 0.3936765, size.height * 0.09329109);
    path41.cubicTo(
        size.width * 0.3769967,
        size.height * 0.07254961,
        size.width * 0.3576209,
        size.height * 0.05362791,
        size.width * 0.3346863,
        size.height * 0.04362907);
    path41.cubicTo(
        size.width * 0.3282974,
        size.height * 0.04083217,
        size.width * 0.3216722,
        size.height * 0.03885891,
        size.width * 0.3149268,
        size.height * 0.03774407);
    path41.cubicTo(
        size.width * 0.3148725,
        size.height * 0.03773527,
        size.width * 0.3148212,
        size.height * 0.03774829,
        size.width * 0.3147673,
        size.height * 0.03774310);
    path41.cubicTo(
        size.width * 0.3146575,
        size.height * 0.03770961,
        size.width * 0.3145461,
        size.height * 0.03768372,
        size.width * 0.3144340,
        size.height * 0.03766558);
    path41.cubicTo(
        size.width * 0.3049997,
        size.height * 0.03624109,
        size.width * 0.2954235,
        size.height * 0.03692628,
        size.width * 0.2862026,
        size.height * 0.03968566);
    path41.cubicTo(
        size.width * 0.2816931,
        size.height * 0.04102674,
        size.width * 0.2772941,
        size.height * 0.04284302,
        size.width * 0.2730578,
        size.height * 0.04511318);
    path41.cubicTo(
        size.width * 0.2688062,
        size.height * 0.04757132,
        size.width * 0.2646869,
        size.height * 0.05033798,
        size.width * 0.2607232,
        size.height * 0.05339806);
    path41.cubicTo(
        size.width * 0.2523337,
        size.height * 0.05935039,
        size.width * 0.2430964,
        size.height * 0.06343450,
        size.width * 0.2334673,
        size.height * 0.06544961);
    path41.cubicTo(
        size.width * 0.2286340,
        size.height * 0.06648101,
        size.width * 0.2237386,
        size.height * 0.06705039,
        size.width * 0.2188281,
        size.height * 0.06715233);
    path41.cubicTo(
        size.width * 0.2145676,
        size.height * 0.06725388,
        size.width * 0.2105497,
        size.height * 0.06742907,
        size.width * 0.2065131,
        size.height * 0.06925349);
    path41.cubicTo(
        size.width * 0.2022010,
        size.height * 0.07117519,
        size.width * 0.1983278,
        size.height * 0.07426512,
        size.width * 0.1952020,
        size.height * 0.07827636);
    path41.cubicTo(
        size.width * 0.1920765,
        size.height * 0.08228721,
        size.width * 0.1897853,
        size.height * 0.08710891,
        size.width * 0.1885111,
        size.height * 0.09235581);
    path41.cubicTo(
        size.width * 0.1884127,
        size.height * 0.09282326,
        size.width * 0.1884425,
        size.height * 0.09331550,
        size.width * 0.1885954,
        size.height * 0.09376124);
    path41.cubicTo(
        size.width * 0.1887487,
        size.height * 0.09420736,
        size.width * 0.1890173,
        size.height * 0.09458411,
        size.width * 0.1893631,
        size.height * 0.09483760);
    path41.cubicTo(
        size.width * 0.1904549,
        size.height * 0.09576434,
        size.width * 0.1915196,
        size.height * 0.09681589,
        size.width * 0.1926667,
        size.height * 0.09764186);
    path41.cubicTo(
        size.width * 0.1936873,
        size.height * 0.09819535,
        size.width * 0.1947775,
        size.height * 0.09854767,
        size.width * 0.1958938,
        size.height * 0.09868488);
    path41.cubicTo(
        size.width * 0.1977180,
        size.height * 0.09914109,
        size.width * 0.1995441,
        size.height * 0.09958411,
        size.width * 0.2013729,
        size.height * 0.1000136);
    path41.cubicTo(
        size.width * 0.2081098,
        size.height * 0.1015957,
        size.width * 0.2148745,
        size.height * 0.1029961,
        size.width * 0.2216670,
        size.height * 0.1042147);
    path41.cubicTo(
        size.width * 0.2354121,
        size.height * 0.1066810,
        size.width * 0.2492310,
        size.height * 0.1084182,
        size.width * 0.2631245,
        size.height * 0.1094264);
    path41.cubicTo(
        size.width * 0.2909569,
        size.height * 0.1114244,
        size.width * 0.3188846,
        size.height * 0.1104295,
        size.width * 0.3465654,
        size.height * 0.1064539);
    path41.cubicTo(
        size.width * 0.3621209,
        size.height * 0.1042205,
        size.width * 0.3775752,
        size.height * 0.1010531,
        size.width * 0.3928595,
        size.height * 0.09696357);
    path41.cubicTo(
        size.width * 0.3931699,
        size.height * 0.09685659,
        size.width * 0.3934510,
        size.height * 0.09665620,
        size.width * 0.3936765,
        size.height * 0.09638256);
    path41.cubicTo(
        size.width * 0.3938987,
        size.height * 0.09610891,
        size.width * 0.3940621,
        size.height * 0.09577054,
        size.width * 0.3941438,
        size.height * 0.09540116);
    path41.cubicTo(
        size.width * 0.3942255,
        size.height * 0.09503178,
        size.width * 0.3942255,
        size.height * 0.09464341,
        size.width * 0.3941438,
        size.height * 0.09427364);
    path41.cubicTo(
        size.width * 0.3940621,
        size.height * 0.09390388,
        size.width * 0.3939020,
        size.height * 0.09356550,
        size.width * 0.3936765,
        size.height * 0.09329109);
    path41.close();

    Paint paint41Fill = Paint()..style = PaintingStyle.fill;
    paint41Fill.color = const Color(0xffE6E6E6);
    canvas.drawPath(path41, paint41Fill);

    final Path path42 = Path();
    path42.moveTo(size.width * 0.2036712, size.height * 0.1432461);
    path42.cubicTo(
        size.width * 0.1972824,
        size.height * 0.1404488,
        size.width * 0.1906578,
        size.height * 0.1384760,
        size.width * 0.1839124,
        size.height * 0.1373609);
    path42.cubicTo(
        size.width * 0.1838582,
        size.height * 0.1373523,
        size.width * 0.1838069,
        size.height * 0.1373651,
        size.width * 0.1837529,
        size.height * 0.1373601);
    path42.cubicTo(
        size.width * 0.1836431,
        size.height * 0.1373267,
        size.width * 0.1835320,
        size.height * 0.1373008,
        size.width * 0.1834196,
        size.height * 0.1372826);
    path42.cubicTo(
        size.width * 0.1739853,
        size.height * 0.1358581,
        size.width * 0.1644095,
        size.height * 0.1365434,
        size.width * 0.1551882,
        size.height * 0.1393027);
    path42.cubicTo(
        size.width * 0.1506791,
        size.height * 0.1406438,
        size.width * 0.1462801,
        size.height * 0.1424601,
        size.width * 0.1420435,
        size.height * 0.1447298);
    path42.cubicTo(
        size.width * 0.1377922,
        size.height * 0.1471880,
        size.width * 0.1336729,
        size.height * 0.1499550,
        size.width * 0.1297092,
        size.height * 0.1530147);
    path42.cubicTo(
        size.width * 0.1213193,
        size.height * 0.1589671,
        size.width * 0.1120820,
        size.height * 0.1630516,
        size.width * 0.1024529,
        size.height * 0.1650663);
    path42.cubicTo(
        size.width * 0.09761961,
        size.height * 0.1660977,
        size.width * 0.09272451,
        size.height * 0.1666671,
        size.width * 0.08781405,
        size.height * 0.1667694);
    path42.cubicTo(
        size.width * 0.08355359,
        size.height * 0.1668705,
        size.width * 0.07953562,
        size.height * 0.1670461,
        size.width * 0.07549869,
        size.height * 0.1688705);
    path42.cubicTo(
        size.width * 0.07118693,
        size.height * 0.1707922,
        size.width * 0.06731340,
        size.height * 0.1738822,
        size.width * 0.06418791,
        size.height * 0.1778930);
    path42.cubicTo(
        size.width * 0.06106242,
        size.height * 0.1819043,
        size.width * 0.05877124,
        size.height * 0.1867256,
        size.width * 0.05749706,
        size.height * 0.1919729);
    path42.cubicTo(
        size.width * 0.05739869,
        size.height * 0.1924399,
        size.width * 0.05742843,
        size.height * 0.1929322,
        size.width * 0.05758137,
        size.height * 0.1933783);
    path42.cubicTo(
        size.width * 0.05773464,
        size.height * 0.1938244,
        size.width * 0.05800327,
        size.height * 0.1942012,
        size.width * 0.05834902,
        size.height * 0.1944543);
    path42.cubicTo(
        size.width * 0.05944085,
        size.height * 0.1953814,
        size.width * 0.06050523,
        size.height * 0.1964329,
        size.width * 0.06165261,
        size.height * 0.1972585);
    path42.cubicTo(
        size.width * 0.06267320,
        size.height * 0.1978124,
        size.width * 0.06376340,
        size.height * 0.1981647,
        size.width * 0.06487974,
        size.height * 0.1983019);
    path42.cubicTo(
        size.width * 0.06670359,
        size.height * 0.1987581,
        size.width * 0.06853007,
        size.height * 0.1992008,
        size.width * 0.07035882,
        size.height * 0.1996302);
    path42.cubicTo(
        size.width * 0.07709542,
        size.height * 0.2012124,
        size.width * 0.08386013,
        size.height * 0.2026128,
        size.width * 0.09065294,
        size.height * 0.2038318);
    path42.cubicTo(
        size.width * 0.1043977,
        size.height * 0.2062977,
        size.width * 0.1182170,
        size.height * 0.2080349,
        size.width * 0.1321105,
        size.height * 0.2090430);
    path42.cubicTo(
        size.width * 0.1599425,
        size.height * 0.2110411,
        size.width * 0.1878706,
        size.height * 0.2100465,
        size.width * 0.2155513,
        size.height * 0.2060709);
    path42.cubicTo(
        size.width * 0.2311082,
        size.height * 0.2038376,
        size.width * 0.2465595,
        size.height * 0.2006702,
        size.width * 0.2618454,
        size.height * 0.1965806);
    path42.cubicTo(
        size.width * 0.2621549,
        size.height * 0.1964733,
        size.width * 0.2624356,
        size.height * 0.1962733,
        size.width * 0.2626608,
        size.height * 0.1959992);
    path42.cubicTo(
        size.width * 0.2628856,
        size.height * 0.1957256,
        size.width * 0.2630474,
        size.height * 0.1953876,
        size.width * 0.2631294,
        size.height * 0.1950182);
    path42.cubicTo(
        size.width * 0.2632118,
        size.height * 0.1946484,
        size.width * 0.2632121,
        size.height * 0.1942601,
        size.width * 0.2631304,
        size.height * 0.1938903);
    path42.cubicTo(
        size.width * 0.2630490,
        size.height * 0.1935205,
        size.width * 0.2628879,
        size.height * 0.1931822,
        size.width * 0.2626634,
        size.height * 0.1929078);
    path42.cubicTo(
        size.width * 0.2459814,
        size.height * 0.1721667,
        size.width * 0.2266072,
        size.height * 0.1532450,
        size.width * 0.2036712,
        size.height * 0.1432461);
    path42.close();

    Paint paint42Fill = Paint()..style = PaintingStyle.fill;
    paint42Fill.color = const Color(0xffE6E6E6);
    canvas.drawPath(path42, paint42Fill);

    final Path path43 = Path();
    path43.moveTo(size.width * 0.6582418, size.height * 0.7002016);
    path43.lineTo(size.width * 0.6097680, size.height * 0.6247248);
    path43.lineTo(size.width * 0.5715196, size.height * 0.6503566);
    path43.lineTo(size.width * 0.6525686, size.height * 0.7644302);
    path43.lineTo(size.width * 0.6582418, size.height * 0.7002016);
    path43.close();

    Paint paint43Fill = Paint()..style = PaintingStyle.fill;
    paint43Fill.color = const Color(0xff3F3D56);
    canvas.drawPath(path43, paint43Fill);

    final Path path44 = Path();
    path44.moveTo(size.width * 0.7699020, size.height * 0.5775039);
    path44.cubicTo(
        size.width * 0.7709804,
        size.height * 0.6091357,
        size.width * 0.7751144,
        size.height * 0.6405155,
        size.width * 0.7822255,
        size.height * 0.6710271);
    path44.cubicTo(
        size.width * 0.7806993,
        size.height * 0.6752907,
        size.width * 0.7791209,
        size.height * 0.6795194,
        size.width * 0.7774967,
        size.height * 0.6837209);
    path44.cubicTo(
        size.width * 0.7713431,
        size.height * 0.6996357,
        size.width * 0.7644542,
        size.height * 0.7151357,
        size.width * 0.7568595,
        size.height * 0.7301512);
    path44.cubicTo(
        size.width * 0.7355621,
        size.height * 0.7723140,
        size.width * 0.7089771,
        size.height * 0.8103953,
        size.width * 0.6780163,
        size.height * 0.8430814);
    path44.cubicTo(
        size.width * 0.6746634,
        size.height * 0.8466124,
        size.width * 0.6712680,
        size.height * 0.8500853,
        size.width * 0.6678235,
        size.height * 0.8535000);
    path44.cubicTo(
        size.width * 0.6481961,
        size.height * 0.8214264,
        size.width * 0.6376013,
        size.height * 0.7860310,
        size.width * 0.6334118,
        size.height * 0.7496085);
    path44.cubicTo(
        size.width * 0.6328824,
        size.height * 0.7449806,
        size.width * 0.6324477,
        size.height * 0.7403062,
        size.width * 0.6321209,
        size.height * 0.7356550);
    path44.lineTo(size.width * 0.6321209, size.height * 0.7356318);
    path44.cubicTo(
        size.width * 0.6313137,
        size.height * 0.7243295,
        size.width * 0.6310556,
        size.height * 0.7129806,
        size.width * 0.6313464,
        size.height * 0.7016434);
    path44.cubicTo(
        size.width * 0.6313562,
        size.height * 0.7007403,
        size.width * 0.6313758,
        size.height * 0.6998217,
        size.width * 0.6314085,
        size.height * 0.6989070);
    path44.cubicTo(
        size.width * 0.6317810,
        size.height * 0.6867907,
        size.width * 0.6327026,
        size.height * 0.6746473,
        size.width * 0.6340915,
        size.height * 0.6626202);
    path44.lineTo(size.width * 0.6340915, size.height * 0.6626085);
    path44.cubicTo(
        size.width * 0.6342516,
        size.height * 0.6612248,
        size.width * 0.6344085,
        size.height * 0.6598411,
        size.width * 0.6345915,
        size.height * 0.6584612);
    path44.cubicTo(
        size.width * 0.6350980,
        size.height * 0.6543101,
        size.width * 0.6356732,
        size.height * 0.6501628,
        size.width * 0.6362974,
        size.height * 0.6460426);
    path44.cubicTo(
        size.width * 0.6399379,
        size.height * 0.6222636,
        size.width * 0.6450196,
        size.height * 0.5988295,
        size.width * 0.6515033,
        size.height * 0.5759225);
    path44.lineTo(size.width * 0.6515033, size.height * 0.5759070);
    path44.cubicTo(
        size.width * 0.6516863,
        size.height * 0.5752442,
        size.width * 0.6518660,
        size.height * 0.5745891,
        size.width * 0.6520654,
        size.height * 0.5739341);
    path44.cubicTo(
        size.width * 0.6527680,
        size.height * 0.5714457,
        size.width * 0.6534771,
        size.height * 0.5689845,
        size.width * 0.6542092,
        size.height * 0.5665194);
    path44.cubicTo(
        size.width * 0.6542549,
        size.height * 0.5663256,
        size.width * 0.6543105,
        size.height * 0.5661395,
        size.width * 0.6543791,
        size.height * 0.5659535);
    path44.cubicTo(
        size.width * 0.6553235,
        size.height * 0.5627364,
        size.width * 0.6562876,
        size.height * 0.5595426,
        size.width * 0.6572745,
        size.height * 0.5563760);
    path44.cubicTo(
        size.width * 0.6575392,
        size.height * 0.5554961,
        size.width * 0.6578137,
        size.height * 0.5546163,
        size.width * 0.6581013,
        size.height * 0.5537364);
    path44.cubicTo(
        size.width * 0.6592124,
        size.height * 0.5502054,
        size.width * 0.6603497,
        size.height * 0.5466977,
        size.width * 0.6615033,
        size.height * 0.5432442);
    path44.cubicTo(
        size.width * 0.6618660,
        size.height * 0.5421357,
        size.width * 0.6622353,
        size.height * 0.5410310,
        size.width * 0.6626078,
        size.height * 0.5399380);
    path44.cubicTo(
        size.width * 0.6628922,
        size.height * 0.5390930,
        size.width * 0.6631699,
        size.height * 0.5382519,
        size.width * 0.6634673,
        size.height * 0.5374225);
    path44.lineTo(size.width * 0.6634673, size.height * 0.5374109);
    path44.cubicTo(
        size.width * 0.6651536,
        size.height * 0.5324729,
        size.width * 0.6668595,
        size.height * 0.5276279,
        size.width * 0.6685882,
        size.height * 0.5228798);
    path44.cubicTo(
        size.width * 0.6734346,
        size.height * 0.5095349,
        size.width * 0.6784183,
        size.height * 0.4969767,
        size.width * 0.6832745,
        size.height * 0.4854031);
    path44.lineTo(size.width * 0.6832876, size.height * 0.4853876);
    path44.cubicTo(
        size.width * 0.7034444,
        size.height * 0.4374651,
        size.width * 0.7217680,
        size.height * 0.4063450,
        size.width * 0.7217680,
        size.height * 0.4063450);
    path44.lineTo(size.width * 0.7905817, size.height * 0.4327403);
    path44.cubicTo(
        size.width * 0.7823725,
        size.height * 0.4499961,
        size.width * 0.7760229,
        size.height * 0.4754457,
        size.width * 0.7725425,
        size.height * 0.5054729);
    path44.cubicTo(
        size.width * 0.7698627,
        size.height * 0.5293411,
        size.width * 0.7689804,
        size.height * 0.5534419,
        size.width * 0.7699020,
        size.height * 0.5774922);
    path44.lineTo(size.width * 0.7699020, size.height * 0.5775039);
    path44.close();

    Paint paint44Fill = Paint()..style = PaintingStyle.fill;
    paint44Fill.color = const Color(0xff3F3D56);
    canvas.drawPath(path44, paint44Fill);

    final Path path45 = Path();
    path45.moveTo(size.width * 0.6555359, size.height * 0.5698256);
    path45.cubicTo(
        size.width * 0.6551307,
        size.height * 0.5687054,
        size.width * 0.6546765,
        size.height * 0.5676124,
        size.width * 0.6542092,
        size.height * 0.5665194);
    path45.cubicTo(
        size.width * 0.6517908,
        size.height * 0.5609690,
        size.width * 0.6486765,
        size.height * 0.5558837,
        size.width * 0.6449739,
        size.height * 0.5514380);
    path45.cubicTo(
        size.width * 0.6444216,
        size.height * 0.5507713,
        size.width * 0.6438497,
        size.height * 0.5501047,
        size.width * 0.6432549,
        size.height * 0.5494767);
    path45.cubicTo(
        size.width * 0.6368660,
        size.height * 0.5425039,
        size.width * 0.6290980,
        size.height * 0.5375504,
        size.width * 0.6206699,
        size.height * 0.5350775);
    path45.cubicTo(
        size.width * 0.6122386,
        size.height * 0.5326047,
        size.width * 0.6034216,
        size.height * 0.5326899,
        size.width * 0.5950261,
        size.height * 0.5353256);
    path45.lineTo(size.width * 0.5949837, size.height * 0.5353488);
    path45.lineTo(size.width * 0.5946634, size.height * 0.5354496);
    path45.lineTo(size.width * 0.5947386, size.height * 0.5358760);
    path45.cubicTo(
        size.width * 0.5950588,
        size.height * 0.5378682,
        size.width * 0.5955196,
        size.height * 0.5398217,
        size.width * 0.5961176,
        size.height * 0.5417209);
    path45.cubicTo(
        size.width * 0.5962778,
        size.height * 0.5422364,
        size.width * 0.5964575,
        size.height * 0.5427287,
        size.width * 0.5966373,
        size.height * 0.5432171);
    path45.cubicTo(
        size.width * 0.5967124,
        size.height * 0.5434419,
        size.width * 0.5968072,
        size.height * 0.5436434,
        size.width * 0.5968922,
        size.height * 0.5438721);
    path45.cubicTo(
        size.width * 0.5968922,
        size.height * 0.5438721,
        size.width * 0.5968824,
        size.height * 0.5438837,
        size.width * 0.5969020,
        size.height * 0.5438837);
    path45.cubicTo(
        size.width * 0.5969020,
        size.height * 0.5438953,
        size.width * 0.5969118,
        size.height * 0.5439070,
        size.width * 0.5969118,
        size.height * 0.5439225);
    path45.cubicTo(
        size.width * 0.5971144,
        size.height * 0.5443876,
        size.width * 0.5973039,
        size.height * 0.5448643,
        size.width * 0.5975163,
        size.height * 0.5453178);
    path45.cubicTo(
        size.width * 0.5970817,
        size.height * 0.5448256,
        size.width * 0.5966699,
        size.height * 0.5443217,
        size.width * 0.5962647,
        size.height * 0.5438062);
    path45.cubicTo(
        size.width * 0.5958725,
        size.height * 0.5433295,
        size.width * 0.5955131,
        size.height * 0.5428256,
        size.width * 0.5951536,
        size.height * 0.5423256);
    path45.cubicTo(
        size.width * 0.5939183,
        size.height * 0.5406163,
        size.width * 0.5928007,
        size.height * 0.5387907,
        size.width * 0.5918137,
        size.height * 0.5368682);
    path45.lineTo(size.width * 0.5916438, size.height * 0.5365310);
    path45.lineTo(size.width * 0.5913464, size.height * 0.5366705);
    path45.cubicTo(
        size.width * 0.5873431,
        size.height * 0.5383140,
        size.width * 0.5835261,
        size.height * 0.5405271,
        size.width * 0.5799771,
        size.height * 0.5432674);
    path45.lineTo(size.width * 0.5795948, size.height * 0.5435698);
    path45.cubicTo(
        size.width * 0.5768856,
        size.height * 0.5456783,
        size.width * 0.5738333,
        size.height * 0.5470853,
        size.width * 0.5706340,
        size.height * 0.5477054);
    path45.cubicTo(
        size.width * 0.5674346,
        size.height * 0.5483256,
        size.width * 0.5641634,
        size.height * 0.5481395,
        size.width * 0.5610261,
        size.height * 0.5471628);
    path45.cubicTo(
        size.width * 0.5560850,
        size.height * 0.5456550,
        size.width * 0.5509314,
        size.height * 0.5453760,
        size.width * 0.5458954,
        size.height * 0.5463527);
    path45.cubicTo(
        size.width * 0.5408595,
        size.height * 0.5473295,
        size.width * 0.5360490,
        size.height * 0.5495349,
        size.width * 0.5317712,
        size.height * 0.5528333);
    path45.cubicTo(
        size.width * 0.5289346,
        size.height * 0.5550233,
        size.width * 0.5263725,
        size.height * 0.5576705,
        size.width * 0.5241569,
        size.height * 0.5607016);
    path45.cubicTo(
        size.width * 0.5239641,
        size.height * 0.5609651,
        size.width * 0.5237745,
        size.height * 0.5612403,
        size.width * 0.5235817,
        size.height * 0.5615039);
    path45.cubicTo(
        size.width * 0.5231797,
        size.height * 0.5620814,
        size.width * 0.5227974,
        size.height * 0.5626744,
        size.width * 0.5224281,
        size.height * 0.5632752);
    path45.cubicTo(
        size.width * 0.5184412,
        size.height * 0.5695930,
        size.width * 0.5159935,
        size.height * 0.5770814,
        size.width * 0.5153529,
        size.height * 0.5849341);
    path45.lineTo(size.width * 0.5153333, size.height * 0.5852209);
    path45.lineTo(size.width * 0.5155359, size.height * 0.5853837);
    path45.cubicTo(
        size.width * 0.5191209,
        size.height * 0.5882984,
        size.width * 0.5231797,
        size.height * 0.5903023,
        size.width * 0.5274542,
        size.height * 0.5912674);
    path45.cubicTo(
        size.width * 0.5247712,
        size.height * 0.5917132,
        size.width * 0.5220523,
        size.height * 0.5917907,
        size.width * 0.5193529,
        size.height * 0.5915078);
    path45.lineTo(size.width * 0.5193431, size.height * 0.5915078);
    path45.cubicTo(
        size.width * 0.5181176,
        size.height * 0.5913876,
        size.width * 0.5168987,
        size.height * 0.5911860,
        size.width * 0.5156928,
        size.height * 0.5909031);
    path45.lineTo(size.width * 0.5154706, size.height * 0.5908527);
    path45.lineTo(size.width * 0.5154608, size.height * 0.5908527);
    path45.lineTo(size.width * 0.5151830, size.height * 0.5907907);
    path45.lineTo(size.width * 0.5152255, size.height * 0.5913915);
    path45.cubicTo(
        size.width * 0.5155425,
        size.height * 0.5990736,
        size.width * 0.5175817,
        size.height * 0.6065116,
        size.width * 0.5211340,
        size.height * 0.6129496);
    path45.lineTo(size.width * 0.5212386, size.height * 0.6131240);
    path45.cubicTo(
        size.width * 0.5212778,
        size.height * 0.6131899,
        size.width * 0.5213137,
        size.height * 0.6132558,
        size.width * 0.5213464,
        size.height * 0.6133256);
    path45.cubicTo(
        size.width * 0.5228497,
        size.height * 0.6160543,
        size.width * 0.5241013,
        size.height * 0.6189651,
        size.width * 0.5250784,
        size.height * 0.6220116);
    path45.cubicTo(
        size.width * 0.5275588,
        size.height * 0.6295775,
        size.width * 0.5281046,
        size.height * 0.6378450,
        size.width * 0.5266471,
        size.height * 0.6457791);
    path45.cubicTo(
        size.width * 0.5250000,
        size.height * 0.6542636,
        size.width * 0.5255490,
        size.height * 0.6631395,
        size.width * 0.5282190,
        size.height * 0.6712519);
    path45.cubicTo(
        size.width * 0.5308889,
        size.height * 0.6793605,
        size.width * 0.5355588,
        size.height * 0.6863295,
        size.width * 0.5416209,
        size.height * 0.6912519);
    path45.cubicTo(
        size.width * 0.5469444,
        size.height * 0.6955930,
        size.width * 0.5531503,
        size.height * 0.6981744,
        size.width * 0.5595948,
        size.height * 0.6987287);
    path45.cubicTo(
        size.width * 0.5604771,
        size.height * 0.6988178,
        size.width * 0.5613660,
        size.height * 0.6988682,
        size.width * 0.5622582,
        size.height * 0.6988682);
    path45.cubicTo(
        size.width * 0.5673562,
        size.height * 0.6988876,
        size.width * 0.5724020,
        size.height * 0.6976395,
        size.width * 0.5770719,
        size.height * 0.6952093);
    path45.lineTo(size.width * 0.5772418, size.height * 0.6951357);
    path45.lineTo(size.width * 0.5772843, size.height * 0.6949070);
    path45.cubicTo(
        size.width * 0.5781830,
        size.height * 0.6914729,
        size.width * 0.5794444,
        size.height * 0.6881899,
        size.width * 0.5810392,
        size.height * 0.6851318);
    path45.cubicTo(
        size.width * 0.5805163,
        size.height * 0.6875388,
        size.width * 0.5802516,
        size.height * 0.6900194,
        size.width * 0.5802549,
        size.height * 0.6925078);
    path45.lineTo(size.width * 0.5802549, size.height * 0.6933372);
    path45.lineTo(size.width * 0.5808595, size.height * 0.6929225);
    path45.cubicTo(
        size.width * 0.5813791,
        size.height * 0.6925581,
        size.width * 0.5819085,
        size.height * 0.6921667,
        size.width * 0.5823856,
        size.height * 0.6918023);
    path45.cubicTo(
        size.width * 0.5852484,
        size.height * 0.6895853,
        size.width * 0.5878431,
        size.height * 0.6869147,
        size.width * 0.5900948,
        size.height * 0.6838605);
    path45.cubicTo(
        size.width * 0.5909739,
        size.height * 0.6826550,
        size.width * 0.5918660,
        size.height * 0.6814845,
        size.width * 0.5927974,
        size.height * 0.6803178);
    path45.lineTo(size.width * 0.5928105, size.height * 0.6803023);
    path45.cubicTo(
        size.width * 0.5946209,
        size.height * 0.6780155,
        size.width * 0.5965425,
        size.height * 0.6757791,
        size.width * 0.5985359,
        size.height * 0.6736434);
    path45.cubicTo(
        size.width * 0.6027778,
        size.height * 0.6691279,
        size.width * 0.6073170,
        size.height * 0.6650194,
        size.width * 0.6121078,
        size.height * 0.6613643);
    path45.cubicTo(
        size.width * 0.6168987,
        size.height * 0.6577171,
        size.width * 0.6219085,
        size.height * 0.6544922,
        size.width * 0.6270948,
        size.height * 0.6517093);
    path45.lineTo(size.width * 0.6271046, size.height * 0.6517093);
    path45.cubicTo(
        size.width * 0.6276863,
        size.height * 0.6513837,
        size.width * 0.6282810,
        size.height * 0.6510698,
        size.width * 0.6288627,
        size.height * 0.6507674);
    path45.cubicTo(
        size.width * 0.6314477,
        size.height * 0.6494341,
        size.width * 0.6339314,
        size.height * 0.6478527,
        size.width * 0.6362974,
        size.height * 0.6460426);
    path45.cubicTo(
        size.width * 0.6363824,
        size.height * 0.6459767,
        size.width * 0.6364575,
        size.height * 0.6459302,
        size.width * 0.6365327,
        size.height * 0.6458643);
    path45.cubicTo(
        size.width * 0.6467810,
        size.height * 0.6379109,
        size.width * 0.6543203,
        size.height * 0.6258992,
        size.width * 0.6577974,
        size.height * 0.6119767);
    path45.cubicTo(
        size.width * 0.6612778,
        size.height * 0.5980504,
        size.width * 0.6604771,
        size.height * 0.5831124,
        size.width * 0.6555359,
        size.height * 0.5698256);
    path45.lineTo(size.width * 0.6555359, size.height * 0.5698256);
    path45.close();

    Paint paint45Fill = Paint()..style = PaintingStyle.fill;
    paint45Fill.color = const Color(0xffA9A9A9);
    canvas.drawPath(path45, paint45Fill);

    final Path path46 = Path();
    path46.moveTo(size.width * 0.5283954, size.height * 0.6636240);
    path46.cubicTo(
        size.width * 0.5281046,
        size.height * 0.6651512,
        size.width * 0.5278856,
        size.height * 0.6666977,
        size.width * 0.5277386,
        size.height * 0.6682519);
    path46.cubicTo(
        size.width * 0.5257647,
        size.height * 0.6608605,
        size.width * 0.5254771,
        size.height * 0.6529767,
        size.width * 0.5269085,
        size.height * 0.6454070);
    path46.cubicTo(
        size.width * 0.5271307,
        size.height * 0.6442481,
        size.width * 0.5272941,
        size.height * 0.6430775,
        size.width * 0.5274248,
        size.height * 0.6418992);
    path46.cubicTo(
        size.width * 0.5293856,
        size.height * 0.6489070,
        size.width * 0.5297190,
        size.height * 0.6564109,
        size.width * 0.5283954,
        size.height * 0.6636240);
    path46.close();

    Paint paint46Fill = Paint()..style = PaintingStyle.fill;
    paint46Fill.color = const Color.fromRGBO(0, 0, 0, 0.16);
    canvas.drawPath(path46, paint46Fill);

    final Path path47 = Path();
    path47.moveTo(size.width * 0.5291961, size.height * 0.6091008);
    path47.cubicTo(
        size.width * 0.5260556,
        size.height * 0.6096202,
        size.width * 0.5228693,
        size.height * 0.6096357,
        size.width * 0.5197255,
        size.height * 0.6091550);
    path47.cubicTo(
        size.width * 0.5189020,
        size.height * 0.6073140,
        size.width * 0.5181895,
        size.height * 0.6054070,
        size.width * 0.5175980,
        size.height * 0.6034419);
    path47.cubicTo(
        size.width * 0.5210980,
        size.height * 0.6062442,
        size.width * 0.5250458,
        size.height * 0.6081705,
        size.width * 0.5291961,
        size.height * 0.6091008);
    path47.close();

    Paint paint47Fill = Paint()..style = PaintingStyle.fill;
    paint47Fill.color = const Color.fromRGBO(0, 0, 0, 0.16);
    canvas.drawPath(path47, paint47Fill);

    final Path path48 = Path();
    path48.moveTo(size.width * 0.5194739, size.height * 0.5911008);
    path48.cubicTo(
        size.width * 0.5183137,
        size.height * 0.5946163,
        size.width * 0.5175458,
        size.height * 0.5982946,
        size.width * 0.5171830,
        size.height * 0.6020426);
    path48.cubicTo(
        size.width * 0.5162157,
        size.height * 0.5984729,
        size.width * 0.5156438,
        size.height * 0.5947674,
        size.width * 0.5154837,
        size.height * 0.5910233);
    path48.lineTo(size.width * 0.5154575, size.height * 0.5904186);
    path48.lineTo(size.width * 0.5159575, size.height * 0.5905349);
    path48.cubicTo(
        size.width * 0.5171209,
        size.height * 0.5907946,
        size.width * 0.5182941,
        size.height * 0.5909845,
        size.width * 0.5194739,
        size.height * 0.5911008);
    path48.close();

    Paint paint48Fill = Paint()..style = PaintingStyle.fill;
    paint48Fill.color = const Color.fromRGBO(0, 0, 0, 0.16);
    canvas.drawPath(path48, paint48Fill);

    final Path path49 = Path();
    path49.moveTo(size.width * 0.5320425, size.height * 0.5524612);
    path49.cubicTo(
        size.width * 0.5363170,
        size.height * 0.5491589,
        size.width * 0.5411242,
        size.height * 0.5469496,
        size.width * 0.5461601,
        size.height * 0.5459729);
    path49.cubicTo(
        size.width * 0.5511961,
        size.height * 0.5449961,
        size.width * 0.5563464,
        size.height * 0.5452713,
        size.width * 0.5612843,
        size.height * 0.5467868);
    path49.cubicTo(
        size.width * 0.5644216,
        size.height * 0.5477674,
        size.width * 0.5676961,
        size.height * 0.5479574,
        size.width * 0.5708987,
        size.height * 0.5473372);
    path49.cubicTo(
        size.width * 0.5740980,
        size.height * 0.5467209,
        size.width * 0.5771536,
        size.height * 0.5453101,
        size.width * 0.5798627,
        size.height * 0.5431977);
    path49.lineTo(size.width * 0.5802451, size.height * 0.5428992);
    path49.cubicTo(
        size.width * 0.5837908,
        size.height * 0.5401512,
        size.width * 0.5876078,
        size.height * 0.5379302,
        size.width * 0.5916078,
        size.height * 0.5362829);
    path49.lineTo(size.width * 0.5919150, size.height * 0.5361589);
    path49.lineTo(size.width * 0.5920817, size.height * 0.5364845);
    path49.cubicTo(
        size.width * 0.5936634,
        size.height * 0.5395853,
        size.width * 0.5955784,
        size.height * 0.5424264,
        size.width * 0.5977810,
        size.height * 0.5449380);
    path49.cubicTo(
        size.width * 0.5964444,
        size.height * 0.5419845,
        size.width * 0.5955065,
        size.height * 0.5387984,
        size.width * 0.5950065,
        size.height * 0.5355000);
    path49.lineTo(size.width * 0.5949346, size.height * 0.5350620);
    path49.lineTo(size.width * 0.5952941, size.height * 0.5349496);
    path49.cubicTo(
        size.width * 0.6031699,
        size.height * 0.5324806,
        size.width * 0.6114216,
        size.height * 0.5322519,
        size.width * 0.6193856,
        size.height * 0.5342829);
    path49.cubicTo(
        size.width * 0.6273464,
        size.height * 0.5363140,
        size.width * 0.6347908,
        size.height * 0.5405465,
        size.width * 0.6411111,
        size.height * 0.5466395);
    path49.cubicTo(
        size.width * 0.6474281,
        size.height * 0.5527287,
        size.width * 0.6524444,
        size.height * 0.5605039,
        size.width * 0.6557451,
        size.height * 0.5693295);
    path49.cubicTo(
        size.width * 0.6590458,
        size.height * 0.5781512,
        size.width * 0.6605392,
        size.height * 0.5877752,
        size.width * 0.6601046,
        size.height * 0.5974147);
    path49.cubicTo(
        size.width * 0.6584346,
        size.height * 0.5895581,
        size.width * 0.6554673,
        size.height * 0.5821705,
        size.width * 0.6513693,
        size.height * 0.5756822);
    path49.cubicTo(
        size.width * 0.6472745,
        size.height * 0.5691938,
        size.width * 0.6421307,
        size.height * 0.5637326,
        size.width * 0.6362418,
        size.height * 0.5596163);
    path49.cubicTo(
        size.width * 0.6303497,
        size.height * 0.5555000,
        size.width * 0.6238301,
        size.height * 0.5528101,
        size.width * 0.6170556,
        size.height * 0.5517016);
    path49.cubicTo(
        size.width * 0.6102843,
        size.height * 0.5505969,
        size.width * 0.6033922,
        size.height * 0.5510930,
        size.width * 0.5967810,
        size.height * 0.5531667);
    path49.lineTo(size.width * 0.5964183, size.height * 0.5532791);
    path49.lineTo(size.width * 0.5964902, size.height * 0.5537132);
    path49.cubicTo(
        size.width * 0.5969935,
        size.height * 0.5570155,
        size.width * 0.5979314,
        size.height * 0.5601977,
        size.width * 0.5992680,
        size.height * 0.5631550);
    path49.cubicTo(
        size.width * 0.5970654,
        size.height * 0.5606434,
        size.width * 0.5951471,
        size.height * 0.5578023,
        size.width * 0.5935654,
        size.height * 0.5547016);
    path49.lineTo(size.width * 0.5933987, size.height * 0.5543721);
    path49.lineTo(size.width * 0.5930948, size.height * 0.5545000);
    path49.cubicTo(
        size.width * 0.5890948,
        size.height * 0.5561473,
        size.width * 0.5852778,
        size.height * 0.5583682,
        size.width * 0.5817320,
        size.height * 0.5611124);
    path49.lineTo(size.width * 0.5813497, size.height * 0.5614109);
    path49.cubicTo(
        size.width * 0.5786405,
        size.height * 0.5635233,
        size.width * 0.5755850,
        size.height * 0.5649341,
        size.width * 0.5723824,
        size.height * 0.5655543);
    path49.cubicTo(
        size.width * 0.5691830,
        size.height * 0.5661705,
        size.width * 0.5659052,
        size.height * 0.5659845,
        size.width * 0.5627712,
        size.height * 0.5650000);
    path49.cubicTo(
        size.width * 0.5545621,
        size.height * 0.5624767,
        size.width * 0.5458693,
        size.height * 0.5634031,
        size.width * 0.5381699,
        size.height * 0.5676279);
    path49.cubicTo(
        size.width * 0.5304739,
        size.height * 0.5718527,
        size.width * 0.5242516,
        size.height * 0.5791085,
        size.width * 0.5205654,
        size.height * 0.5881589);
    path49.cubicTo(
        size.width * 0.5189248,
        size.height * 0.5872248,
        size.width * 0.5173333,
        size.height * 0.5861705,
        size.width * 0.5158007,
        size.height * 0.5850039);
    path49.lineTo(size.width * 0.5155915, size.height * 0.5848488);
    path49.lineTo(size.width * 0.5156176, size.height * 0.5845581);
    path49.cubicTo(
        size.width * 0.5161438,
        size.height * 0.5780891,
        size.width * 0.5178954,
        size.height * 0.5718450,
        size.width * 0.5207386,
        size.height * 0.5662868);
    path49.cubicTo(
        size.width * 0.5235850,
        size.height * 0.5607326,
        size.width * 0.5274477,
        size.height * 0.5560039,
        size.width * 0.5320425,
        size.height * 0.5524612);
    path49.close();

    Paint paint49Fill = Paint()..style = PaintingStyle.fill;
    paint49Fill.color = const Color.fromRGBO(0, 0, 0, 0.16);
    canvas.drawPath(path49, paint49Fill);

    final Path path50 = Path();
    path50.moveTo(size.width * 0.9262778, size.height * 0.2313124);
    path50.lineTo(size.width * 0.9252712, size.height * 0.2305205);
    path50.lineTo(size.width * 0.9245392, size.height * 0.2316516);
    path50.cubicTo(
        size.width * 0.9188758,
        size.height * 0.2401019,
        size.width * 0.9143693,
        size.height * 0.2495562,
        size.width * 0.9111863,
        size.height * 0.2596671);
    path50.cubicTo(
        size.width * 0.9116275,
        size.height * 0.2480194,
        size.width * 0.9133464,
        size.height * 0.2364888,
        size.width * 0.9162974,
        size.height * 0.2253671);
    path50.lineTo(size.width * 0.9166176, size.height * 0.2241984);
    path50.lineTo(size.width * 0.9157059, size.height * 0.2235826);
    path50.cubicTo(
        size.width * 0.9038399,
        size.height * 0.2156194,
        size.width * 0.8911961,
        size.height * 0.2094062,
        size.width * 0.8780588,
        size.height * 0.2050814);
    path50.lineTo(size.width * 0.8766275, size.height * 0.2046291);
    path50.cubicTo(
        size.width * 0.8665588,
        size.height * 0.2013543,
        size.width * 0.8571830,
        size.height * 0.1956008,
        size.width * 0.8491176,
        size.height * 0.1877438);
    path50.cubicTo(
        size.width * 0.8410490,
        size.height * 0.1798872,
        size.width * 0.8344706,
        size.height * 0.1701031,
        size.width * 0.8298105,
        size.height * 0.1590298);
    path50.cubicTo(
        size.width * 0.8189739,
        size.height * 0.1336167,
        size.width * 0.8018595,
        size.height * 0.1127240,
        size.width * 0.7807451,
        size.height * 0.09913992);
    path50.cubicTo(
        size.width * 0.7596340,
        size.height * 0.08555581,
        size.width * 0.7355261,
        size.height * 0.07992597,
        size.width * 0.7116438,
        size.height * 0.08300194);
    path50.lineTo(size.width * 0.7116340, size.height * 0.08300194);
    path50.cubicTo(
        size.width * 0.7113791,
        size.height * 0.08302713,
        size.width * 0.7111144,
        size.height * 0.08306473,
        size.width * 0.7108595,
        size.height * 0.08310271);
    path50.cubicTo(
        size.width * 0.7104248,
        size.height * 0.08315271,
        size.width * 0.7100000,
        size.height * 0.08321550,
        size.width * 0.7095752,
        size.height * 0.08327868);
    path50.cubicTo(
        size.width * 0.7087059,
        size.height * 0.08341667,
        size.width * 0.7078595,
        size.height * 0.08355504,
        size.width * 0.7070098,
        size.height * 0.08370581);
    path50.cubicTo(
        size.width * 0.7062876,
        size.height * 0.08383140,
        size.width * 0.7055556,
        size.height * 0.08396977,
        size.width * 0.7048366,
        size.height * 0.08412054);
    path50.cubicTo(
        size.width * 0.7044542,
        size.height * 0.08418333,
        size.width * 0.7040817,
        size.height * 0.08425891,
        size.width * 0.7037124,
        size.height * 0.08434690);
    path50.cubicTo(
        size.width * 0.7033399,
        size.height * 0.08442209,
        size.width * 0.7029575,
        size.height * 0.08449767,
        size.width * 0.7025882,
        size.height * 0.08458566);
    path50.lineTo(size.width * 0.7025784, size.height * 0.08458566);
    path50.cubicTo(
        size.width * 0.6954575,
        size.height * 0.08618178,
        size.width * 0.6884771,
        size.height * 0.08855930,
        size.width * 0.6817288,
        size.height * 0.09168682);
    path50.lineTo(size.width * 0.6817190, size.height * 0.09168682);
    path50.lineTo(size.width * 0.6817190, size.height * 0.09169961);
    path50.lineTo(size.width * 0.6800098, size.height * 0.09249109);
    path50.cubicTo(
        size.width * 0.6782516,
        size.height * 0.09334612,
        size.width * 0.6765033,
        size.height * 0.09425078,
        size.width * 0.6747712,
        size.height * 0.09520620);
    path50.cubicTo(
        size.width * 0.6743791,
        size.height * 0.09541977,
        size.width * 0.6739967,
        size.height * 0.09564612,
        size.width * 0.6736046,
        size.height * 0.09585969);
    path50.cubicTo(
        size.width * 0.6735000,
        size.height * 0.09592248,
        size.width * 0.6733824,
        size.height * 0.09598527,
        size.width * 0.6732778,
        size.height * 0.09606085);
    path50.cubicTo(
        size.width * 0.6721634,
        size.height * 0.09668915,
        size.width * 0.6710621,
        size.height * 0.09734264,
        size.width * 0.6699673,
        size.height * 0.09803411);
    path50.cubicTo(
        size.width * 0.6698105,
        size.height * 0.09812209,
        size.width * 0.6696503,
        size.height * 0.09822248,
        size.width * 0.6694902,
        size.height * 0.09832326);
    path50.lineTo(size.width * 0.6684739, size.height * 0.09896395);
    path50.cubicTo(
        size.width * 0.6662353,
        size.height * 0.1003969,
        size.width * 0.6640359,
        size.height * 0.1019178,
        size.width * 0.6618758,
        size.height * 0.1035267);
    path50.cubicTo(
        size.width * 0.6616961,
        size.height * 0.1036523,
        size.width * 0.6615261,
        size.height * 0.1037779,
        size.width * 0.6613464,
        size.height * 0.1039163);
    path50.cubicTo(
        size.width * 0.6611569,
        size.height * 0.1040671,
        size.width * 0.6609542,
        size.height * 0.1042178,
        size.width * 0.6607647,
        size.height * 0.1043686);
    path50.cubicTo(
        size.width * 0.6606471,
        size.height * 0.1044442,
        size.width * 0.6605294,
        size.height * 0.1045446,
        size.width * 0.6604150,
        size.height * 0.1046326);
    path50.cubicTo(
        size.width * 0.6600850,
        size.height * 0.1048713,
        size.width * 0.6597680,
        size.height * 0.1051229,
        size.width * 0.6594477,
        size.height * 0.1053868);
    path50.cubicTo(
        size.width * 0.6588137,
        size.height * 0.1058767,
        size.width * 0.6581765,
        size.height * 0.1063795,
        size.width * 0.6575490,
        size.height * 0.1068950);
    path50.cubicTo(
        size.width * 0.6569020,
        size.height * 0.1074101,
        size.width * 0.6562680,
        size.height * 0.1079508,
        size.width * 0.6556307,
        size.height * 0.1084911);
    path50.lineTo(size.width * 0.6549935, size.height * 0.1090318);
    path50.lineTo(size.width * 0.6551111, size.height * 0.1099616);
    path50.cubicTo(
        size.width * 0.6552190,
        size.height * 0.1107283,
        size.width * 0.6553137,
        size.height * 0.1114950,
        size.width * 0.6554281,
        size.height * 0.1122492);
    path50.cubicTo(
        size.width * 0.6555359,
        size.height * 0.1130035,
        size.width * 0.6556405,
        size.height * 0.1137450,
        size.width * 0.6557582,
        size.height * 0.1144864);
    path50.cubicTo(
        size.width * 0.6559379,
        size.height * 0.1157306,
        size.width * 0.6561405,
        size.height * 0.1169624,
        size.width * 0.6563431,
        size.height * 0.1181566);
    path50.cubicTo(
        size.width * 0.6564804,
        size.height * 0.1189484,
        size.width * 0.6566078,
        size.height * 0.1197275,
        size.width * 0.6567549,
        size.height * 0.1204942);
    path50.cubicTo(
        size.width * 0.6568922,
        size.height * 0.1212860,
        size.width * 0.6570425,
        size.height * 0.1220779,
        size.width * 0.6571993,
        size.height * 0.1228698);
    path50.cubicTo(
        size.width * 0.6575065,
        size.height * 0.1245035,
        size.width * 0.6578366,
        size.height * 0.1260872,
        size.width * 0.6581863,
        size.height * 0.1276457);
    path50.cubicTo(
        size.width * 0.6583562,
        size.height * 0.1284252,
        size.width * 0.6585359,
        size.height * 0.1292043,
        size.width * 0.6587288,
        size.height * 0.1299709);
    path50.cubicTo(
        size.width * 0.6588333,
        size.height * 0.1304360,
        size.width * 0.6589412,
        size.height * 0.1309012,
        size.width * 0.6590556,
        size.height * 0.1313535);
    path50.cubicTo(
        size.width * 0.6591405,
        size.height * 0.1316678,
        size.width * 0.6592255,
        size.height * 0.1319822,
        size.width * 0.6593105,
        size.height * 0.1322961);
    path50.cubicTo(
        size.width * 0.6593333,
        size.height * 0.1323969,
        size.width * 0.6593529,
        size.height * 0.1325101,
        size.width * 0.6593856,
        size.height * 0.1326229);
    path50.cubicTo(
        size.width * 0.6594085,
        size.height * 0.1327295,
        size.width * 0.6594379,
        size.height * 0.1328345,
        size.width * 0.6594706,
        size.height * 0.1329372);
    path50.cubicTo(
        size.width * 0.6595850,
        size.height * 0.1334023,
        size.width * 0.6597026,
        size.height * 0.1338547,
        size.width * 0.6598203,
        size.height * 0.1342946);
    path50.cubicTo(
        size.width * 0.6598824,
        size.height * 0.1345333,
        size.width * 0.6599477,
        size.height * 0.1347721,
        size.width * 0.6600196,
        size.height * 0.1349984);
    path50.cubicTo(
        size.width * 0.6601699,
        size.height * 0.1355388,
        size.width * 0.6603301,
        size.height * 0.1360919,
        size.width * 0.6604869,
        size.height * 0.1366198);
    path50.cubicTo(
        size.width * 0.6606569,
        size.height * 0.1372233,
        size.width * 0.6608366,
        size.height * 0.1378264,
        size.width * 0.6610196,
        size.height * 0.1384171);
    path50.cubicTo(
        size.width * 0.6610621,
        size.height * 0.1385678,
        size.width * 0.6611013,
        size.height * 0.1387062,
        size.width * 0.6611438,
        size.height * 0.1388570);
    path50.cubicTo(
        size.width * 0.6611765,
        size.height * 0.1389702,
        size.width * 0.6612092,
        size.height * 0.1390833,
        size.width * 0.6612516,
        size.height * 0.1391965);
    path50.cubicTo(
        size.width * 0.6612941,
        size.height * 0.1393221,
        size.width * 0.6613366,
        size.height * 0.1394605,
        size.width * 0.6613791,
        size.height * 0.1395860);
    path50.cubicTo(
        size.width * 0.6615588,
        size.height * 0.1401516,
        size.width * 0.6617386,
        size.height * 0.1407298,
        size.width * 0.6619314,
        size.height * 0.1412953);
    path50.cubicTo(
        size.width * 0.6619935,
        size.height * 0.1414965,
        size.width * 0.6620588,
        size.height * 0.1417101,
        size.width * 0.6621307,
        size.height * 0.1419112);
    path50.cubicTo(
        size.width * 0.6638497,
        size.height * 0.1470314,
        size.width * 0.6659641,
        size.height * 0.1519539,
        size.width * 0.6684412,
        size.height * 0.1566167);
    path50.cubicTo(
        size.width * 0.6656961,
        size.height * 0.1538264,
        size.width * 0.6630490,
        size.height * 0.1508686,
        size.width * 0.6605098,
        size.height * 0.1477430);
    path50.cubicTo(
        size.width * 0.6565850,
        size.height * 0.1429105,
        size.width * 0.6529706,
        size.height * 0.1377391,
        size.width * 0.6496928,
        size.height * 0.1322709);
    path50.cubicTo(
        size.width * 0.6494281,
        size.height * 0.1318438,
        size.width * 0.6491634,
        size.height * 0.1314039,
        size.width * 0.6489183,
        size.height * 0.1309640);
    path50.cubicTo(
        size.width * 0.6484216,
        size.height * 0.1301217,
        size.width * 0.6479314,
        size.height * 0.1292798,
        size.width * 0.6474542,
        size.height * 0.1284252);
    path50.cubicTo(
        size.width * 0.6469444,
        size.height * 0.1275453,
        size.width * 0.6464575,
        size.height * 0.1266279,
        size.width * 0.6459804,
        size.height * 0.1257229);
    path50.cubicTo(
        size.width * 0.6456634,
        size.height * 0.1251194,
        size.width * 0.6453431,
        size.height * 0.1245035,
        size.width * 0.6450359,
        size.height * 0.1239004);
    path50.cubicTo(
        size.width * 0.6447288,
        size.height * 0.1233221,
        size.width * 0.6444444,
        size.height * 0.1227566,
        size.width * 0.6441667,
        size.height * 0.1221783);
    path50.lineTo(size.width * 0.6433399, size.height * 0.1204942);
    path50.lineTo(size.width * 0.6433301, size.height * 0.1204942);
    path50.lineTo(size.width * 0.6433301, size.height * 0.1205070);
    path50.lineTo(size.width * 0.6421634, size.height * 0.1218643);
    path50.cubicTo(
        size.width * 0.6416961,
        size.height * 0.1224047,
        size.width * 0.6412288,
        size.height * 0.1229450,
        size.width * 0.6407745,
        size.height * 0.1234857);
    path50.cubicTo(
        size.width * 0.6265229,
        size.height * 0.1404822,
        size.width * 0.6161961,
        size.height * 0.1615395,
        size.width * 0.6107941,
        size.height * 0.1846322);
    path50.lineTo(size.width * 0.6106373, size.height * 0.1853233);
    path50.lineTo(size.width * 0.6104771, size.height * 0.1860399);
    path50.cubicTo(
        size.width * 0.6101699,
        size.height * 0.1873217,
        size.width * 0.6098627,
        size.height * 0.1885659,
        size.width * 0.6095327,
        size.height * 0.1898357);
    path50.lineTo(size.width * 0.6095327, size.height * 0.1898481);
    path50.cubicTo(
        size.width * 0.6092157,
        size.height * 0.1911050,
        size.width * 0.6088758,
        size.height * 0.1923616,
        size.width * 0.6085163,
        size.height * 0.1935934);
    path50.cubicTo(
        size.width * 0.6081863,
        size.height * 0.1947624,
        size.width * 0.6078464,
        size.height * 0.1959186,
        size.width * 0.6074869,
        size.height * 0.1970752);
    path50.cubicTo(
        size.width * 0.6073693,
        size.height * 0.1974647,
        size.width * 0.6072418,
        size.height * 0.1978543,
        size.width * 0.6071046,
        size.height * 0.1982438);
    path50.cubicTo(
        size.width * 0.6068824,
        size.height * 0.1989981,
        size.width * 0.6066373,
        size.height * 0.1997395,
        size.width * 0.6063954,
        size.height * 0.2004938);
    path50.cubicTo(
        size.width * 0.6062778,
        size.height * 0.2008329,
        size.width * 0.6061601,
        size.height * 0.2011849,
        size.width * 0.6060458,
        size.height * 0.2015244);
    path50.cubicTo(
        size.width * 0.6057582,
        size.height * 0.2023539,
        size.width * 0.6054706,
        size.height * 0.2031833,
        size.width * 0.6051863,
        size.height * 0.2040004);
    path50.cubicTo(
        size.width * 0.6051438,
        size.height * 0.2041260,
        size.width * 0.6050915,
        size.height * 0.2042643,
        size.width * 0.6050359,
        size.height * 0.2043899);
    path50.cubicTo(
        size.width * 0.6049510,
        size.height * 0.2046415,
        size.width * 0.6048562,
        size.height * 0.2048926,
        size.width * 0.6047712,
        size.height * 0.2051314);
    path50.cubicTo(
        size.width * 0.6045490,
        size.height * 0.2057349,
        size.width * 0.6043170,
        size.height * 0.2063508,
        size.width * 0.6040948,
        size.height * 0.2069539);
    path50.cubicTo(
        size.width * 0.6039346,
        size.height * 0.2073438,
        size.width * 0.6037876,
        size.height * 0.2077457,
        size.width * 0.6036373,
        size.height * 0.2081357);
    path50.cubicTo(
        size.width * 0.6035752,
        size.height * 0.2083116,
        size.width * 0.6035000,
        size.height * 0.2084872,
        size.width * 0.6034346,
        size.height * 0.2086632);
    path50.cubicTo(
        size.width * 0.6030425,
        size.height * 0.2096690,
        size.width * 0.6026405,
        size.height * 0.2106616,
        size.width * 0.6022157,
        size.height * 0.2116422);
    path50.cubicTo(
        size.width * 0.6017386,
        size.height * 0.2127984,
        size.width * 0.6012516,
        size.height * 0.2139550,
        size.width * 0.6007320,
        size.height * 0.2150860);
    path50.cubicTo(
        size.width * 0.6002745,
        size.height * 0.2161419,
        size.width * 0.5997974,
        size.height * 0.2171725,
        size.width * 0.5993007,
        size.height * 0.2182031);
    path50.cubicTo(
        size.width * 0.5984412,
        size.height * 0.2200256,
        size.width * 0.5975392,
        size.height * 0.2218353,
        size.width * 0.5966078,
        size.height * 0.2235950);
    path50.cubicTo(
        size.width * 0.5962451,
        size.height * 0.2242736,
        size.width * 0.5958856,
        size.height * 0.2249523,
        size.width * 0.5955131,
        size.height * 0.2256310);
    path50.cubicTo(
        size.width * 0.5954281,
        size.height * 0.2257946,
        size.width * 0.5953464,
        size.height * 0.2259578,
        size.width * 0.5952614,
        size.height * 0.2261089);
    path50.cubicTo(
        size.width * 0.5949510,
        size.height * 0.2266996,
        size.width * 0.5946340,
        size.height * 0.2272651,
        size.width * 0.5943072,
        size.height * 0.2278434);
    path50.cubicTo(
        size.width * 0.5940817,
        size.height * 0.2282329,
        size.width * 0.5938595,
        size.height * 0.2286225,
        size.width * 0.5936373,
        size.height * 0.2289996);
    path50.cubicTo(
        size.width * 0.5932680,
        size.height * 0.2296783,
        size.width * 0.5928725,
        size.height * 0.2303318,
        size.width * 0.5924706,
        size.height * 0.2309729);
    path50.cubicTo(
        size.width * 0.5923660,
        size.height * 0.2311740,
        size.width * 0.5922484,
        size.height * 0.2313624,
        size.width * 0.5921307,
        size.height * 0.2315512);
    path50.cubicTo(
        size.width * 0.5915392,
        size.height * 0.2325314,
        size.width * 0.5909444,
        size.height * 0.2334864,
        size.width * 0.5903399,
        size.height * 0.2344419);
    path50.cubicTo(
        size.width * 0.5903170,
        size.height * 0.2344543,
        size.width * 0.5903170,
        size.height * 0.2344671,
        size.width * 0.5903072,
        size.height * 0.2344795);
    path50.cubicTo(
        size.width * 0.5902876,
        size.height * 0.2344795,
        size.width * 0.5902876,
        size.height * 0.2344919,
        size.width * 0.5902745,
        size.height * 0.2345047);
    path50.cubicTo(
        size.width * 0.5900098,
        size.height * 0.2349194,
        size.width * 0.5897451,
        size.height * 0.2353341,
        size.width * 0.5894706,
        size.height * 0.2357364);
    path50.cubicTo(
        size.width * 0.5891078,
        size.height * 0.2363271,
        size.width * 0.5887157,
        size.height * 0.2369050,
        size.width * 0.5883235,
        size.height * 0.2374709);
    path50.cubicTo(
        size.width * 0.5876895,
        size.height * 0.2384260,
        size.width * 0.5870196,
        size.height * 0.2393938,
        size.width * 0.5863431,
        size.height * 0.2403364);
    path50.cubicTo(
        size.width * 0.5863203,
        size.height * 0.2403616,
        size.width * 0.5863105,
        size.height * 0.2403868,
        size.width * 0.5862876,
        size.height * 0.2403992);
    path50.cubicTo(
        size.width * 0.5827745,
        size.height * 0.2452922,
        size.width * 0.5789673,
        size.height * 0.2498791,
        size.width * 0.5748987,
        size.height * 0.2541244);
    path50.cubicTo(
        size.width * 0.5748268,
        size.height * 0.2541996,
        size.width * 0.5747712,
        size.height * 0.2542752,
        size.width * 0.5746993,
        size.height * 0.2543380);
    path50.cubicTo(
        size.width * 0.5741242,
        size.height * 0.2549287,
        size.width * 0.5735523,
        size.height * 0.2555194,
        size.width * 0.5729575,
        size.height * 0.2560977);
    path50.cubicTo(
        size.width * 0.5727157,
        size.height * 0.2563364,
        size.width * 0.5724706,
        size.height * 0.2565752,
        size.width * 0.5722288,
        size.height * 0.2568140);
    path50.cubicTo(
        size.width * 0.5718235,
        size.height * 0.2572163,
        size.width * 0.5714118,
        size.height * 0.2576182,
        size.width * 0.5710065,
        size.height * 0.2579829);
    path50.cubicTo(
        size.width * 0.5709608,
        size.height * 0.2580407,
        size.width * 0.5709052,
        size.height * 0.2580911,
        size.width * 0.5708497,
        size.height * 0.2581337);
    path50.cubicTo(
        size.width * 0.5704869,
        size.height * 0.2584857,
        size.width * 0.5701373,
        size.height * 0.2588124,
        size.width * 0.5697778,
        size.height * 0.2591391);
    path50.cubicTo(
        size.width * 0.5693431,
        size.height * 0.2595539,
        size.width * 0.5689085,
        size.height * 0.2599434,
        size.width * 0.5684641,
        size.height * 0.2603333);
    path50.cubicTo(
        size.width * 0.5663627,
        size.height * 0.2622186,
        size.width * 0.5642059,
        size.height * 0.2639992,
        size.width * 0.5619935,
        size.height * 0.2656748);
    path50.cubicTo(
        size.width * 0.5616667,
        size.height * 0.2659388,
        size.width * 0.5613137,
        size.height * 0.2662027,
        size.width * 0.5609771,
        size.height * 0.2664543);
    path50.cubicTo(
        size.width * 0.5607745,
        size.height * 0.2666050,
        size.width * 0.5605719,
        size.height * 0.2667558,
        size.width * 0.5603824,
        size.height * 0.2668814);
    path50.cubicTo(
        size.width * 0.5595752,
        size.height * 0.2674721,
        size.width * 0.5587712,
        size.height * 0.2680504,
        size.width * 0.5579641,
        size.height * 0.2686035);
    path50.cubicTo(
        size.width * 0.5571569,
        size.height * 0.2691690,
        size.width * 0.5563301,
        size.height * 0.2697093,
        size.width * 0.5555131,
        size.height * 0.2702372);
    path50.cubicTo(
        size.width * 0.5537647,
        size.height * 0.2713686,
        size.width * 0.5520359,
        size.height * 0.2725500,
        size.width * 0.5503497,
        size.height * 0.2737818);
    path50.cubicTo(
        size.width * 0.5495033,
        size.height * 0.2744101,
        size.width * 0.5486536,
        size.height * 0.2750384,
        size.width * 0.5478170,
        size.height * 0.2756795);
    path50.cubicTo(
        size.width * 0.5444869,
        size.height * 0.2782438,
        size.width * 0.5412810,
        size.height * 0.2809876,
        size.width * 0.5381961,
        size.height * 0.2839120);
    path50.cubicTo(
        size.width * 0.5351144,
        size.height * 0.2868380,
        size.width * 0.5321601,
        size.height * 0.2899465,
        size.width * 0.5293431,
        size.height * 0.2932256);
    path50.cubicTo(
        size.width * 0.5289935,
        size.height * 0.2936275,
        size.width * 0.5286438,
        size.height * 0.2940422,
        size.width * 0.5282941,
        size.height * 0.2944698);
    path50.cubicTo(
        size.width * 0.5275915,
        size.height * 0.2952868,
        size.width * 0.5269150,
        size.height * 0.2961163,
        size.width * 0.5262680,
        size.height * 0.2969457);
    path50.cubicTo(
        size.width * 0.5252288,
        size.height * 0.2982151,
        size.width * 0.5242320,
        size.height * 0.2995225,
        size.width * 0.5232451,
        size.height * 0.3008419);
    path50.cubicTo(
        size.width * 0.5180458,
        size.height * 0.3078357,
        size.width * 0.5134412,
        size.height * 0.3154221,
        size.width * 0.5095033,
        size.height * 0.3234907);
    path50.cubicTo(
        size.width * 0.5075229,
        size.height * 0.3275194,
        size.width * 0.5057255,
        size.height * 0.3316686,
        size.width * 0.5041144,
        size.height * 0.3359209);
    path50.cubicTo(
        size.width * 0.5028954,
        size.height * 0.3391012,
        size.width * 0.5017810,
        size.height * 0.3423562,
        size.width * 0.5007745,
        size.height * 0.3456492);
    path50.cubicTo(
        size.width * 0.5001078,
        size.height * 0.3478488,
        size.width * 0.4994804,
        size.height * 0.3500694,
        size.width * 0.4988987,
        size.height * 0.3523105);
    path50.cubicTo(
        size.width * 0.4986111,
        size.height * 0.3534291,
        size.width * 0.4983366,
        size.height * 0.3545605,
        size.width * 0.4980719,
        size.height * 0.3556915);
    path50.cubicTo(
        size.width * 0.4971699,
        size.height * 0.3595252,
        size.width * 0.4964150,
        size.height * 0.3633961,
        size.width * 0.4958007,
        size.height * 0.3672798);
    path50.cubicTo(
        size.width * 0.4953039,
        size.height * 0.3703969,
        size.width * 0.4948987,
        size.height * 0.3735182,
        size.width * 0.4945915,
        size.height * 0.3766434);
    path50.cubicTo(
        size.width * 0.4944314,
        size.height * 0.3782147,
        size.width * 0.4943072,
        size.height * 0.3797857,
        size.width * 0.4941895,
        size.height * 0.3813442);
    path50.cubicTo(
        size.width * 0.4939150,
        size.height * 0.3851748,
        size.width * 0.4937778,
        size.height * 0.3890078,
        size.width * 0.4937712,
        size.height * 0.3928488);
    path50.cubicTo(
        size.width * 0.4937516,
        size.height * 0.4043605,
        size.width * 0.4949314,
        size.height * 0.4158333,
        size.width * 0.4972843,
        size.height * 0.4270078);
    path50.cubicTo(
        size.width * 0.4978039,
        size.height * 0.4294690,
        size.width * 0.4983824,
        size.height * 0.4319225,
        size.width * 0.4990131,
        size.height * 0.4343605);
    path50.cubicTo(
        size.width * 0.4993333,
        size.height * 0.4355775,
        size.width * 0.4996699,
        size.height * 0.4367829,
        size.width * 0.5000098,
        size.height * 0.4379922);
    path50.cubicTo(
        size.width * 0.5008693,
        size.height * 0.4410078,
        size.width * 0.5018203,
        size.height * 0.4439961,
        size.width * 0.5028627,
        size.height * 0.4469535);
    path50.cubicTo(
        size.width * 0.5034902,
        size.height * 0.4487248,
        size.width * 0.5041471,
        size.height * 0.4504845,
        size.width * 0.5048366,
        size.height * 0.4522326);
    path50.cubicTo(
        size.width * 0.5092157,
        size.height * 0.4633372,
        size.width * 0.5148072,
        size.height * 0.4737171,
        size.width * 0.5214641,
        size.height * 0.4831008);
    path50.cubicTo(
        size.width * 0.5225556,
        size.height * 0.4846473,
        size.width * 0.5236830,
        size.height * 0.4861667,
        size.width * 0.5248464,
        size.height * 0.4876628);
    path50.cubicTo(
        size.width * 0.5248562,
        size.height * 0.4876628,
        size.width * 0.5248464,
        size.height * 0.4876744,
        size.width * 0.5248464,
        size.height * 0.4876744);
    path50.cubicTo(
        size.width * 0.5277320,
        size.height * 0.4914070,
        size.width * 0.5307876,
        size.height * 0.4949457,
        size.width * 0.5339967,
        size.height * 0.4982829);
    path50.lineTo(size.width * 0.5340098, size.height * 0.4982829);
    path50.cubicTo(
        size.width * 0.5352908,
        size.height * 0.4996279,
        size.width * 0.5365948,
        size.height * 0.5009302,
        size.width * 0.5379216,
        size.height * 0.5021938);
    path50.cubicTo(
        size.width * 0.5379314,
        size.height * 0.5021783,
        size.width * 0.5379314,
        size.height * 0.5021938,
        size.width * 0.5379314,
        size.height * 0.5021938);
    path50.cubicTo(
        size.width * 0.5392680,
        size.height * 0.5034729,
        size.width * 0.5406144,
        size.height * 0.5047054,
        size.width * 0.5419935,
        size.height * 0.5058992);
    path50.cubicTo(
        size.width * 0.5426830,
        size.height * 0.5064922,
        size.width * 0.5433824,
        size.height * 0.5070814,
        size.width * 0.5440948,
        size.height * 0.5076705);
    path50.cubicTo(
        size.width * 0.5454837,
        size.height * 0.5088411,
        size.width * 0.5468987,
        size.height * 0.5099690,
        size.width * 0.5483464,
        size.height * 0.5110543);
    path50.lineTo(size.width * 0.5483562, size.height * 0.5110543);
    path50.cubicTo(
        size.width * 0.5497974,
        size.height * 0.5121589,
        size.width * 0.5512614,
        size.height * 0.5132132,
        size.width * 0.5527451,
        size.height * 0.5142209);
    path50.cubicTo(
        size.width * 0.5557255,
        size.height * 0.5162442,
        size.width * 0.5587810,
        size.height * 0.5181434,
        size.width * 0.5619183,
        size.height * 0.5198643);
    path50.lineTo(size.width * 0.5624510, size.height * 0.5201512);
    path50.lineTo(size.width * 0.5629902, size.height * 0.5198643);
    path50.cubicTo(
        size.width * 0.5680229,
        size.height * 0.5171783,
        size.width * 0.5732124,
        size.height * 0.5149225,
        size.width * 0.5785163,
        size.height * 0.5131124);
    path50.cubicTo(
        size.width * 0.5796830,
        size.height * 0.5127132,
        size.width * 0.5808595,
        size.height * 0.5123488,
        size.width * 0.5820261,
        size.height * 0.5119961);
    path50.cubicTo(
        size.width * 0.5849739,
        size.height * 0.5111279,
        size.width * 0.5879444,
        size.height * 0.5103992,
        size.width * 0.5909346,
        size.height * 0.5098101);
    path50.cubicTo(
        size.width * 0.5880196,
        size.height * 0.5115426,
        size.width * 0.5852059,
        size.height * 0.5135000,
        size.width * 0.5825131,
        size.height * 0.5156783);
    path50.cubicTo(
        size.width * 0.5804248,
        size.height * 0.5173488,
        size.width * 0.5783660,
        size.height * 0.5191705,
        size.width * 0.5763007,
        size.height * 0.5211822);
    path50.cubicTo(
        size.width * 0.5756111,
        size.height * 0.5218488,
        size.width * 0.5749216,
        size.height * 0.5225388,
        size.width * 0.5742320,
        size.height * 0.5232442);
    path50.lineTo(size.width * 0.5725131, size.height * 0.5250039);
    path50.lineTo(size.width * 0.5746667, size.height * 0.5258450);
    path50.cubicTo(
        size.width * 0.5754510,
        size.height * 0.5261473,
        size.width * 0.5762353,
        size.height * 0.5264496,
        size.width * 0.5770196,
        size.height * 0.5267248);
    path50.cubicTo(
        size.width * 0.5780915,
        size.height * 0.5271279,
        size.width * 0.5791503,
        size.height * 0.5274922,
        size.width * 0.5801895,
        size.height * 0.5278333);
    path50.cubicTo(
        size.width * 0.5824608,
        size.height * 0.5285853,
        size.width * 0.5847451,
        size.height * 0.5292519,
        size.width * 0.5870425,
        size.height * 0.5298295);
    path50.cubicTo(
        size.width * 0.5876046,
        size.height * 0.5299690,
        size.width * 0.5881536,
        size.height * 0.5301085,
        size.width * 0.5887157,
        size.height * 0.5302442);
    path50.cubicTo(
        size.width * 0.5898105,
        size.height * 0.5304961,
        size.width * 0.5909118,
        size.height * 0.5307481,
        size.width * 0.5920163,
        size.height * 0.5309729);
    path50.cubicTo(
        size.width * 0.5920588,
        size.height * 0.5309884,
        size.width * 0.5921078,
        size.height * 0.5309961,
        size.width * 0.5921536,
        size.height * 0.5310000);
    path50.cubicTo(
        size.width * 0.5932974,
        size.height * 0.5312248,
        size.width * 0.5944542,
        size.height * 0.5314380,
        size.width * 0.5955980,
        size.height * 0.5316279);
    path50.cubicTo(
        size.width * 0.5977320,
        size.height * 0.5319922,
        size.width * 0.5998627,
        size.height * 0.5322829,
        size.width * 0.6019935,
        size.height * 0.5324961);
    path50.cubicTo(
        size.width * 0.6022255,
        size.height * 0.5325310,
        size.width * 0.6024608,
        size.height * 0.5325465,
        size.width * 0.6027059,
        size.height * 0.5325581);
    path50.cubicTo(
        size.width * 0.6032255,
        size.height * 0.5326085,
        size.width * 0.6037320,
        size.height * 0.5326589,
        size.width * 0.6042516,
        size.height * 0.5326977);
    path50.cubicTo(
        size.width * 0.6053987,
        size.height * 0.5327829,
        size.width * 0.6065523,
        size.height * 0.5328488,
        size.width * 0.6077092,
        size.height * 0.5328953);
    path50.cubicTo(
        size.width * 0.6077941,
        size.height * 0.5328953,
        size.width * 0.6078693,
        size.height * 0.5329109,
        size.width * 0.6079542,
        size.height * 0.5329109);
    path50.cubicTo(
        size.width * 0.6085359,
        size.height * 0.5329341,
        size.width * 0.6091209,
        size.height * 0.5329612,
        size.width * 0.6097026,
        size.height * 0.5329729);
    path50.cubicTo(
        size.width * 0.6097026,
        size.height * 0.5329729,
        size.width * 0.6097026,
        size.height * 0.5329845,
        size.width * 0.6097124,
        size.height * 0.5329729);
    path50.cubicTo(
        size.width * 0.6102974,
        size.height * 0.5329845,
        size.width * 0.6108791,
        size.height * 0.5329961,
        size.width * 0.6114641,
        size.height * 0.5329961);
    path50.lineTo(size.width * 0.6146863, size.height * 0.5329961);
    path50.cubicTo(
        size.width * 0.6152908,
        size.height * 0.5329961,
        size.width * 0.6158954,
        size.height * 0.5330116,
        size.width * 0.6165098,
        size.height * 0.5330116);
    path50.cubicTo(
        size.width * 0.6173595,
        size.height * 0.5330116,
        size.width * 0.6182190,
        size.height * 0.5330233,
        size.width * 0.6190686,
        size.height * 0.5330349);
    path50.cubicTo(
        size.width * 0.6192908,
        size.height * 0.5330349,
        size.width * 0.6195229,
        size.height * 0.5330465,
        size.width * 0.6197549,
        size.height * 0.5330465);
    path50.cubicTo(
        size.width * 0.6211144,
        size.height * 0.5330736,
        size.width * 0.6224706,
        size.height * 0.5331124,
        size.width * 0.6238268,
        size.height * 0.5331473);
    path50.cubicTo(
        size.width * 0.6239118,
        size.height * 0.5331473,
        size.width * 0.6239967,
        size.height * 0.5331628,
        size.width * 0.6240817,
        size.height * 0.5331628);
    path50.cubicTo(
        size.width * 0.6254412,
        size.height * 0.5332132,
        size.width * 0.6267974,
        size.height * 0.5332636,
        size.width * 0.6281536,
        size.height * 0.5333372);
    path50.cubicTo(
        size.width * 0.6284510,
        size.height * 0.5333488,
        size.width * 0.6287484,
        size.height * 0.5333605,
        size.width * 0.6290556,
        size.height * 0.5333876);
    path50.cubicTo(
        size.width * 0.6303595,
        size.height * 0.5334496,
        size.width * 0.6316667,
        size.height * 0.5335271,
        size.width * 0.6329706,
        size.height * 0.5336124);
    path50.cubicTo(
        size.width * 0.6333399,
        size.height * 0.5336395,
        size.width * 0.6337222,
        size.height * 0.5336783,
        size.width * 0.6341046,
        size.height * 0.5337016);
    path50.cubicTo(
        size.width * 0.6350915,
        size.height * 0.5337636,
        size.width * 0.6360882,
        size.height * 0.5338411,
        size.width * 0.6370719,
        size.height * 0.5339264);
    path50.cubicTo(
        size.width * 0.6376569,
        size.height * 0.5339651,
        size.width * 0.6382288,
        size.height * 0.5340155,
        size.width * 0.6388137,
        size.height * 0.5340775);
    path50.cubicTo(
        size.width * 0.6411667,
        size.height * 0.5342907,
        size.width * 0.6435098,
        size.height * 0.5345310,
        size.width * 0.6458660,
        size.height * 0.5348062);
    path50.cubicTo(
        size.width * 0.6466503,
        size.height * 0.5348837,
        size.width * 0.6474346,
        size.height * 0.5349845,
        size.width * 0.6482190,
        size.height * 0.5350853);
    path50.cubicTo(
        size.width * 0.6503170,
        size.height * 0.5353488,
        size.width * 0.6524248,
        size.height * 0.5356357,
        size.width * 0.6545392,
        size.height * 0.5359496);
    path50.cubicTo(
        size.width * 0.6554837,
        size.height * 0.5360775,
        size.width * 0.6564248,
        size.height * 0.5362287,
        size.width * 0.6573693,
        size.height * 0.5363798);
    path50.cubicTo(
        size.width * 0.6574771,
        size.height * 0.5363915,
        size.width * 0.6575817,
        size.height * 0.5364031,
        size.width * 0.6576895,
        size.height * 0.5364302);
    path50.cubicTo(
        size.width * 0.6588562,
        size.height * 0.5366163,
        size.width * 0.6600098,
        size.height * 0.5368062,
        size.width * 0.6611765,
        size.height * 0.5370078);
    path50.cubicTo(
        size.width * 0.6619412,
        size.height * 0.5371318,
        size.width * 0.6627059,
        size.height * 0.5372713,
        size.width * 0.6634673,
        size.height * 0.5374109);
    path50.cubicTo(
        size.width * 0.6642516,
        size.height * 0.5375465,
        size.width * 0.6650359,
        size.height * 0.5376860,
        size.width * 0.6658235,
        size.height * 0.5378488);
    path50.cubicTo(
        size.width * 0.6662451,
        size.height * 0.5379264,
        size.width * 0.6666699,
        size.height * 0.5380116,
        size.width * 0.6671046,
        size.height * 0.5381008);
    path50.cubicTo(
        size.width * 0.6681242,
        size.height * 0.5382907,
        size.width * 0.6691503,
        size.height * 0.5384884,
        size.width * 0.6701797,
        size.height * 0.5387171);
    path50.cubicTo(
        size.width * 0.6702745,
        size.height * 0.5387287,
        size.width * 0.6703660,
        size.height * 0.5387442,
        size.width * 0.6704575,
        size.height * 0.5387674);
    path50.cubicTo(
        size.width * 0.6726405,
        size.height * 0.5392209,
        size.width * 0.6748366,
        size.height * 0.5396977,
        size.width * 0.6770196,
        size.height * 0.5402132);
    path50.cubicTo(
        size.width * 0.6783039,
        size.height * 0.5405000,
        size.width * 0.6795752,
        size.height * 0.5408023,
        size.width * 0.6808497,
        size.height * 0.5411163);
    path50.cubicTo(
        size.width * 0.6818464,
        size.height * 0.5413566,
        size.width * 0.6828431,
        size.height * 0.5416085,
        size.width * 0.6838399,
        size.height * 0.5418605);
    path50.cubicTo(
        size.width * 0.6840098,
        size.height * 0.5418953,
        size.width * 0.6841797,
        size.height * 0.5419457,
        size.width * 0.6843464,
        size.height * 0.5419961);
    path50.cubicTo(
        size.width * 0.6843856,
        size.height * 0.5420116,
        size.width * 0.6844248,
        size.height * 0.5420194,
        size.width * 0.6844641,
        size.height * 0.5420233);
    path50.cubicTo(
        size.width * 0.6859706,
        size.height * 0.5424109,
        size.width * 0.6874869,
        size.height * 0.5428140,
        size.width * 0.6889935,
        size.height * 0.5432403);
    path50.cubicTo(
        size.width * 0.6942222,
        size.height * 0.5446744,
        size.width * 0.6994412,
        size.height * 0.5462674,
        size.width * 0.7046569,
        size.height * 0.5480155);
    path50.cubicTo(
        size.width * 0.7058529,
        size.height * 0.5484070,
        size.width * 0.7070523,
        size.height * 0.5488217,
        size.width * 0.7082516,
        size.height * 0.5492364);
    path50.cubicTo(
        size.width * 0.7087582,
        size.height * 0.5494109,
        size.width * 0.7092582,
        size.height * 0.5495891,
        size.width * 0.7097549,
        size.height * 0.5497636);
    path50.cubicTo(
        size.width * 0.7107941,
        size.height * 0.5501279,
        size.width * 0.7118235,
        size.height * 0.5504922,
        size.width * 0.7128627,
        size.height * 0.5508837);
    path50.cubicTo(
        size.width * 0.7137745,
        size.height * 0.5512093,
        size.width * 0.7146993,
        size.height * 0.5515504,
        size.width * 0.7156111,
        size.height * 0.5518992);
    path50.cubicTo(
        size.width * 0.7161830,
        size.height * 0.5521163,
        size.width * 0.7167549,
        size.height * 0.5523295,
        size.width * 0.7173268,
        size.height * 0.5525543);
    path50.cubicTo(
        size.width * 0.7182190,
        size.height * 0.5528798,
        size.width * 0.7191078,
        size.height * 0.5532209,
        size.width * 0.7199902,
        size.height * 0.5535853);
    path50.cubicTo(
        size.width * 0.7207418,
        size.height * 0.5538605,
        size.width * 0.7214837,
        size.height * 0.5541512,
        size.width * 0.7222255,
        size.height * 0.5544651);
    path50.cubicTo(
        size.width * 0.7232876,
        size.height * 0.5548798,
        size.width * 0.7243595,
        size.height * 0.5553062,
        size.width * 0.7254183,
        size.height * 0.5557597);
    path50.cubicTo(
        size.width * 0.7257255,
        size.height * 0.5558837,
        size.width * 0.7260458,
        size.height * 0.5560116,
        size.width * 0.7263529,
        size.height * 0.5561512);
    path50.cubicTo(
        size.width * 0.7276471,
        size.height * 0.5566783,
        size.width * 0.7289412,
        size.height * 0.5572171,
        size.width * 0.7302320,
        size.height * 0.5577829);
    path50.cubicTo(
        size.width * 0.7314967,
        size.height * 0.5583217,
        size.width * 0.7327582,
        size.height * 0.5588760,
        size.width * 0.7340098,
        size.height * 0.5594302);
    path50.cubicTo(
        size.width * 0.7348791,
        size.height * 0.5598178,
        size.width * 0.7357484,
        size.height * 0.5601977,
        size.width * 0.7366078,
        size.height * 0.5605969);
    path50.cubicTo(
        size.width * 0.7375719,
        size.height * 0.5610388,
        size.width * 0.7385359,
        size.height * 0.5614767,
        size.width * 0.7394902,
        size.height * 0.5619302);
    path50.cubicTo(
        size.width * 0.7408693,
        size.height * 0.5625736,
        size.width * 0.7422582,
        size.height * 0.5632248,
        size.width * 0.7436373,
        size.height * 0.5638915);
    path50.cubicTo(
        size.width * 0.7449085,
        size.height * 0.5644961,
        size.width * 0.7461732,
        size.height * 0.5651124,
        size.width * 0.7474444,
        size.height * 0.5657519);
    path50.cubicTo(
        size.width * 0.7476765,
        size.height * 0.5658643,
        size.width * 0.7479216,
        size.height * 0.5659767,
        size.width * 0.7481536,
        size.height * 0.5661047);
    path50.cubicTo(
        size.width * 0.7492582,
        size.height * 0.5666434,
        size.width * 0.7503595,
        size.height * 0.5672093,
        size.width * 0.7514542,
        size.height * 0.5677752);
    path50.cubicTo(
        size.width * 0.7521634,
        size.height * 0.5681279,
        size.width * 0.7528627,
        size.height * 0.5684922,
        size.width * 0.7535621,
        size.height * 0.5688566);
    path50.cubicTo(
        size.width * 0.7566176,
        size.height * 0.5704380,
        size.width * 0.7596667,
        size.height * 0.5720775,
        size.width * 0.7627157,
        size.height * 0.5737713);
    path50.lineTo(size.width * 0.7627255, size.height * 0.5737713);
    path50.cubicTo(
        size.width * 0.7646340,
        size.height * 0.5748372,
        size.width * 0.7665752,
        size.height * 0.5758566,
        size.width * 0.7685261,
        size.height * 0.5768256);
    path50.cubicTo(
        size.width * 0.7689837,
        size.height * 0.5770504,
        size.width * 0.7694379,
        size.height * 0.5772791,
        size.width * 0.7699052,
        size.height * 0.5774922);
    path50.cubicTo(
        size.width * 0.7706797,
        size.height * 0.5778798,
        size.width * 0.7714641,
        size.height * 0.5782442,
        size.width * 0.7722484,
        size.height * 0.5786240);
    path50.cubicTo(
        size.width * 0.7727582,
        size.height * 0.5788605,
        size.width * 0.7732647,
        size.height * 0.5791008,
        size.width * 0.7737843,
        size.height * 0.5793256);
    path50.cubicTo(
        size.width * 0.7745392,
        size.height * 0.5796783,
        size.width * 0.7753039,
        size.height * 0.5800155,
        size.width * 0.7760654,
        size.height * 0.5803450);
    path50.cubicTo(
        size.width * 0.7768725,
        size.height * 0.5806977,
        size.width * 0.7776667,
        size.height * 0.5810465,
        size.width * 0.7784837,
        size.height * 0.5813760);
    path50.cubicTo(
        size.width * 0.7787712,
        size.height * 0.5815000,
        size.width * 0.7790556,
        size.height * 0.5816124,
        size.width * 0.7793529,
        size.height * 0.5817403);
    path50.cubicTo(
        size.width * 0.7802974,
        size.height * 0.5821163,
        size.width * 0.7812418,
        size.height * 0.5824922,
        size.width * 0.7821961,
        size.height * 0.5828566);
    path50.cubicTo(
        size.width * 0.7822908,
        size.height * 0.5828953,
        size.width * 0.7823856,
        size.height * 0.5829341,
        size.width * 0.7824935,
        size.height * 0.5829690);
    path50.cubicTo(
        size.width * 0.7834902,
        size.height * 0.5833488,
        size.width * 0.7844869,
        size.height * 0.5837248,
        size.width * 0.7854935,
        size.height * 0.5840775);
    path50.cubicTo(
        size.width * 0.7855719,
        size.height * 0.5841124,
        size.width * 0.7856536,
        size.height * 0.5841395,
        size.width * 0.7857386,
        size.height * 0.5841667);
    path50.cubicTo(
        size.width * 0.7868203,
        size.height * 0.5845543,
        size.width * 0.7879216,
        size.height * 0.5849302,
        size.width * 0.7890131,
        size.height * 0.5852946);
    path50.cubicTo(
        size.width * 0.7906242,
        size.height * 0.5858256,
        size.width * 0.7922484,
        size.height * 0.5863256,
        size.width * 0.7938693,
        size.height * 0.5867907);
    path50.cubicTo(
        size.width * 0.7941667,
        size.height * 0.5868798,
        size.width * 0.7944641,
        size.height * 0.5869690,
        size.width * 0.7947614,
        size.height * 0.5870426);
    path50.cubicTo(
        size.width * 0.7956307,
        size.height * 0.5872946,
        size.width * 0.7964902,
        size.height * 0.5875349,
        size.width * 0.7973595,
        size.height * 0.5877597);
    path50.cubicTo(
        size.width * 0.7982810,
        size.height * 0.5880116,
        size.width * 0.7992157,
        size.height * 0.5882364,
        size.width * 0.8001373,
        size.height * 0.5884651);
    path50.cubicTo(
        size.width * 0.8010719,
        size.height * 0.5886899,
        size.width * 0.8020033,
        size.height * 0.5889147,
        size.width * 0.8029281,
        size.height * 0.5891163);
    path50.cubicTo(
        size.width * 0.8034248,
        size.height * 0.5892287,
        size.width * 0.8039248,
        size.height * 0.5893450,
        size.width * 0.8044118,
        size.height * 0.5894419);
    path50.lineTo(size.width * 0.8057157, size.height * 0.5897093);
    path50.cubicTo(
        size.width * 0.8066176,
        size.height * 0.5898953,
        size.width * 0.8075196,
        size.height * 0.5900581,
        size.width * 0.8084314,
        size.height * 0.5902364);
    path50.cubicTo(
        size.width * 0.8084542,
        size.height * 0.5902326,
        size.width * 0.8084804,
        size.height * 0.5902403,
        size.width * 0.8085033,
        size.height * 0.5902481);
    path50.cubicTo(
        size.width * 0.8095327,
        size.height * 0.5904380,
        size.width * 0.8105523,
        size.height * 0.5906124,
        size.width * 0.8115817,
        size.height * 0.5907636);
    path50.cubicTo(
        size.width * 0.8125654,
        size.height * 0.5909264,
        size.width * 0.8135523,
        size.height * 0.5910659,
        size.width * 0.8145392,
        size.height * 0.5912016);
    path50.cubicTo(
        size.width * 0.8147418,
        size.height * 0.5912287,
        size.width * 0.8149510,
        size.height * 0.5912519,
        size.width * 0.8151634,
        size.height * 0.5912791);
    path50.cubicTo(
        size.width * 0.8159804,
        size.height * 0.5913915,
        size.width * 0.8167974,
        size.height * 0.5915039,
        size.width * 0.8176144,
        size.height * 0.5915930);
    path50.cubicTo(
        size.width * 0.8178464,
        size.height * 0.5916163,
        size.width * 0.8180817,
        size.height * 0.5916434,
        size.width * 0.8183137,
        size.height * 0.5916667);
    path50.cubicTo(
        size.width * 0.8191209,
        size.height * 0.5917558,
        size.width * 0.8199248,
        size.height * 0.5918450,
        size.width * 0.8207320,
        size.height * 0.5919070);
    path50.cubicTo(
        size.width * 0.8208922,
        size.height * 0.5919341,
        size.width * 0.8210556,
        size.height * 0.5919457,
        size.width * 0.8212190,
        size.height * 0.5919457);
    path50.cubicTo(
        size.width * 0.8219412,
        size.height * 0.5920194,
        size.width * 0.8226634,
        size.height * 0.5920814,
        size.width * 0.8233824,
        size.height * 0.5921202);
    path50.cubicTo(
        size.width * 0.8238922,
        size.height * 0.5921705,
        size.width * 0.8243889,
        size.height * 0.5921977,
        size.width * 0.8248987,
        size.height * 0.5922326);
    path50.cubicTo(
        size.width * 0.8251634,
        size.height * 0.5922481,
        size.width * 0.8254183,
        size.height * 0.5922597,
        size.width * 0.8256830,
        size.height * 0.5922713);
    path50.cubicTo(
        size.width * 0.8263824,
        size.height * 0.5923217,
        size.width * 0.8270850,
        size.height * 0.5923488,
        size.width * 0.8277941,
        size.height * 0.5923721);
    path50.cubicTo(
        size.width * 0.8286536,
        size.height * 0.5924109,
        size.width * 0.8295131,
        size.height * 0.5924341,
        size.width * 0.8303595,
        size.height * 0.5924612);
    path50.cubicTo(
        size.width * 0.8313889,
        size.height * 0.5924845,
        size.width * 0.8324281,
        size.height * 0.5924961,
        size.width * 0.8334575,
        size.height * 0.5924961);
    path50.lineTo(size.width * 0.8334771, size.height * 0.5924961);
    path50.cubicTo(
        size.width * 0.8344869,
        size.height * 0.5924961,
        size.width * 0.8355033,
        size.height * 0.5924845,
        size.width * 0.8365098,
        size.height * 0.5924612);
    path50.lineTo(size.width * 0.8368922, size.height * 0.5924612);
    path50.lineTo(size.width * 0.8380065, size.height * 0.5924225);
    path50.cubicTo(
        size.width * 0.8385784,
        size.height * 0.5924109,
        size.width * 0.8391503,
        size.height * 0.5923837,
        size.width * 0.8397124,
        size.height * 0.5923605);
    path50.cubicTo(
        size.width * 0.8407941,
        size.height * 0.5923101,
        size.width * 0.8418660,
        size.height * 0.5922481,
        size.width * 0.8429379,
        size.height * 0.5921705);
    path50.cubicTo(
        size.width * 0.8433627,
        size.height * 0.5921473,
        size.width * 0.8437974,
        size.height * 0.5921085,
        size.width * 0.8442222,
        size.height * 0.5920814);
    path50.cubicTo(
        size.width * 0.8444118,
        size.height * 0.5920698,
        size.width * 0.8446144,
        size.height * 0.5920465,
        size.width * 0.8448039,
        size.height * 0.5920310);
    path50.cubicTo(
        size.width * 0.8454706,
        size.height * 0.5919845,
        size.width * 0.8461307,
        size.height * 0.5919341,
        size.width * 0.8467974,
        size.height * 0.5918682);
    path50.cubicTo(
        size.width * 0.8474869,
        size.height * 0.5918062,
        size.width * 0.8481863,
        size.height * 0.5917326,
        size.width * 0.8488758,
        size.height * 0.5916434);
    path50.cubicTo(
        size.width * 0.8497680,
        size.height * 0.5915426,
        size.width * 0.8506569,
        size.height * 0.5914302,
        size.width * 0.8515490,
        size.height * 0.5913178);
    path50.cubicTo(
        size.width * 0.8522484,
        size.height * 0.5912287,
        size.width * 0.8529477,
        size.height * 0.5911279,
        size.width * 0.8536373,
        size.height * 0.5910271);
    path50.cubicTo(
        size.width * 0.8537288,
        size.height * 0.5910194,
        size.width * 0.8538235,
        size.height * 0.5910000,
        size.width * 0.8539118,
        size.height * 0.5909767);
    path50.cubicTo(
        size.width * 0.8545817,
        size.height * 0.5908876,
        size.width * 0.8552484,
        size.height * 0.5907868,
        size.width * 0.8559052,
        size.height * 0.5906744);
    path50.cubicTo(
        size.width * 0.8566928,
        size.height * 0.5905504,
        size.width * 0.8574641,
        size.height * 0.5904109,
        size.width * 0.8582386,
        size.height * 0.5902752);
    path50.cubicTo(
        size.width * 0.8583235,
        size.height * 0.5902597,
        size.width * 0.8583987,
        size.height * 0.5902481,
        size.width * 0.8584837,
        size.height * 0.5902364);
    path50.cubicTo(
        size.width * 0.8598203,
        size.height * 0.5899845,
        size.width * 0.8611667,
        size.height * 0.5897326,
        size.width * 0.8625131,
        size.height * 0.5894419);
    path50.cubicTo(
        size.width * 0.8639248,
        size.height * 0.5891434,
        size.width * 0.8653333,
        size.height * 0.5888140,
        size.width * 0.8667353,
        size.height * 0.5884767);
    path50.cubicTo(
        size.width * 0.8672549,
        size.height * 0.5883488,
        size.width * 0.8677614,
        size.height * 0.5882132,
        size.width * 0.8682810,
        size.height * 0.5880853);
    path50.cubicTo(
        size.width * 0.8685686,
        size.height * 0.5880116,
        size.width * 0.8688660,
        size.height * 0.5879496,
        size.width * 0.8691405,
        size.height * 0.5878721);
    path50.cubicTo(
        size.width * 0.8695752,
        size.height * 0.5877597,
        size.width * 0.8700000,
        size.height * 0.5876473,
        size.width * 0.8704248,
        size.height * 0.5875194);
    path50.cubicTo(
        size.width * 0.8705000,
        size.height * 0.5875078,
        size.width * 0.8705850,
        size.height * 0.5874845,
        size.width * 0.8706569,
        size.height * 0.5874690);
    path50.cubicTo(
        size.width * 0.8712516,
        size.height * 0.5873178,
        size.width * 0.8718333,
        size.height * 0.5871434,
        size.width * 0.8724281,
        size.height * 0.5869690);
    path50.cubicTo(
        size.width * 0.8736176,
        size.height * 0.5866279,
        size.width * 0.8747843,
        size.height * 0.5862752,
        size.width * 0.8759477,
        size.height * 0.5858992);
    path50.cubicTo(
        size.width * 0.8764673,
        size.height * 0.5857481,
        size.width * 0.8769869,
        size.height * 0.5855853,
        size.width * 0.8774869,
        size.height * 0.5854225);
    path50.cubicTo(
        size.width * 0.8776340,
        size.height * 0.5853721,
        size.width * 0.8777843,
        size.height * 0.5853217,
        size.width * 0.8779216,
        size.height * 0.5852713);
    path50.cubicTo(
        size.width * 0.8800752,
        size.height * 0.5845543,
        size.width * 0.8822092,
        size.height * 0.5837946,
        size.width * 0.8843268,
        size.height * 0.5829961);
    path50.cubicTo(
        size.width * 0.8852614,
        size.height * 0.5826434,
        size.width * 0.8861830,
        size.height * 0.5822791,
        size.width * 0.8871046,
        size.height * 0.5818915);
    path50.cubicTo(
        size.width * 0.8890882,
        size.height * 0.5810853,
        size.width * 0.8910523,
        size.height * 0.5802403,
        size.width * 0.8930000,
        size.height * 0.5793527);
    path50.cubicTo(
        size.width * 0.8935196,
        size.height * 0.5791240,
        size.width * 0.8940392,
        size.height * 0.5788721,
        size.width * 0.8945588,
        size.height * 0.5786357);
    path50.cubicTo(
        size.width * 0.8953235,
        size.height * 0.5782713,
        size.width * 0.8960882,
        size.height * 0.5779070,
        size.width * 0.8968399,
        size.height * 0.5775426);
    path50.cubicTo(
        size.width * 0.8975196,
        size.height * 0.5772016,
        size.width * 0.8981961,
        size.height * 0.5768643,
        size.width * 0.8988856,
        size.height * 0.5765116);
    path50.cubicTo(
        size.width * 0.8992255,
        size.height * 0.5763488,
        size.width * 0.8995654,
        size.height * 0.5761705,
        size.width * 0.8999052,
        size.height * 0.5759961);
    path50.cubicTo(
        size.width * 0.9009216,
        size.height * 0.5754690,
        size.width * 0.9019412,
        size.height * 0.5749264,
        size.width * 0.9029477,
        size.height * 0.5743876);
    path50.cubicTo(
        size.width * 0.9036275,
        size.height * 0.5740078,
        size.width * 0.9042941,
        size.height * 0.5736434,
        size.width * 0.9049641,
        size.height * 0.5732674);
    path50.cubicTo(
        size.width * 0.9060229,
        size.height * 0.5726628,
        size.width * 0.9070719,
        size.height * 0.5720504,
        size.width * 0.9081242,
        size.height * 0.5714341);
    path50.cubicTo(
        size.width * 0.9083889,
        size.height * 0.5712713,
        size.width * 0.9086438,
        size.height * 0.5711047,
        size.width * 0.9088987,
        size.height * 0.5709535);
    path50.cubicTo(
        size.width * 0.9095654,
        size.height * 0.5705543,
        size.width * 0.9102320,
        size.height * 0.5701395,
        size.width * 0.9109118,
        size.height * 0.5697364);
    path50.cubicTo(
        size.width * 0.9119837,
        size.height * 0.5690581,
        size.width * 0.9130556,
        size.height * 0.5683798,
        size.width * 0.9141144,
        size.height * 0.5676744);
    path50.cubicTo(
        size.width * 0.9144739,
        size.height * 0.5674496,
        size.width * 0.9148235,
        size.height * 0.5672093,
        size.width * 0.9151863,
        size.height * 0.5669729);
    path50.cubicTo(
        size.width * 0.9163529,
        size.height * 0.5661899,
        size.width * 0.9175065,
        size.height * 0.5653992,
        size.width * 0.9186536,
        size.height * 0.5645969);
    path50.cubicTo(
        size.width * 0.9211863,
        size.height * 0.5627984,
        size.width * 0.9236863,
        size.height * 0.5609225,
        size.width * 0.9261503,
        size.height * 0.5589651);
    path50.cubicTo(
        size.width * 0.9267647,
        size.height * 0.5584884,
        size.width * 0.9273824,
        size.height * 0.5579845,
        size.width * 0.9279869,
        size.height * 0.5574961);
    path50.cubicTo(
        size.width * 0.9291307,
        size.height * 0.5565659,
        size.width * 0.9302549,
        size.height * 0.5556085,
        size.width * 0.9313791,
        size.height * 0.5546550);
    path50.cubicTo(
        size.width * 0.9314967,
        size.height * 0.5545543,
        size.width * 0.9316013,
        size.height * 0.5544535,
        size.width * 0.9317190,
        size.height * 0.5543643);
    path50.cubicTo(
        size.width * 0.9322810,
        size.height * 0.5538760,
        size.width * 0.9328431,
        size.height * 0.5533837,
        size.width * 0.9334052,
        size.height * 0.5528798);
    path50.cubicTo(
        size.width * 0.9345719,
        size.height * 0.5518372,
        size.width * 0.9357255,
        size.height * 0.5507829,
        size.width * 0.9368824,
        size.height * 0.5497016);
    path50.cubicTo(
        size.width * 0.9369020,
        size.height * 0.5496899,
        size.width * 0.9369346,
        size.height * 0.5496512,
        size.width * 0.9369673,
        size.height * 0.5496279);
    path50.cubicTo(
        size.width * 0.9374869,
        size.height * 0.5491357,
        size.width * 0.9380065,
        size.height * 0.5486473,
        size.width * 0.9385163,
        size.height * 0.5481550);
    path50.cubicTo(
        size.width * 0.9400948,
        size.height * 0.5466357,
        size.width * 0.9416536,
        size.height * 0.5450891,
        size.width * 0.9431797,
        size.height * 0.5434922);
    path50.cubicTo(
        size.width * 0.9439346,
        size.height * 0.5427248,
        size.width * 0.9446765,
        size.height * 0.5419341,
        size.width * 0.9454085,
        size.height * 0.5411434);
    path50.cubicTo(
        size.width * 0.9459608,
        size.height * 0.5405504,
        size.width * 0.9465098,
        size.height * 0.5399612,
        size.width * 0.9470523,
        size.height * 0.5393566);
    path50.cubicTo(
        size.width * 0.9481438,
        size.height * 0.5381395,
        size.width * 0.9492157,
        size.height * 0.5369302,
        size.width * 0.9502745,
        size.height * 0.5357016);
    path50.cubicTo(
        size.width * 0.9508072,
        size.height * 0.5350969,
        size.width * 0.9513268,
        size.height * 0.5344690,
        size.width * 0.9518562,
        size.height * 0.5338411);
    path50.cubicTo(
        size.width * 0.9523758,
        size.height * 0.5332132,
        size.width * 0.9529052,
        size.height * 0.5325814,
        size.width * 0.9534248,
        size.height * 0.5319419);
    path50.cubicTo(
        size.width * 0.9536046,
        size.height * 0.5317287,
        size.width * 0.9537843,
        size.height * 0.5315039,
        size.width * 0.9539673,
        size.height * 0.5312752);
    path50.cubicTo(
        size.width * 0.9544967,
        size.height * 0.5306085,
        size.width * 0.9550261,
        size.height * 0.5299302,
        size.width * 0.9555556,
        size.height * 0.5292636);
    path50.cubicTo(
        size.width * 0.9560131,
        size.height * 0.5286860,
        size.width * 0.9564575,
        size.height * 0.5280853,
        size.width * 0.9569150,
        size.height * 0.5274806);
    path50.cubicTo(
        size.width * 0.9576765,
        size.height * 0.5264729,
        size.width * 0.9584510,
        size.height * 0.5254690,
        size.width * 0.9592059,
        size.height * 0.5244496);
    path50.cubicTo(
        size.width * 0.9592451,
        size.height * 0.5243953,
        size.width * 0.9592876,
        size.height * 0.5243411,
        size.width * 0.9593333,
        size.height * 0.5242868);
    path50.cubicTo(
        size.width * 0.9593758,
        size.height * 0.5242248,
        size.width * 0.9594183,
        size.height * 0.5241744,
        size.width * 0.9594477,
        size.height * 0.5241240);
    path50.lineTo(size.width * 0.9594379, size.height * 0.5241240);
    path50.cubicTo(
        size.width * 0.9748529,
        size.height * 0.5030000,
        size.width * 0.9863039,
        size.height * 0.4782326,
        size.width * 0.9930392,
        size.height * 0.4514690);
    path50.cubicTo(
        size.width * 0.9997712,
        size.height * 0.4247016,
        size.width * 1.001634,
        size.height * 0.3965465,
        size.width * 0.9984967,
        size.height * 0.3688671);
    path50.cubicTo(
        size.width * 0.9953627,
        size.height * 0.3411853,
        size.width * 0.9873039,
        size.height * 0.3146085,
        size.width * 0.9748529,
        size.height * 0.2908953);
    path50.cubicTo(
        size.width * 0.9624052,
        size.height * 0.2671822,
        size.width * 0.9458464,
        size.height * 0.2468733,
        size.width * 0.9262778,
        size.height * 0.2313124);
    path50.lineTo(size.width * 0.9262778, size.height * 0.2313124);
    path50.close();

    Paint paint50Fill = Paint()..style = PaintingStyle.fill;
    paint50Fill.color = const Color(0xffA9A9A9);
    canvas.drawPath(path50, paint50Fill);

    final Path path51 = Path();
    path51.moveTo(size.width * 0.7116340, size.height * 0.08299264);
    path51.cubicTo(
        size.width * 0.7137484,
        size.height * 0.09199225,
        size.width * 0.7169281,
        size.height * 0.1005911,
        size.width * 0.7210784,
        size.height * 0.1085322);
    path51.cubicTo(
        size.width * 0.7141307,
        size.height * 0.1014554,
        size.width * 0.7079183,
        size.height * 0.09341744,
        size.width * 0.7025817,
        size.height * 0.08458992);
    path51.cubicTo(
        size.width * 0.7055817,
        size.height * 0.08391783,
        size.width * 0.7085980,
        size.height * 0.08338527,
        size.width * 0.7116340,
        size.height * 0.08299264);
    path51.close();

    Paint paint51Fill = Paint()..style = PaintingStyle.fill;
    paint51Fill.color = const Color.fromRGBO(0, 0, 0, 0.16);
    canvas.drawPath(path51, paint51Fill);

    final Path path52 = Path();
    path52.moveTo(size.width * 0.6081601, size.height * 0.2221752);
    path52.cubicTo(
        size.width * 0.6003105,
        size.height * 0.2272519,
        size.width * 0.5929706,
        size.height * 0.2333659,
        size.width * 0.5862843,
        size.height * 0.2404000);
    path52.cubicTo(
        size.width * 0.5975752,
        size.height * 0.2245733,
        size.width * 0.6058301,
        size.height * 0.2060252,
        size.width * 0.6104706,
        size.height * 0.1860415);
    path52.cubicTo(
        size.width * 0.6105261,
        size.height * 0.1858012,
        size.width * 0.6105850,
        size.height * 0.1855597,
        size.width * 0.6106373,
        size.height * 0.1853190);
    path52.lineTo(size.width * 0.6107974, size.height * 0.1846388);
    path52.cubicTo(
        size.width * 0.6163758,
        size.height * 0.1607880,
        size.width * 0.6271961,
        size.height * 0.1391209,
        size.width * 0.6421569,
        size.height * 0.1218539);
    path52.lineTo(size.width * 0.6433333, size.height * 0.1204957);
    path52.lineTo(size.width * 0.6441634, size.height * 0.1221744);
    path52.cubicTo(
        size.width * 0.6487484,
        size.height * 0.1314171,
        size.width * 0.6542386,
        size.height * 0.1399876,
        size.width * 0.6605163,
        size.height * 0.1477097);
    path52.cubicTo(
        size.width * 0.6508954,
        size.height * 0.1798775,
        size.width * 0.6321797,
        size.height * 0.2066504,
        size.width * 0.6081601,
        size.height * 0.2221752);
    path52.close();

    Paint paint52Fill = Paint()..style = PaintingStyle.fill;
    paint52Fill.color = const Color.fromRGBO(0, 0, 0, 0.16);
    canvas.drawPath(path52, paint52Fill);

    final Path path53 = Path();
    path53.moveTo(size.width * 0.6634379, size.height * 0.1365643);
    path53.lineTo(size.width * 0.6632810, size.height * 0.1372446);
    path53.cubicTo(
        size.width * 0.6632255,
        size.height * 0.1374849,
        size.width * 0.6631699,
        size.height * 0.1377267,
        size.width * 0.6631144,
        size.height * 0.1379667);
    path53.cubicTo(
        size.width * 0.6628039,
        size.height * 0.1392895,
        size.width * 0.6624739,
        size.height * 0.1406019,
        size.width * 0.6621340,
        size.height * 0.1419089);
    path53.cubicTo(
        size.width * 0.6587810,
        size.height * 0.1316105,
        size.width * 0.6564248,
        size.height * 0.1208934,
        size.width * 0.6551144,
        size.height * 0.1099643);
    path53.lineTo(size.width * 0.6549902, size.height * 0.1090368);
    path53.lineTo(size.width * 0.6556340, size.height * 0.1084919);
    path53.cubicTo(
        size.width * 0.6637026,
        size.height * 0.1016194,
        size.width * 0.6724673,
        size.height * 0.09597248,
        size.width * 0.6817222,
        size.height * 0.09168333);
    path53.cubicTo(
        size.width * 0.6734118,
        size.height * 0.1052279,
        size.width * 0.6672190,
        size.height * 0.1204287,
        size.width * 0.6634379,
        size.height * 0.1365643);
    path53.close();

    Paint paint53Fill = Paint()..style = PaintingStyle.fill;
    paint53Fill.color = const Color.fromRGBO(0, 0, 0, 0.16);
    canvas.drawPath(path53, paint53Fill);

    final Path path54 = Path();
    path54.moveTo(size.width * 0.5555163, size.height * 0.2702484);
    path54.cubicTo(
        size.width * 0.5624641,
        size.height * 0.2657422,
        size.width * 0.5689641,
        size.height * 0.2603333,
        size.width * 0.5749020,
        size.height * 0.2541221);
    path54.cubicTo(
        size.width * 0.5630425,
        size.height * 0.2704845,
        size.width * 0.5545425,
        size.height * 0.2898795,
        size.width * 0.5500686,
        size.height * 0.3107868);
    path54.cubicTo(
        size.width * 0.5455915,
        size.height * 0.3316938,
        size.width * 0.5452614,
        size.height * 0.3535453,
        size.width * 0.5491013,
        size.height * 0.3746291);
    path54.cubicTo(
        size.width * 0.5529444,
        size.height * 0.3957132,
        size.width * 0.5608529,
        size.height * 0.4154574,
        size.width * 0.5722092,
        size.height * 0.4323101);
    path54.cubicTo(
        size.width * 0.5835621,
        size.height * 0.4491667,
        size.width * 0.5980588,
        size.height * 0.4626783,
        size.width * 0.6145556,
        size.height * 0.4717829);
    path54.lineTo(size.width * 0.6150915, size.height * 0.4720775);
    path54.lineTo(size.width * 0.6156275, size.height * 0.4717907);
    path54.cubicTo(
        size.width * 0.6245392,
        size.height * 0.4670194,
        size.width * 0.6339346,
        size.height * 0.4636357,
        size.width * 0.6435784,
        size.height * 0.4617287);
    path54.cubicTo(
        size.width * 0.6375588,
        size.height * 0.4653643,
        size.width * 0.6319477,
        size.height * 0.4698798,
        size.width * 0.6268758,
        size.height * 0.4751705);
    path54.lineTo(size.width * 0.6251601, size.height * 0.4769264);
    path54.lineTo(size.width * 0.6273105, size.height * 0.4777713);
    path54.cubicTo(
        size.width * 0.6291699,
        size.height * 0.4785000,
        size.width * 0.6310261,
        size.height * 0.4791667,
        size.width * 0.6328333,
        size.height * 0.4797636);
    path54.cubicTo(
        size.width * 0.6434477,
        size.height * 0.4832674,
        size.width * 0.6544183,
        size.height * 0.4850078,
        size.width * 0.6654346,
        size.height * 0.4849341);
    path54.cubicTo(
        size.width * 0.7154902,
        size.height * 0.4845543,
        size.width * 0.7659346,
        size.height * 0.4982674,
        size.width * 0.8153627,
        size.height * 0.5256977);
    path54.cubicTo(
        size.width * 0.8238399,
        size.height * 0.5303953,
        size.width * 0.8326307,
        size.height * 0.5342442,
        size.width * 0.8416503,
        size.height * 0.5372132);
    path54.cubicTo(
        size.width * 0.8809444,
        size.height * 0.5501783,
        size.width * 0.9228922,
        size.height * 0.5455155,
        size.width * 0.9594673,
        size.height * 0.5241124);
    path54.cubicTo(
        size.width * 0.9388464,
        size.height * 0.5523760,
        size.width * 0.9118856,
        size.height * 0.5731279,
        size.width * 0.8817124,
        size.height * 0.5839574);
    path54.cubicTo(
        size.width * 0.8515392,
        size.height * 0.5947868,
        size.width * 0.8193922,
        size.height * 0.5952481,
        size.width * 0.7890065,
        size.height * 0.5852868);
    path54.cubicTo(
        size.width * 0.7799902,
        size.height * 0.5823217,
        size.width * 0.7711993,
        size.height * 0.5784690,
        size.width * 0.7627222,
        size.height * 0.5737713);
    path54.cubicTo(
        size.width * 0.7132908,
        size.height * 0.5463450,
        size.width * 0.6628497,
        size.height * 0.5326279,
        size.width * 0.6127941,
        size.height * 0.5330078);
    path54.cubicTo(
        size.width * 0.6017778,
        size.height * 0.5330814,
        size.width * 0.5908039,
        size.height * 0.5313411,
        size.width * 0.5801928,
        size.height * 0.5278372);
    path54.cubicTo(
        size.width * 0.5783856,
        size.height * 0.5272442,
        size.width * 0.5765261,
        size.height * 0.5265736,
        size.width * 0.5746699,
        size.height * 0.5258450);
    path54.lineTo(size.width * 0.5725163, size.height * 0.5250039);
    path54.lineTo(size.width * 0.5742320, size.height * 0.5232442);
    path54.cubicTo(
        size.width * 0.5793039,
        size.height * 0.5179535,
        size.width * 0.5849150,
        size.height * 0.5134380,
        size.width * 0.5909346,
        size.height * 0.5098062);
    path54.cubicTo(
        size.width * 0.5812908,
        size.height * 0.5117132,
        size.width * 0.5718954,
        size.height * 0.5150930,
        size.width * 0.5629837,
        size.height * 0.5198643);
    path54.lineTo(size.width * 0.5624510, size.height * 0.5201512);
    path54.lineTo(size.width * 0.5619150, size.height * 0.5198566);
    path54.cubicTo(
        size.width * 0.5421013,
        size.height * 0.5089264,
        size.width * 0.5252418,
        size.height * 0.4916899,
        size.width * 0.5132157,
        size.height * 0.4700620);
    path54.cubicTo(
        size.width * 0.5011895,
        size.height * 0.4484380,
        size.width * 0.4944706,
        size.height * 0.4232791,
        size.width * 0.4938072,
        size.height * 0.3973915);
    path54.cubicTo(
        size.width * 0.4931438,
        size.height * 0.3715012,
        size.width * 0.4985621,
        size.height * 0.3459039,
        size.width * 0.5094608,
        size.height * 0.3234535);
    path54.cubicTo(
        size.width * 0.5203562,
        size.height * 0.3010027,
        size.width * 0.5363007,
        size.height * 0.2825826,
        size.width * 0.5555163,
        size.height * 0.2702484);
    path54.lineTo(size.width * 0.5555163, size.height * 0.2702484);
    path54.close();

    Paint paint54Fill = Paint()..style = PaintingStyle.fill;
    paint54Fill.color = const Color.fromRGBO(0, 0, 0, 0.16);
    canvas.drawPath(path54, paint54Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
