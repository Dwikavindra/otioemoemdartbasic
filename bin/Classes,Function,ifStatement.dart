
// Defining class

// Class itu seperti blueprint yang bisa dipake ulang ulang dalemnya ada macem macem fungsi dan variable,
// tujuannya ada class supaya code bisa dipake ulang ulang jadi ga harus rewrite
class Student {
  var stdName;
  var stdAge;
  var stdRoll_nu;

  // Class Function
  // sama kayak fungsi di matematika, gunanya fungsi adalah untuk mengubah suatu input menjadi suatu output yang diinginkan
  void showStdInfo() {
    print("Student Name is : ${stdName}");
    print("Student Age is : ${stdAge}");
    print("Student Roll Number is : ${stdRoll_nu}";
    }


  void setStudentName(String name){//bisa ada parameternya kayak fungsi matematika kalau ada f(x,y) ya x dan y adalah parameternya yang harus diisi
    stdName=name;
    print(stdName);
  }

  String getStudentName(){//bisa ngereturn suatu tipe. kalau pake tipe di depannya wajib ada returnya
    return stdName;
  }
  //Parameternya bisa optional alias ga wajib cth
  //Tipe 1
  //positional optional parameter
  //sesuai posisi
    //misal cuman rollnumber aja yang wajib,
    // wajib setelah yang wajib kalau optional
    // dikasih default karena ga boleh Null
  void changeStudentInfo(int Roll_Number,[String name="",int age=0]){
    stdRoll_nu=Roll_Number;
    stdName=name;
    stdAge=age;
    showStdInfo();
  }
  //named optional parameter beda dicara pemanggilan dan sekarang ketauan apa aja yang perlu diisi;


    void changeStudentInfo2(int Roll_Number,{String name="",int age=0}){// default valuenya bisa diilangin kalau dia nullable
      stdRoll_nu=Roll_Number;
      stdName=name;
      stdAge=age;
      showStdInfo();
    }

    //Constructor jadi pas pertama kali diinstansi itu bisa juga dikasih parameter misal dari pas awal udh mau ngisi data Student biar lebih efektif aja
  // pas awal wajib diisi semua
Student(this.stdName, this.stdRoll_nu, this.stdAge);

//Factory
  //mau ada yang di edit misal Agenya  kamu pake Korean age jadi harus ditambah +1 itu bisa
  //karena tadi itu parameter parameternya bisa diubah juga pake optional kalau mau
// tapi kamu juga mau ada Student ga pake Korean Age, alias pake normal age yaudh bikin aja factory
factory Student.koreanAge(String stdName,int stdRoll_nu,int stdAge){
    var age=stdAge+1;
    return Student(stdName,stdRoll_nu,age);
}
  }//ga mau change semuanya tapi tetep ada beberapa yang mau diganti

void helloworld(){// Apakah function butuh class jawabannya adalah tidak bisa sendiri tapi suka dikelompokin biar make sense dan rapih
}

void main(List<String> arguments) {
  var student1= new Student("Pesulap Merah",2,26);// membuat instance baru//ini constructor namnya
  //apakah bisa dipake buat kalau misal ada siswa baru Sabi
  var student2=new Student("Samsuddin",1,33);
  print(student1==student2);//false karena beda

  student1.setStudentName("Dwika");
  student1.changeStudentInfo(1,"Dwika",10);
  student1.changeStudentInfo2(1,name:"Dwika",age:10);//bedanya ini ada namanya lebih sering kepake yang ini
  print(student1.getStudentName());
  //cara akses komponen di dalemnya adalah dengan pakai ./titik baik itu buat variablenya atau  function yang ada di dalemnya
  //Factory//
  var student3= new Student.koreanAge("Jennie Black Pink", 20, 26);
}