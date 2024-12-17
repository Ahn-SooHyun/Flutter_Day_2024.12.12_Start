void main() {
  //배열.
  //같은 타입의 집합.

  // Dart에서는 이러한 배열을 `List`로 표현한다.
  // 메모리상에 연속적으로 배치되어 있는 자료형.

  // 제네릭(Generic) 타입을 활용한 List 선언
  // <제네릭> // <원하는 타입> 정의해서
  List<String> lists = [];

  // List<String> lists1 = null;
  // Dart null-safety 특징으로 인해서, 기본적으로 null 값을 할당할 수 없다.

  // List<String>? lists2; // null을 허용하는 리스트 선언.
  // null을 허용하려면, 타입 뒤에 `?`를 명시한다.
  
  //JavaScript에서도 사용할 수 있다.
  
  lists = ['Apple', 'Banana'];

  // 일반 for문을 사용해서 리스트의 원소를 출력
  for(int i = 0; i < lists.length; i++) {
    print('lists의 값 : ${lists[i]}');
  }

  //값이 존재한다면, 이렇게 값을 전달 가능.
  // 기존 배열/리스트로부터 새로운 List를 생성할 수 있다.
  var arr = [1, 2, 3];
  List<int> lists3 = List.from(arr);
  
  //foreach
  // JS(React), Java(JPA) .map
  // forEach를 사용한 반복
  // forEach는 각 원소를 순회하며 인자로 받은 함수를 실행한다.
  lists3.forEach((item) {
    print('값 : ${item}');
  });

  lists3.add(4);  //추가
  // lists3.remove(4);  //삭제

  // .map 메서드는 Iterable을 반환하며, 리스트의 각 요소에 대한 변환을 할 수 있다.
  // 주의: map은 원본 리스트를 변경하지 않는다.
  // item += 1000은 실행되지만, map의 결과를 다시 리스트나 변수에 담지 않으면 반영되지 않는다.

  var a1 = lists3.map( (item) => {
    // 이 부분은 단지 map의 결과로 새로운 Iterable<int>를 생성하지만,
    // 결과를 할당하지 않으므로 원본 lists3는 변화가 없다.
    item += 1000
  });

  // List가 값미 머떻게 생졌는지 조회
  // 다시 forEach를 돌려보면, 원본 lists3 값은 여전히 [1, 2, 3, 4]
  a1.forEach(print); // class는 (변수)값이 모인 집합
  // (변수) => 변하는 값 X
  // 실제적인 데이터가 있는 주소를 저장한 값.

  //2024 - 30 ; 1984
  final List<int> years =  List.generate(30, (index) => 1984 + index);
  years.forEach(print);
  //생년 월일
  // for(var i = 1990; i < 2024; i++) {
  //   years.add(i);
  // }
}