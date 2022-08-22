import 'package:otioemoemdartbasic/otioemoemdartbasic.dart' as otioemoemdartbasic;

void main(List<String> arguments) {
  String words="Hello world";
  int number=14;
  bool trueorfalse=true;
  dynamic anything=true;
  var anything2="Hello World";
  //cara comment pake "//" ga bakal di execute kalau pake comment

  //print
  print(number);//Dipake buat nunjukkin variable di atas di console dibawah

  // Kalau mau print variable + String gimana ???
  print("Umur Adik ${number} tahun");
  // atau pake + juga sabi tapi pake fungsi toString()
  print("Umur Adik "+ number.toString() + "Tahun");


  // Final v Const
  final a= 12;
  const b = 13;
  final lis1 = [1, 2, 3];// This is a list or array
  const lis2 = [5, 4, 6];

//here lis1 and lis2 containing address of another varible
//final:
//
  lis1.add (57) ;
  print (lis1); // op: [1,2,3, 57]
  // if we change lis1 value (i.e address) give error and
  // if we add value in lis1 no error
//
//   const: if we change lis2
//   value (i.e address) give error and
//   if we add value in lis2 get error
//
  lis2.add(57) ;
  print (lis2); // op: Uncaught Error: Unsupported operation: add
//.
//   lis1 = [5, 87]; //Error: Can't assign to the final variable //tidak bisa di reassign
// lis1=[5,871 ;
//   lis2 = [1, 21]; //op: Error: Can't assign to the const variable// tidak bisa di reassign
//lis2=1.211 :

// jadi perbedaannya apa??
// Final itu digunakan untuk value yang saat runtime belum diketahui sementara const digunakan untuk value yang sudah pasti diketahui
// misal untuk angka pi 3.14 sudah pasti maka gunakan const kalau ga ya pakai final
// final dipake buat bisa final date=DateTime.now() /// ini harus dihitung dulu
final date=DateTime.now();
print(date);
// const date2= DateTime.now();// Error


//Collections
List<dynamic> list1=[1,2,3,4,true,false,"Duar"];//buat naro list bisa data apa aja kalau dynamic
Map<String,dynamic> map1={/// key value // dipake di json biasanysa
  "date":true,

};
}
