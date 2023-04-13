MathPractice cevreHesaplama = new MathPractice();
Decimal dikdortgenCevre = cevreHesaplama.practiceOne(12.58, 15.88);
System.debug('Dikdörtgenin çevre uzunluğu ' + dikdortgenCevre);
//* 6 nisan ödevi


//9 Nisan ödevi
MathPractice vki =new MathPractice();
Decimal indeks = vki.practiceTwo(1.78, 85.5);
System.debug('VKI ' + indeks.setScale(2));//sayının ondalık kısmını 2 haneli yaptık.
// System.debug('VKI ' + vki.practiceTwo(1.78, 85.5));şeklinde de yazılabilir.

MathPractice mp4 =new MathPractice();
mp4.practiceFour(-50);
mp4.practiceFour(30);
mp4.practiceFour(100);
mp4.practiceFour(300);
mp4.practiceFour(750);


MathPractice mp5 = new MathPractice();
mp5.practiceFive(10, 'EKMEK');
mp5.practiceFive(8, 'SİMİT');
mp5.practiceFive(5, 'KEK');
mp5.practiceFive(10, 'Poğaça');