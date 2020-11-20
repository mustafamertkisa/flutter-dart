import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Color(0xff252062),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "FalAPP",
        ),
        backgroundColor: Color(0xff252062),
      ),
      body: falUygulamam(),
    ),
  ));
}

class falUygulamam extends StatefulWidget {
  @override
  _falUygulamamState createState() => _falUygulamamState();
}

int falNo = 0;

class _falUygulamamState extends State<falUygulamam> {
  @override
  Widget build(BuildContext context) {
    List<String> fallar = [
      'İstediğin duruma tıkla falın gelsin!',
      'AŞK: Bugün, aşk ve ilişki hayatınızda biraz daha temkinli olmalısın. Onu her konuda doğru anlamda anladığından da emin misin?',
      'AŞK: Aşk ve ilişki hayatınızda hakimiyeti eline almak ve birlikteliğinizi dilediğiniz gibi yönlendirmek isteyebilirsin. Bu isteğinin denge içerisindeki bir ilişkiye ne şekilde fayda edeceğini gözden geçirmelisin.',
      'AŞK: Duygularınızın bugün biraz düzensiz olduğunu görebilirsiniz. Güne, daha önce hiç yapmadığınız bir şekilde başlamanızı sağlayan doğal bir elektrik hissi var. Kalbiniz her zaman doğruyu söyler.',
      'AŞK: Duygularınız çoğu zaman rasyonel düşüncelerinize galip geliyor ve sonunda derinlerde duyguların beslediği bir karmaşa ortaya çıkıyor. Çok da mantıklı düşünerek kalbinizi görmezden gelmeyin. Amacınız bu ikisi arasında dengeyi bulmak.',
      'AŞK: Duygusal olarak kötü hissetmeyin, sezgileriniz güçlü durumda. Sevgilinizin hislerini bu sezgiler ile anlamaya çalışın. Bazen sadece eğlenmek gerekir, siz de rahatlayın ve birlikte eğlenin!',
      'PARA: Kafanıza uzun süredir koyduğunuz bazı harcamalar var, bugün kendinize bunlara gerçekten ne kadar ihtiyacınız olduğunu sorun ve bir kısmını iptal edin. Bugün bir hayır kurumuna küçücük bir bağış yapın, kendinizi çok daha iyi hissedeceksiniz.',
      'PARA: Nakit akışınızın dengesini bozabilecek dönemlere giriyoruz, bu aralar kesinlikle masa başına oturup bir bütçe hesabı yapmalısınız, önümüzdeki 3 ay boyunca gelir gider dengenizden emin olmadan hareket etmeyin',
      'PARA: Bugün, başkalarına yardım, destek ve hizmet duygunuzun yüksek olduğu bir gün olabilir, hayır, bağış işlerinde yer alabilirsiniz.',
      'PARA: Bugün kendinize güveniniz oldukça yüksek, ancak bu size pek fayda getirmeyebilir, bağlantılarınız size verdikleri destekten şüphelenebilirler. Sakin hareket edin, bir adım geri durun, ve paradan çok sağlığınızla ilgilenin.',
      'PARA: Para kaynaklarımız ile ilgili detaylar bu dönem dikkat etmelisiniz. Ayrıca maddi konularda ve harcamalarda uzun süredir sizi meşgul eden bir konuda karara varabilirsiniz, yakınlarınızdan veya eşinizden karar alırken yardım isteyin.',
      'ÖNERİ: Bugün meraklı kişiliğini ön plana çıkartarak insanlara soru sormaktan çekinme ',
      'ÖNERİ: Bugün daha önce hiç fark etmediğin şeylerin hep orada olduğunu fark edebilirsin, sadece biraz daha dikkatli olmaya çalış',
      'ÖNERİ: Bugün ikili ilişkilerinde daha aktif ve verici olmaya çalışabilirsin, aynı fikirde olduğun insanları daha dikkatli dinlemeye ve sorgulamaya başla',
      'ÖNERİ: Bugün sadece işine odaklan, dikkatini dağıtacak her türlü nesne ve sosyal medyadan uzaklaşmak kendini daha mutlu hissettirebilir',
      'ÖNERİ: Bugün tek başına biraz yürüyüş yap, çocukluğunda dinlediğin şarkıları aç ve o zamanlar oynadığın oyunları hayal et'
    ];

    return SafeArea(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              radius: 70.0,
              backgroundColor: Color(0xff252062),
              backgroundImage: AssetImage("images/ft.jpg"),
            ),
            SizedBox(
              height: 30.0,
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(
                horizontal: 45.0,
              ),
              child: ListTile(
                leading: Icon(
                  Icons.favorite,
                  color: Colors.redAccent,
                ),
                title: Text(
                  "AŞK",
                  style: TextStyle(
                    color: Colors.redAccent,
                    fontSize: 20.0,
                  ),
                ),
                onTap: () {
                  setState(() {
                    falNo = Random().nextInt(5) + 1;
                  });
                },
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(
                horizontal: 45.0,
              ),
              child: ListTile(
                leading: Icon(
                  Icons.shopping_basket,
                  color: Colors.lightGreen,
                ),
                title: Text(
                  "PARA",
                  style: TextStyle(
                    color: Colors.lightGreen,
                    fontSize: 20.0,
                  ),
                ),
                onTap: () {
                  setState(() {
                    falNo = Random().nextInt(5) + 6;
                  });
                },
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Card(
              color: Colors.white,
              margin: EdgeInsets.symmetric(
                horizontal: 45.0,
              ),
              child: ListTile(
                leading: Icon(
                  Icons.assistant,
                  color: Colors.orange,
                ),
                title: Text(
                  "ÖNERİ",
                  style: TextStyle(
                    color: Colors.orange,
                    fontSize: 20.0,
                  ),
                ),
                onTap: () {
                  setState(() {
                    falNo = Random().nextInt(5) + 11;
                  });
                },
              ),
            ),
            Container(
              width: 200,
              child: Divider(
                color: Colors.white,
                height: 40.0,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 25),
              height: 150,
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 5.0,
                  horizontal: 20.0,
                ),
                child: Text(
                  fallar[falNo],
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
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
