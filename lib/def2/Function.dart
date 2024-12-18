void main() {
  print('실행 Check');

  int result = addPlus(1000, 333);
  print('result : ${result}');

  int result2 = addPlus2(
      num1: 10,
      num2: 300
  );
  print('result2 : ${result2}');

  int result3 = addPlus2(
      num1: 500,
      num2: 10
  );
  print('result3 : ${result3}');

  int result4 = defaultPlus(
    200, 200
  );
  print('result4 : ${result4}');

  int result5 = defaultPlus(
      200
  );
  print('result5 : ${result5}');
  
  int result6 = defaultPlus2(num1: 123, num2: 321, num3: 500);
  print('result6 : ${result6}');

  int result7 = defaultPlus2(num1: 123, num2: 321);
  print('result7 : ${result7}');

}

//가장 잘 아는 함수
int addPlus(int num1, int num2) {
  return num1 + num2;
}

//dart의 기능, requierd ★★★★★★★
int addPlus2(
      {
       required int num1,
       required int num2
      }
    ) {
  print('num1 : ${num1}');
  return num1 + num2;
}


//default 설정
int defaultPlus(int num1, [int num2 = 1000]) {
  return num1 + num2;
}

//default + required 설정
int defaultPlus2({
  required int num1,
  required int num2,
  int num3 = 0
}) {
  return num1 + num2 + num3;
}

//설명
//익명, 람다
// ☆람다
//() => 한 줄 코딩,
// - ';' 세미클론이 없다.
// - 함수 명이 존재 하지 않는다.

//() {여러 줄 코딩 }
// - 함수 명이 존재하지 않는다.
// - 일회성 코드 ( 재활용 X )
// - if, for, 여러 연산자를 사용할 때 이용된다.
// - 프로세스 기능을 활용.

//객체지향언어
// - 재활용 코드( 유지보수를 위해서 사용된다.
// - 실행활 코드에서 한다 ?
// - Java, 정보처리기사 시험 볼때. (SOLID)

// - 너부 분활해서, 관리하기 어려워진다.

//★★★★★★★★★★★★★★★
// - 가독성만 높아주면 장땡