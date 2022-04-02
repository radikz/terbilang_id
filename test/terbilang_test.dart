import 'package:flutter_test/flutter_test.dart';
import 'package:terbilang_id/terbilang_id.dart';

void main() {
  late Terbilang terbilang;

  setUp(() {
    terbilang = Terbilang();
  });

  group("Test terbilang", () {
    test('test satuan', () {
      expect(terbilang.terbilang(1), "Satu");
      expect(terbilang.terbilang(2), "Dua");
      expect(terbilang.terbilang(3), "Tiga");
      expect(terbilang.terbilang(4), "Empat");
      expect(terbilang.terbilang(5), "Lima");
      expect(terbilang.terbilang(6), "Enam");
      expect(terbilang.terbilang(7), "Tujuh");
      expect(terbilang.terbilang(8), "Delapan");
      expect(terbilang.terbilang(9), "Sembilan");
      expect(terbilang.terbilang(0), "");
    });

    test("test belasan", () {
      expect(terbilang.terbilang(11).toLowerCase(), "sebelas");
      expect(terbilang.terbilang(12).toLowerCase(), "dua belas");
      expect(terbilang.terbilang(13).toLowerCase(), "tiga belas");
      expect(terbilang.terbilang(14).toLowerCase(), "empat belas");
      expect(terbilang.terbilang(15).toLowerCase(), "lima belas");
      expect(terbilang.terbilang(16).toLowerCase(), "enam belas");
      expect(terbilang.terbilang(17).toLowerCase(), "tujuh belas");
      expect(terbilang.terbilang(18).toLowerCase(), "delapan belas");
      expect(terbilang.terbilang(19).toLowerCase(), "sembilan belas");
    });

    test("test puluhan", () {
      expect(terbilang.terbilang(10).toLowerCase(), "sepuluh");
      expect(terbilang.terbilang(20).toLowerCase(), "dua puluh");
      expect(terbilang.terbilang(21).toLowerCase(), "dua puluh satu");
      expect(terbilang.terbilang(30).toLowerCase(), "tiga puluh");
      expect(terbilang.terbilang(32).toLowerCase(), "tiga puluh dua");
      expect(terbilang.terbilang(40).toLowerCase(), "empat puluh");
      expect(terbilang.terbilang(43).toLowerCase(), "empat puluh tiga");
      expect(terbilang.terbilang(50).toLowerCase(), "lima puluh");
      expect(terbilang.terbilang(54).toLowerCase(), "lima puluh empat");
      expect(terbilang.terbilang(60).toLowerCase(), "enam puluh");
      expect(terbilang.terbilang(65).toLowerCase(), "enam puluh lima");
      expect(terbilang.terbilang(70).toLowerCase(), "tujuh puluh");
      expect(terbilang.terbilang(76).toLowerCase(), "tujuh puluh enam");
      expect(terbilang.terbilang(80).toLowerCase(), "delapan puluh");
      expect(terbilang.terbilang(87).toLowerCase(), "delapan puluh tujuh");
      expect(terbilang.terbilang(90).toLowerCase(), "sembilan puluh");
      expect(terbilang.terbilang(98).toLowerCase(), "sembilan puluh delapan");
    });

    test("test ratusan", () {
      expect(terbilang.terbilang(100).toLowerCase(), "seratus");
      expect(terbilang.terbilang(105).toLowerCase(), "seratus lima");
      expect(terbilang.terbilang(117).toLowerCase(), "seratus tujuh belas");
      expect(terbilang.terbilang(200).toLowerCase(), "dua ratus");
      expect(terbilang.terbilang(210).toLowerCase(), "dua ratus sepuluh");
      expect(terbilang.terbilang(211).toLowerCase(), "dua ratus sebelas");
      expect(terbilang.terbilang(215).toLowerCase(), "dua ratus lima belas");
      expect(terbilang.terbilang(300).toLowerCase(), "tiga ratus");
      expect(terbilang.terbilang(320).toLowerCase(), "tiga ratus dua puluh");
      expect(terbilang.terbilang(400).toLowerCase(), "empat ratus");
      expect(terbilang.terbilang(430).toLowerCase(), "empat ratus tiga puluh");
      expect(terbilang.terbilang(500).toLowerCase(), "lima ratus");
      expect(terbilang.terbilang(540).toLowerCase(), "lima ratus empat puluh");
      expect(terbilang.terbilang(600).toLowerCase(), "enam ratus");
      expect(terbilang.terbilang(650).toLowerCase(), "enam ratus lima puluh");
      expect(terbilang.terbilang(700).toLowerCase(), "tujuh ratus");
      expect(terbilang.terbilang(760).toLowerCase(), "tujuh ratus enam puluh");
      expect(terbilang.terbilang(800).toLowerCase(), "delapan ratus");
      expect(
          terbilang.terbilang(870).toLowerCase(), "delapan ratus tujuh puluh");
      expect(terbilang.terbilang(900).toLowerCase(), "sembilan ratus");
      expect(terbilang.terbilang(980).toLowerCase(),
          "sembilan ratus delapan puluh");
    });

    test("test ribuan", () {
      expect(terbilang.terbilang(1000).toLowerCase(), "seribu");
      expect(terbilang.terbilang(1010).toLowerCase(), "seribu sepuluh");
      expect(terbilang.terbilang(1001).toLowerCase(), "seribu satu");
      expect(terbilang.terbilang(2000).toLowerCase(), "dua ribu");
      expect(terbilang.terbilang(2100).toLowerCase(), "dua ribu seratus");
      expect(terbilang.terbilang(2010).toLowerCase(), "dua ribu sepuluh");
      expect(
          terbilang.terbilang(2110).toLowerCase(), "dua ribu seratus sepuluh");
      expect(
          terbilang.terbilang(2111).toLowerCase(), "dua ribu seratus sebelas");
      expect(terbilang.terbilang(2121).toLowerCase(),
          "dua ribu seratus dua puluh satu");
      expect(terbilang.terbilang(2001).toLowerCase(), "dua ribu satu");
      expect(terbilang.terbilang(3000).toLowerCase(), "tiga ribu");
      expect(terbilang.terbilang(3200).toLowerCase(), "tiga ribu dua ratus");
      expect(terbilang.terbilang(4000).toLowerCase(), "empat ribu");
      expect(terbilang.terbilang(4300).toLowerCase(), "empat ribu tiga ratus");
      expect(terbilang.terbilang(5000).toLowerCase(), "lima ribu");
      expect(terbilang.terbilang(5400).toLowerCase(), "lima ribu empat ratus");
      expect(terbilang.terbilang(6000).toLowerCase(), "enam ribu");
      expect(terbilang.terbilang(6500).toLowerCase(), "enam ribu lima ratus");
      expect(terbilang.terbilang(7000).toLowerCase(), "tujuh ribu");
      expect(terbilang.terbilang(7600).toLowerCase(), "tujuh ribu enam ratus");
      expect(terbilang.terbilang(8000).toLowerCase(), "delapan ribu");
      expect(
          terbilang.terbilang(8700).toLowerCase(), "delapan ribu tujuh ratus");
      expect(terbilang.terbilang(9000).toLowerCase(), "sembilan ribu");
      expect(terbilang.terbilang(9800).toLowerCase(),
          "sembilan ribu delapan ratus");
    });

    test("test puluhan ribu", () {
      expect(terbilang.terbilang(10000).toLowerCase(), "sepuluh ribu");
      expect(terbilang.terbilang(11000).toLowerCase(), "sebelas ribu");
      expect(terbilang.terbilang(11100).toLowerCase(), "sebelas ribu seratus");
      expect(terbilang.terbilang(11110).toLowerCase(),
          "sebelas ribu seratus sepuluh");
      expect(terbilang.terbilang(11111).toLowerCase(),
          "sebelas ribu seratus sebelas");
      expect(terbilang.terbilang(13000).toLowerCase(), "tiga belas ribu");
      expect(terbilang.terbilang(13130).toLowerCase(),
          "tiga belas ribu seratus tiga puluh");
      expect(terbilang.terbilang(22000).toLowerCase(), "dua puluh dua ribu");
      expect(terbilang.terbilang(22130).toLowerCase(),
          "dua puluh dua ribu seratus tiga puluh");
      expect(terbilang.terbilang(22200).toLowerCase(),
          "dua puluh dua ribu dua ratus");
      expect(terbilang.terbilang(22220).toLowerCase(),
          "dua puluh dua ribu dua ratus dua puluh");
      expect(terbilang.terbilang(22212).toLowerCase(),
          "dua puluh dua ribu dua ratus dua belas");
      expect(terbilang.terbilang(22222).toLowerCase(),
          "dua puluh dua ribu dua ratus dua puluh dua");
    });

    test("test ratusan ribu", () {
      expect(terbilang.terbilang(100000).toLowerCase(), "seratus ribu");
      expect(terbilang.terbilang(101000).toLowerCase(), "seratus satu ribu");
      expect(terbilang.terbilang(110000).toLowerCase(), "seratus sepuluh ribu");
      expect(terbilang.terbilang(111000).toLowerCase(), "seratus sebelas ribu");
      expect(terbilang.terbilang(111100).toLowerCase(),
          "seratus sebelas ribu seratus");
      expect(terbilang.terbilang(111110).toLowerCase(),
          "seratus sebelas ribu seratus sepuluh");
      expect(terbilang.terbilang(111111).toLowerCase(),
          "seratus sebelas ribu seratus sebelas");
      expect(terbilang.terbilang(111119).toLowerCase(),
          "seratus sebelas ribu seratus sembilan belas");
      expect(
          terbilang.terbilang(130000).toLowerCase(), "seratus tiga puluh ribu");
      expect(terbilang.terbilang(131000).toLowerCase(),
          "seratus tiga puluh satu ribu");
      expect(terbilang.terbilang(131100).toLowerCase(),
          "seratus tiga puluh satu ribu seratus");
      expect(terbilang.terbilang(131130).toLowerCase(),
          "seratus tiga puluh satu ribu seratus tiga puluh");
      expect(terbilang.terbilang(131131).toLowerCase(),
          "seratus tiga puluh satu ribu seratus tiga puluh satu");
      expect(
          terbilang.terbilang(210000).toLowerCase(), "dua ratus sepuluh ribu");
      expect(terbilang.terbilang(220000).toLowerCase(),
          "dua ratus dua puluh ribu");
      expect(terbilang.terbilang(220020).toLowerCase(),
          "dua ratus dua puluh ribu dua puluh");
      expect(terbilang.terbilang(220002).toLowerCase(),
          "dua ratus dua puluh ribu dua");
      expect(terbilang.terbilang(220012).toLowerCase(),
          "dua ratus dua puluh ribu dua belas");
    });

    test("test jutaan", () {
      expect(terbilang.terbilang(1000000).toLowerCase(), "satu juta");
      expect(terbilang.terbilang(1001000).toLowerCase(), "satu juta satu ribu");
      expect(
          terbilang.terbilang(1100000).toLowerCase(), "satu juta seratus ribu");
      expect(terbilang.terbilang(1110000).toLowerCase(),
          "satu juta seratus sepuluh ribu");
      expect(terbilang.terbilang(1111000).toLowerCase(),
          "satu juta seratus sebelas ribu");
      expect(terbilang.terbilang(1111100).toLowerCase(),
          "satu juta seratus sebelas ribu seratus");
      expect(terbilang.terbilang(1111110).toLowerCase(),
          "satu juta seratus sebelas ribu seratus sepuluh");
      expect(terbilang.terbilang(1111111).toLowerCase(),
          "satu juta seratus sebelas ribu seratus sebelas");
      expect(terbilang.terbilang(1111115).toLowerCase(),
          "satu juta seratus sebelas ribu seratus lima belas");
      expect(terbilang.terbilang(1111116).toLowerCase(),
          "satu juta seratus sebelas ribu seratus enam belas");
      expect(terbilang.terbilang(1111119).toLowerCase(),
          "satu juta seratus sebelas ribu seratus sembilan belas");
      expect(
          terbilang.terbilang(3100000).toLowerCase(), "tiga juta seratus ribu");
      expect(terbilang.terbilang(3130000).toLowerCase(),
          "tiga juta seratus tiga puluh ribu");
      expect(terbilang.terbilang(5000000).toLowerCase(), "lima juta");
      expect(terbilang.terbilang(5200000).toLowerCase(),
          "lima juta dua ratus ribu");
      expect(terbilang.terbilang(5220000).toLowerCase(),
          "lima juta dua ratus dua puluh ribu");
      expect(terbilang.terbilang(5222000).toLowerCase(),
          "lima juta dua ratus dua puluh dua ribu");
      expect(terbilang.terbilang(5222200).toLowerCase(),
          "lima juta dua ratus dua puluh dua ribu dua ratus");
      expect(terbilang.terbilang(5222220).toLowerCase(),
          "lima juta dua ratus dua puluh dua ribu dua ratus dua puluh");
      expect(terbilang.terbilang(5222222).toLowerCase(),
          "lima juta dua ratus dua puluh dua ribu dua ratus dua puluh dua");
    });

    test("test puluhan juta", () {
      expect(terbilang.terbilang(10000000).toLowerCase(), "sepuluh juta");
      expect(terbilang.terbilang(10100000).toLowerCase(),
          "sepuluh juta seratus ribu");
      expect(terbilang.terbilang(10110000).toLowerCase(),
          "sepuluh juta seratus sepuluh ribu");
      expect(terbilang.terbilang(10111000).toLowerCase(),
          "sepuluh juta seratus sebelas ribu");
      expect(terbilang.terbilang(10111100).toLowerCase(),
          "sepuluh juta seratus sebelas ribu seratus");
      expect(terbilang.terbilang(10111110).toLowerCase(),
          "sepuluh juta seratus sebelas ribu seratus sepuluh");
      expect(terbilang.terbilang(10111111).toLowerCase(),
          "sepuluh juta seratus sebelas ribu seratus sebelas");
      expect(terbilang.terbilang(10111115).toLowerCase(),
          "sepuluh juta seratus sebelas ribu seratus lima belas");
      expect(terbilang.terbilang(10111116).toLowerCase(),
          "sepuluh juta seratus sebelas ribu seratus enam belas");
      expect(terbilang.terbilang(10111119).toLowerCase(),
          "sepuluh juta seratus sebelas ribu seratus sembilan belas");
      expect(terbilang.terbilang(30100000).toLowerCase(),
          "tiga puluh juta seratus ribu");
      expect(terbilang.terbilang(31100000).toLowerCase(),
          "tiga puluh satu juta seratus ribu");
      expect(terbilang.terbilang(30130000).toLowerCase(),
          "tiga puluh juta seratus tiga puluh ribu");
      expect(terbilang.terbilang(50000000).toLowerCase(), "lima puluh juta");
      expect(terbilang.terbilang(50200000).toLowerCase(),
          "lima puluh juta dua ratus ribu");
      expect(terbilang.terbilang(50220000).toLowerCase(),
          "lima puluh juta dua ratus dua puluh ribu");
      expect(terbilang.terbilang(50222000).toLowerCase(),
          "lima puluh juta dua ratus dua puluh dua ribu");
      expect(terbilang.terbilang(50222200).toLowerCase(),
          "lima puluh juta dua ratus dua puluh dua ribu dua ratus");
      expect(terbilang.terbilang(50222220).toLowerCase(),
          "lima puluh juta dua ratus dua puluh dua ribu dua ratus dua puluh");
      expect(terbilang.terbilang(50222222).toLowerCase(),
          "lima puluh juta dua ratus dua puluh dua ribu dua ratus dua puluh dua");
    });

    test("test ratusan juta", () {
      expect(terbilang.terbilang(100000000).toLowerCase(), "seratus juta");
      expect(terbilang.terbilang(100100000).toLowerCase(),
          "seratus juta seratus ribu");
      expect(terbilang.terbilang(100110000).toLowerCase(),
          "seratus juta seratus sepuluh ribu");
      expect(terbilang.terbilang(100111000).toLowerCase(),
          "seratus juta seratus sebelas ribu");
      expect(terbilang.terbilang(100111100).toLowerCase(),
          "seratus juta seratus sebelas ribu seratus");
      expect(terbilang.terbilang(100111110).toLowerCase(),
          "seratus juta seratus sebelas ribu seratus sepuluh");
      expect(terbilang.terbilang(100111111).toLowerCase(),
          "seratus juta seratus sebelas ribu seratus sebelas");
      expect(terbilang.terbilang(100111115).toLowerCase(),
          "seratus juta seratus sebelas ribu seratus lima belas");
      expect(terbilang.terbilang(100111116).toLowerCase(),
          "seratus juta seratus sebelas ribu seratus enam belas");
      expect(terbilang.terbilang(100111119).toLowerCase(),
          "seratus juta seratus sebelas ribu seratus sembilan belas");
      expect(terbilang.terbilang(130000000).toLowerCase(),
          "seratus tiga puluh juta");
      expect(terbilang.terbilang(131000000).toLowerCase(),
          "seratus tiga puluh satu juta");
      expect(terbilang.terbilang(131130000).toLowerCase(),
          "seratus tiga puluh satu juta seratus tiga puluh ribu");
      expect(terbilang.terbilang(300100000).toLowerCase(),
          "tiga ratus juta seratus ribu");
      expect(terbilang.terbilang(301100000).toLowerCase(),
          "tiga ratus satu juta seratus ribu");
      expect(terbilang.terbilang(300130000).toLowerCase(),
          "tiga ratus juta seratus tiga puluh ribu");
      expect(terbilang.terbilang(500000000).toLowerCase(), "lima ratus juta");
      expect(terbilang.terbilang(500200000).toLowerCase(),
          "lima ratus juta dua ratus ribu");
      expect(terbilang.terbilang(500220000).toLowerCase(),
          "lima ratus juta dua ratus dua puluh ribu");
      expect(terbilang.terbilang(500222000).toLowerCase(),
          "lima ratus juta dua ratus dua puluh dua ribu");
      expect(terbilang.terbilang(500222200).toLowerCase(),
          "lima ratus juta dua ratus dua puluh dua ribu dua ratus");
      expect(terbilang.terbilang(500222220).toLowerCase(),
          "lima ratus juta dua ratus dua puluh dua ribu dua ratus dua puluh");
      expect(terbilang.terbilang(500222222).toLowerCase(),
          "lima ratus juta dua ratus dua puluh dua ribu dua ratus dua puluh dua");
    });

    test("test miliaran", () {
      expect(terbilang.terbilang(1000000000).toLowerCase(), "satu miliar");
      expect(terbilang.terbilang(1001000000).toLowerCase(),
          "satu miliar satu juta");
      expect(terbilang.terbilang(1000100000).toLowerCase(),
          "satu miliar seratus ribu");
      expect(terbilang.terbilang(1010000000).toLowerCase(),
          "satu miliar sepuluh juta");
      expect(terbilang.terbilang(1013000000).toLowerCase(),
          "satu miliar tiga belas juta");
      expect(terbilang.terbilang(1100000000).toLowerCase(),
          "satu miliar seratus juta");
      expect(terbilang.terbilang(1110000000).toLowerCase(),
          "satu miliar seratus sepuluh juta");
      expect(terbilang.terbilang(1111000000).toLowerCase(),
          "satu miliar seratus sebelas juta");
      expect(terbilang.terbilang(1113000000).toLowerCase(),
          "satu miliar seratus tiga belas juta");
      expect(terbilang.terbilang(1111100000).toLowerCase(),
          "satu miliar seratus sebelas juta seratus ribu");
      expect(terbilang.terbilang(1111110000).toLowerCase(),
          "satu miliar seratus sebelas juta seratus sepuluh ribu");
      expect(terbilang.terbilang(1111111000).toLowerCase(),
          "satu miliar seratus sebelas juta seratus sebelas ribu");
      expect(terbilang.terbilang(1111111100).toLowerCase(),
          "satu miliar seratus sebelas juta seratus sebelas ribu seratus");
      expect(terbilang.terbilang(1111111110).toLowerCase(),
          "satu miliar seratus sebelas juta seratus sebelas ribu seratus sepuluh");
      expect(terbilang.terbilang(1111111111).toLowerCase(),
          "satu miliar seratus sebelas juta seratus sebelas ribu seratus sebelas");
      expect(terbilang.terbilang(2000000000).toLowerCase(), "dua miliar");
      expect(terbilang.terbilang(2200000000).toLowerCase(),
          "dua miliar dua ratus juta");
      expect(terbilang.terbilang(2220000000).toLowerCase(),
          "dua miliar dua ratus dua puluh juta");
      expect(terbilang.terbilang(2222000000).toLowerCase(),
          "dua miliar dua ratus dua puluh dua juta");
      expect(terbilang.terbilang(2222200000).toLowerCase(),
          "dua miliar dua ratus dua puluh dua juta dua ratus ribu");
      expect(terbilang.terbilang(2222220000).toLowerCase(),
          "dua miliar dua ratus dua puluh dua juta dua ratus dua puluh ribu");
    });

    test("test puluhan miliar", () {
      expect(terbilang.terbilang(10000000000).toLowerCase(), "sepuluh miliar");
      expect(terbilang.terbilang(10100000000).toLowerCase(),
          "sepuluh miliar seratus juta");
      expect(terbilang.terbilang(10130000000).toLowerCase(),
          "sepuluh miliar seratus tiga puluh juta");
      expect(terbilang.terbilang(10010000000).toLowerCase(),
          "sepuluh miliar sepuluh juta");
      expect(terbilang.terbilang(10000100000).toLowerCase(),
          "sepuluh miliar seratus ribu");
      expect(terbilang.terbilang(10100000300).toLowerCase(),
          "sepuluh miliar seratus juta tiga ratus");
      expect(terbilang.terbilang(20100000300).toLowerCase(),
          "dua puluh miliar seratus juta tiga ratus");
      expect(terbilang.terbilang(30120000300).toLowerCase(),
          "tiga puluh miliar seratus dua puluh juta tiga ratus");
      expect(terbilang.terbilang(30111000300).toLowerCase(),
          "tiga puluh miliar seratus sebelas juta tiga ratus");
      expect(terbilang.terbilang(99999999999).toLowerCase(),
          "sembilan puluh sembilan miliar sembilan ratus sembilan puluh sembilan juta sembilan ratus sembilan puluh sembilan ribu sembilan ratus sembilan puluh sembilan");
    });

    test("test ratusan miliar", () {
      expect(terbilang.terbilang(100000000000).toLowerCase(), "seratus miliar");
      expect(terbilang.terbilang(101000000000).toLowerCase(),
          "seratus satu miliar");
      expect(terbilang.terbilang(100130000000).toLowerCase(),
          "seratus miliar seratus tiga puluh juta");
      expect(terbilang.terbilang(100100000000).toLowerCase(),
          "seratus miliar seratus juta");
      expect(terbilang.terbilang(111001000000).toLowerCase(),
          "seratus sebelas miliar satu juta");
      expect(terbilang.terbilang(100100000120).toLowerCase(),
          "seratus miliar seratus juta seratus dua puluh");
      expect(terbilang.terbilang(201000000300).toLowerCase(),
          "dua ratus satu miliar tiga ratus");
      expect(terbilang.terbilang(301200000300).toLowerCase(),
          "tiga ratus satu miliar dua ratus juta tiga ratus");
      expect(terbilang.terbilang(301110003000).toLowerCase(),
          "tiga ratus satu miliar seratus sepuluh juta tiga ribu");
      expect(terbilang.terbilang(999999999999).toLowerCase(),
          "sembilan ratus sembilan puluh sembilan miliar sembilan ratus sembilan puluh sembilan juta sembilan ratus sembilan puluh sembilan ribu sembilan ratus sembilan puluh sembilan");
    });
  });
}
