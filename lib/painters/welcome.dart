import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';

class WelcomePainter extends CustomPainter {
	WelcomePainter({Listenable? repaint}): super(repaint: repaint);

    @override
    void paint(Canvas canvas, Size size) {
        canvas.drawPath(
			Path()
				..moveTo(size.width*0.8127615,size.height*0.9978114)
				..lineTo(size.width*0.2103446,size.height*0.9978114)
				..lineTo(size.width*0.2103446,size.height*0.2778108)
				..cubicTo(size.width*0.2103446,size.height*0.1246251,size.width*0.3173308,0,size.width*0.4488359,0)
				..lineTo(size.width*0.5742718,0)
				..cubicTo(size.width*0.7057744,0,size.width*0.8127615,size.height*0.1246251,size.width*0.8127615,size.height*0.2778108)
				..lineTo(size.width*0.8127615,size.height*0.9978114)
				..close(),
			Paint()..color = const Color(0xFFF2F2F2)
		);

		canvas.drawPath(
			Path()
				..moveTo(size.width*0.6873282,size.height*0.9978114)
				..lineTo(size.width*0.2103449,size.height*0.9978114)
				..lineTo(size.width*0.2103449,size.height*0.2778114)
				..cubicTo(size.width*0.2102131,size.height*0.2191144,size.width*0.2261695,size.height*0.1619009,size.width*0.2558905,size.height*0.1145006)
				..cubicTo(size.width*0.2569872,size.height*0.1127614,size.width*0.2580795,size.height*0.1110443,size.width*0.2592051,size.height*0.1093461)
				..cubicTo(size.width*0.2735821,size.height*0.08738293,size.width*0.2906897,size.height*0.06804012,size.width*0.3099641,size.height*0.05195659)
				..cubicTo(size.width*0.3110538,size.height*0.05103353,size.width*0.3121462,size.height*0.05012695,size.width*0.3132564,size.height*0.04922006)
				..cubicTo(size.width*0.3293846,size.height*0.03621856,size.width*0.3468308,size.height*0.02559006,size.width*0.3652000,size.height*0.01757656)
				..cubicTo(size.width*0.3662897,size.height*0.01709497,size.width*0.3674000,size.height*0.01661246,size.width*0.3685103,size.height*0.01614964)
				..cubicTo(size.width*0.3851231,size.height*0.009243922,size.width*0.4023436,size.height*0.004513563,size.width*0.4198538,size.height*0.002045862)
				..cubicTo(size.width*0.4209385,size.height*0.001873120,size.width*0.4220538,size.height*0.001737949,size.width*0.4231692,size.height*0.001602772)
				..cubicTo(size.width*0.4402333,size.height*-0.0005225629,size.width*0.4574436,size.height*-0.0005225629,size.width*0.4745077,size.height*0.001602772)
				..cubicTo(size.width*0.4756179,size.height*0.001737949,size.width*0.4767333,size.height*0.001873105,size.width*0.4778308,size.height*0.002047713)
				..cubicTo(size.width*0.4953359,size.height*0.004515569,size.width*0.5125538,size.height*0.009245359,size.width*0.5291615,size.height*0.01614973)
				..cubicTo(size.width*0.5302718,size.height*0.01661254,size.width*0.5313821,size.height*0.01709503,size.width*0.5324769,size.height*0.01757754)
				..cubicTo(size.width*0.5506179,size.height*0.02548997,size.width*0.5678590,size.height*0.03595988,size.width*0.5838154,size.height*0.04875359)
				..cubicTo(size.width*0.5849256,size.height*0.04964072,size.width*0.5860333,size.height*0.05054731,size.width*0.5871282,size.height*0.05145419)
				..cubicTo(size.width*0.5979308,size.height*0.06043802,size.width*0.6080795,size.height*0.07044611,size.width*0.6174692,size.height*0.08137695)
				..cubicTo(size.width*0.6249974,size.height*0.09014461,size.width*0.6320128,size.height*0.09949072,size.width*0.6384692,size.height*0.1093518)
				..cubicTo(size.width*0.6395923,size.height*0.1110443,size.width*0.6406846,size.height*0.1127614,size.width*0.6417795,size.height*0.1144979)
				..cubicTo(size.width*0.6715026,size.height*0.1618985,size.width*0.6874590,size.height*0.2191132,size.width*0.6873282,size.height*0.2778114)
				..lineTo(size.width*0.6873282,size.height*0.9978114)
				..close(),
			Paint()..color = const Color(0xFFCCCCCC)
		);

		canvas.drawPath(
			Path()
				..moveTo(size.width*0.6485410,size.height*0.6757784)
				..cubicTo(size.width*0.6631256,size.height*0.6757784,size.width*0.6749487,size.height*0.6620090,size.width*0.6749487,size.height*0.6450180)
				..cubicTo(size.width*0.6749487,size.height*0.6280299,size.width*0.6631256,size.height*0.6142575,size.width*0.6485410,size.height*0.6142575)
				..cubicTo(size.width*0.6339564,size.height*0.6142575,size.width*0.6221333,size.height*0.6280299,size.width*0.6221333,size.height*0.6450180)
				..cubicTo(size.width*0.6221333,size.height*0.6620090,size.width*0.6339564,size.height*0.6757784,size.width*0.6485410,size.height*0.6757784)
				..close(),
			Paint()..color = const Color(0xffEF356A)
		);

		canvas.drawPath(
			Path()
				..moveTo(size.width*0.7634128,size.height*0.9762455)
				..lineTo(size.width*0.7431769,size.height*0.9762455)
				..lineTo(size.width*0.7335487,size.height*0.8853293)
				..lineTo(size.width*0.7634154,size.height*0.8853323)
				..lineTo(size.width*0.7634128,size.height*0.9762455)
				..close()
				..moveTo(size.width*0.7287231,size.height*0.9695090)
				..lineTo(size.width*0.7677462,size.height*0.9695090)
				..lineTo(size.width*0.7677462,size.height*0.9981317)
				..lineTo(size.width*0.7041538,size.height*0.9981317)
				..cubicTo(size.width*0.7041538,size.height*0.9943713,size.width*0.7047897,size.height*0.9906497,size.width*0.7060231,size.height*0.9871796)
				..cubicTo(size.width*0.7072590,size.height*0.9837066,size.width*0.7090667,size.height*0.9805509,size.width*0.7113487,size.height*0.9778922)
				..cubicTo(size.width*0.7136308,size.height*0.9752365,size.width*0.7163385,size.height*0.9731257,size.width*0.7193205,size.height*0.9716886)
				..cubicTo(size.width*0.7223026,size.height*0.9702515,size.width*0.7254974,size.height*0.9695090,size.width*0.7287231,size.height*0.9695090)
				..close()
				..moveTo(size.width*0.8640897,size.height*0.9762455)
				..lineTo(size.width*0.8438538,size.height*0.9762455)
				..lineTo(size.width*0.8342282,size.height*0.8853293)
				..lineTo(size.width*0.8640923,size.height*0.8853323)
				..lineTo(size.width*0.8640897,size.height*0.9762455)
				..close()
				..moveTo(size.width*0.8294026,size.height*0.9695090)
				..lineTo(size.width*0.8684256,size.height*0.9695090)
				..lineTo(size.width*0.8684256,size.height*0.9981317)
				..lineTo(size.width*0.8048308,size.height*0.9981317)
				..cubicTo(size.width*0.8048308,size.height*0.9943713,size.width*0.8054667,size.height*0.9906497,size.width*0.8067026,size.height*0.9871796)
				..cubicTo(size.width*0.8079359,size.height*0.9837066,size.width*0.8097462,size.height*0.9805509,size.width*0.8120282,size.height*0.9778922)
				..cubicTo(size.width*0.8143103,size.height*0.9752365,size.width*0.8170179,size.height*0.9731257,size.width*0.8200000,size.height*0.9716886)
				..cubicTo(size.width*0.8229795,size.height*0.9702515,size.width*0.8261744,size.height*0.9695090,size.width*0.8294026,size.height*0.9695090)
				..close(),
			Paint()..color = const Color(0xff2F2E41)
		);

		canvas.drawPath(
			Path()
				..moveTo(size.width*0.6619051,size.height*0.6511138)
				..cubicTo(size.width*0.6604513,size.height*0.6486138,size.width*0.6594821,size.height*0.6457754,size.width*0.6590718,size.height*0.6427934)
				..cubicTo(size.width*0.6586590,size.height*0.6398114,size.width*0.6588128,size.height*0.6367635,size.width*0.6595231,size.height*0.6338593)
				..cubicTo(size.width*0.6602333,size.height*0.6309551,size.width*0.6614821,size.height*0.6282665,size.width*0.6631795,size.height*0.6259850)
				..cubicTo(size.width*0.6648769,size.height*0.6237036,size.width*0.6669846,size.height*0.6218832,size.width*0.6693513,size.height*0.6206527)
				..lineTo(size.width*0.7381333,size.height*0.3998144)
				..lineTo(size.width*0.7719795,size.height*0.4213293)
				..lineTo(size.width*0.6934436,size.height*0.6323713)
				..cubicTo(size.width*0.6949538,size.height*0.6371407,size.width*0.6949128,size.height*0.6423892,size.width*0.6933231,size.height*0.6471257)
				..cubicTo(size.width*0.6917333,size.height*0.6518593,size.width*0.6887077,size.height*0.6557515,size.width*0.6848205,size.height*0.6580599)
				..cubicTo(size.width*0.6809333,size.height*0.6603713,size.width*0.6764538,size.height*0.6609401,size.width*0.6722308,size.height*0.6596587)
				..cubicTo(size.width*0.6680077,size.height*0.6583772,size.width*0.6643333,size.height*0.6553383,size.width*0.6619051,size.height*0.6511138)
				..close()
				..moveTo(size.width*0.8537538,size.height*0.6926108)
				..cubicTo(size.width*0.8515051,size.height*0.6911108,size.width*0.8495667,size.height*0.6890539,size.width*0.8480744,size.height*0.6865838)
				..cubicTo(size.width*0.8465821,size.height*0.6841138,size.width*0.8455718,size.height*0.6812934,size.width*0.8451179,size.height*0.6783234)
				..cubicTo(size.width*0.8446615,size.height*0.6753503,size.width*0.8447718,size.height*0.6722964,size.width*0.8454385,size.height*0.6693802)
				..cubicTo(size.width*0.8461051,size.height*0.6664611,size.width*0.8473154,size.height*0.6637485,size.width*0.8489795,size.height*0.6614341)
				..lineTo(size.width*0.8276692,size.height*0.4278263)
				..lineTo(size.width*0.8661872,size.height*0.4298743)
				..lineTo(size.width*0.8750436,size.height*0.6596617)
				..cubicTo(size.width*0.8781974,size.height*0.6631737,size.width*0.8801333,size.height*0.6679162,size.width*0.8804872,size.height*0.6729820)
				..cubicTo(size.width*0.8808410,size.height*0.6780479,size.width*0.8795872,size.height*0.6830898,size.width*0.8769641,size.height*0.6871527)
				..cubicTo(size.width*0.8743385,size.height*0.6912126,size.width*0.8705256,size.height*0.6940120,size.width*0.8662487,size.height*0.6950180)
				..cubicTo(size.width*0.8619718,size.height*0.6960269,size.width*0.8575256,size.height*0.6951707,size.width*0.8537538,size.height*0.6926108)
				..close()
				..moveTo(size.width*0.7923051,size.height*0.3589102)
				..cubicTo(size.width*0.8146923,size.height*0.3589102,size.width*0.8328410,size.height*0.3377695,size.width*0.8328410,size.height*0.3116916)
				..cubicTo(size.width*0.8328410,size.height*0.2856114,size.width*0.8146923,size.height*0.2644701,size.width*0.7923051,size.height*0.2644701)
				..cubicTo(size.width*0.7699179,size.height*0.2644701,size.width*0.7517692,size.height*0.2856114,size.width*0.7517692,size.height*0.3116916)
				..cubicTo(size.width*0.7517692,size.height*0.3377695,size.width*0.7699179,size.height*0.3589102,size.width*0.7923051,size.height*0.3589102)
				..close(),
			Paint()..color = const Color(0xFFFFB8B8)
		);

		canvas.drawPath(
			Path()
				..moveTo(size.width*0.8534949,size.height*0.6394790)
			    ..lineTo(size.width*0.7312821,size.height*0.6394790)
    			..lineTo(size.width*0.7314308,size.height*0.6383713)
 				..cubicTo(size.width*0.7316487,size.height*0.6367156,size.width*0.7532103,size.height*0.4721886,size.width*0.7373077,size.height*0.4183623)
    			..cubicTo(size.width*0.7357128,size.height*0.4130719,size.width*0.7358538,size.height*0.4072814,size.width*0.7377026,size.height*0.4021048)
				..cubicTo(size.width*0.7395513,size.height*0.3969281,size.width*0.7429795,size.height*0.3927335,size.width*0.7473256,size.height*0.3903234)
				..lineTo(size.width*0.7473256,size.height*0.3903234)
				..cubicTo(size.width*0.7700564,size.height*0.3778563,size.width*0.8136872,size.height*0.3625030,size.width*0.8505128,size.height*0.3997635)
				..cubicTo(size.width*0.8559308,size.height*0.4053353,size.width*0.8601641,size.height*0.4122994,size.width*0.8628744,size.height*0.4201078)
				..cubicTo(size.width*0.8655821,size.height*0.4279132,size.width*0.8666974,size.height*0.4363473,size.width*0.8661256,size.height*0.4447425)
				..lineTo(size.width*0.8534949,size.height*0.6394790)
				..close()
				..moveTo(size.width*0.7547538,size.height*0.4965030)
				..lineTo(size.width*0.6997333,size.height*0.4835000)
				..lineTo(size.width*0.7255256,size.height*0.4123084)
				..cubicTo(size.width*0.7270667,size.height*0.4054132,size.width*0.7308949,size.height*0.3995120,size.width*0.7361692,size.height*0.3958982)
				..cubicTo(size.width*0.7414436,size.height*0.3922874,size.width*0.7477308,size.height*0.3912605,size.width*0.7536538,size.height*0.3930419)
				..cubicTo(size.width*0.7595769,size.height*0.3948234,size.width*0.7646513,size.height*0.3992665,size.width*0.7677641,size.height*0.4054012)
				..cubicTo(size.width*0.7708795,size.height*0.4115359,size.width*0.7717769,size.height*0.4188563,size.width*0.7702615,size.height*0.4257605)
				..lineTo(size.width*0.7547538,size.height*0.4965030)
				..close()
				..moveTo(size.width*0.8252231,size.height*0.5206467)
				..lineTo(size.width*0.8219154,size.height*0.4323204)
				..cubicTo(size.width*0.8194077,size.height*0.4157186,size.width*0.8275667,size.height*0.4000210,size.width*0.8401154,size.height*0.3974551)
				..cubicTo(size.width*0.8526692,size.height*0.3949012,size.width*0.8649256,size.height*0.4064162,size.width*0.8674436,size.height*0.4231407)
				..lineTo(size.width*0.8798769,size.height*0.5056737)
				..lineTo(size.width*0.8252231,size.height*0.5206467)
				..close(),
			Paint()..color = const Color(0xffEF356A)
		);

		canvas.drawPath(
			Path()
				..moveTo(size.width*0.8494282,size.height*0.6289072)
				..cubicTo(size.width*0.8690923,size.height*0.7161467,size.width*0.8712385,size.height*0.8270629,size.width*0.8659333,size.height*0.9480509)
				..lineTo(size.width*0.8395256,size.height*0.9442066)
				..lineTo(size.width*0.7916615,size.height*0.7135000)
				..lineTo(size.width*0.7652538,size.height*0.9480509)
				..lineTo(size.width*0.7355462,size.height*0.9461287)
				..cubicTo(size.width*0.7266718,size.height*0.8191826,size.width*0.7180282,size.height*0.7102006,size.width*0.7322462,size.height*0.6385180)
				..lineTo(size.width*0.8494282,size.height*0.6289072)
				..close()
				..moveTo(size.width*0.8190154,size.height*0.3481826)
				..cubicTo(size.width*0.8114538,size.height*0.3575659,size.width*0.7974077,size.height*0.3525299,size.width*0.7964231,size.height*0.3397096)
				..cubicTo(size.width*0.7963462,size.height*0.3387156,size.width*0.7963513,size.height*0.3377126,size.width*0.7964410,size.height*0.3367186)
				..cubicTo(size.width*0.7969487,size.height*0.3310419,size.width*0.7997641,size.height*0.3258862,size.width*0.7990897,size.height*0.3198892)
				..cubicTo(size.width*0.7989385,size.height*0.3183982,size.width*0.7984615,size.height*0.3169760,size.width*0.7977026,size.height*0.3157575)
				..cubicTo(size.width*0.7916769,size.height*0.3063593,size.width*0.7775308,size.height*0.3199641,size.width*0.7718436,size.height*0.3114521)
				..cubicTo(size.width*0.7683564,size.height*0.3062365,size.width*0.7724564,size.height*0.2980201,size.width*0.7697795,size.height*0.2921883)
				..cubicTo(size.width*0.7662487,size.height*0.2844910,size.width*0.7557872,size.height*0.2882880,size.width*0.7492256,size.height*0.2840728)
				..cubicTo(size.width*0.7419256,size.height*0.2793826,size.width*0.7423615,size.height*0.2663368,size.width*0.7471667,size.height*0.2584015)
				..cubicTo(size.width*0.7530282,size.height*0.2487240,size.width*0.7633026,size.height*0.2435602,size.width*0.7734487,size.height*0.2428159)
				..cubicTo(size.width*0.7835949,size.height*0.2420716,size.width*0.7936718,size.height*0.2452668,size.width*0.8031436,size.height*0.2495668)
				..cubicTo(size.width*0.8139077,size.height*0.2544527,size.width*0.8245795,size.height*0.2612051,size.width*0.8312026,size.height*0.2722290)
				..cubicTo(size.width*0.8392564,size.height*0.2856356,size.width*0.8400333,size.height*0.3036587,size.width*0.8360051,size.height*0.3193353)
				..cubicTo(size.width*0.8335538,size.height*0.3288713,size.width*0.8251897,size.height*0.3405210,size.width*0.8190154,size.height*0.3481826)
				..close(),
			Paint()..color = const Color(0xff2F2E41)
		);


		canvas.drawPath(
			Path()
				..moveTo(size.width*1.168405,size.height*0.9990449)
				..lineTo(size.width*-0.05011769,size.height*0.9990449)
				..cubicTo(size.width*-0.05063769,size.height*0.9990449,size.width*-0.05113615,size.height*0.9988024,size.width*-0.05150359,size.height*0.9983743)
				..cubicTo(size.width*-0.05187077,size.height*0.9979431,size.width*-0.05207718,size.height*0.9973623,size.width*-0.05207718,size.height*0.9967575)
				..cubicTo(size.width*-0.05207718,size.height*0.9961527,size.width*-0.05187077,size.height*0.9955689,size.width*-0.05150359,size.height*0.9951407)
				..cubicTo(size.width*-0.05113615,size.height*0.9947126,size.width*-0.05063769,size.height*0.9944701,size.width*-0.05011769,size.height*0.9944671)
				..lineTo(size.width*1.168405,size.height*0.9944671)
				..cubicTo(size.width*1.168926,size.height*0.9944701,size.width*1.169423,size.height*0.9947126,size.width*1.169792,size.height*0.9951407)
				..cubicTo(size.width*1.170159,size.height*0.9955689,size.width*1.170364,size.height*0.9961527,size.width*1.170364,size.height*0.9967575)
				..cubicTo(size.width*1.170364,size.height*0.9973623,size.width*1.170159,size.height*0.9979431,size.width*1.169792,size.height*0.9983743)
				..cubicTo(size.width*1.169423,size.height*0.9988024,size.width*1.168926,size.height*0.9990449,size.width*1.168405,size.height*0.9990449)
				..close(),
			Paint()..color = const Color(0xff3F3D56)
		);

		canvas.drawPath(
			Path()
				..moveTo(size.width*0.5561154,size.height*0.7892126)
				..lineTo(size.width*0.3415564,size.height*0.7892126)
				..cubicTo(size.width*0.3387308,size.height*0.7892305,size.width*0.3360128,size.height*0.7879401,size.width*0.3340026,size.height*0.7856287)
				..cubicTo(size.width*0.3319923,size.height*0.7833174,size.width*0.3308487,size.height*0.7801707,size.width*0.3308282,size.height*0.7768772)
				..lineTo(size.width*0.3308282,size.height*0.2190087)
				..cubicTo(size.width*0.3308487,size.height*0.2157171,size.width*0.3319923,size.height*0.2125701,size.width*0.3340026,size.height*0.2102578)
				..cubicTo(size.width*0.3360128,size.height*0.2079455,size.width*0.3387308,size.height*0.2066569,size.width*0.3415564,size.height*0.2066749)
				..lineTo(size.width*0.5561154,size.height*0.2066749)
				..cubicTo(size.width*0.5589410,size.height*0.2066569,size.width*0.5616590,size.height*0.2079455,size.width*0.5636692,size.height*0.2102578)
				..cubicTo(size.width*0.5656795,size.height*0.2125701,size.width*0.5668205,size.height*0.2157171,size.width*0.5668436,size.height*0.2190087)
				..lineTo(size.width*0.5668436,size.height*0.7768772)
				..cubicTo(size.width*0.5668205,size.height*0.7801707,size.width*0.5656795,size.height*0.7833174,size.width*0.5636692,size.height*0.7856287)
				..cubicTo(size.width*0.5616590,size.height*0.7879401,size.width*0.5589410,size.height*0.7892305,size.width*0.5561154,size.height*0.7892126)
				..close(),
			Paint()..color = const Color(0xFFFFFFFF)
		);

		canvas.drawPath(
			Path()
				..moveTo(size.width*0.4084000,size.height*0.2066746)
				..lineTo(size.width*0.4051000,size.height*0.2066746)
				..lineTo(size.width*0.4051000,size.height*0.7911347)
				..lineTo(size.width*0.4084000,size.height*0.7911347)
				..lineTo(size.width*0.4084000,size.height*0.2066746)
				..close()
				..moveTo(size.width*0.4909231,size.height*0.2066746)
				..lineTo(size.width*0.4876205,size.height*0.2066746)
				..lineTo(size.width*0.4876205,size.height*0.7911347)
				..lineTo(size.width*0.4909231,size.height*0.7911347)
				..lineTo(size.width*0.4909231,size.height*0.2066746)
				..close()
				..moveTo(size.width*0.5676692,size.height*0.6065689)
				..lineTo(size.width*0.3316538,size.height*0.6065689)
				..lineTo(size.width*0.3316538,size.height*0.6104132)
				..lineTo(size.width*0.5676692,size.height*0.6104132)
				..lineTo(size.width*0.5676692,size.height*0.6065689)
				..close()
				..moveTo(size.width*0.5668436,size.height*0.3871826)
				..lineTo(size.width*0.3308282,size.height*0.3871826)
				..lineTo(size.width*0.3308282,size.height*0.3910299)
				..lineTo(size.width*0.5668436,size.height*0.3910299)
				..lineTo(size.width*0.5668436,size.height*0.3871826)
				..close(),
			Paint()..color = const Color(0xFFCCCCCC)
		);
	}

	@override
	bool shouldRepaint(covariant CustomPainter oldDelegate) {
    	return false;
	}
}