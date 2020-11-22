import 'package:bilgi_yarismasi/soruYanit.dart';

class YarismaVerileri {
  int _soruNo = 0;

  List<SoruYanit> _soruHavuzu = [
    SoruYanit(
        soruMetni: "Fındığın Başkenti olarak tanınan ilimiz Giresun'dur.",
        soruYanit: true),
    SoruYanit(
        soruMetni: "Türkiye Cumhuriyeti 1920 yılında kurulmuştur.",
        soruYanit: false),
    SoruYanit(
        soruMetni: "Tavşanlar kafalarını çevirmeden arkalarını görebilir.",
        soruYanit: true),
    SoruYanit(soruMetni: "İlk eğitilen hayvan kedidir.", soruYanit: false),
    SoruYanit(
        soruMetni: "Su aygırları üzüldüklerinde terleri kırmızı renk alır.",
        soruYanit: true),
    SoruYanit(
        soruMetni: "NBA'nin en çok şampiyon olan takımı Chicago Bulls'tur.",
        soruYanit: false),
    SoruYanit(
        soruMetni:
            "Gıda renklendiricileri eklenmeseydi eğer, kolanın rengi yeşil olurdu.",
        soruYanit: true)
  ];

  String getsoruMetni() {
    return _soruHavuzu[_soruNo].soruMetni;
  }

  bool getSoruYanit() {
    return _soruHavuzu[_soruNo].soruYanit;
  }

  void sonrakiSoru() {
    if (_soruNo < _soruHavuzu.length - 1) _soruNo++;
  }

  bool sorularBittiMi() {
    if (_soruNo >= _soruHavuzu.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void soruNoSifirla() {
    _soruNo = 0;
  }
}
