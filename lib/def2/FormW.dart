import 'package:flutter/material.dart';

class Formw extends StatefulWidget {
  const Formw({super.key});

  @override
  State<Formw> createState() => _FormwState();
}

class _FormwState extends State<Formw> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('폼 입력 예제')),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _TextArea(),  //TextField
              _SliderArea(), //Slider
              _RadioArea(), // Radiockat
              _CheckBox() //CheckBox
              

            ],
          )
        ],
      ),
    );
  }
}

class _TextArea extends StatefulWidget {
  const _TextArea({super.key});

  @override
  State<_TextArea> createState() => _FormAreaState();
}

class _FormAreaState extends State<_TextArea> {
  String? _userName = null;
  String? _userPassWord = null;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Text Field
        Container(
          width: 200, // 적절한 너비 지정
          child: TextFormField(
            decoration: InputDecoration(
              labelText: '이름 입력하기',
            ),
            keyboardType: TextInputType.visiblePassword,
            onChanged: (value) {
              print('${value}');
              setState(() {
                _userName = value ?? '';
              });
            },
          ),
        ),

        Container(
          width: 200, // 적절한 너비 지정
          child: TextFormField(
            decoration: InputDecoration(
              labelText: '비밀번호 입력하기',
            ),
            obscureText: true,
            keyboardType: TextInputType.text,
            onChanged: (value) {
              print('${value}');
              setState(() {
                _userPassWord = value ?? '';
              });
            },
          ),
        ),
        ElevatedButton(onPressed: () {
          print("==============================");
          print('userID : ${_userName}');
          print('userPW : ${_userPassWord}');

        }, child: Text('체크!'))
      ],
    );
  }
}

class _SliderArea extends StatefulWidget {
  const _SliderArea({super.key});

  @override
  State<_SliderArea> createState() => _SliderAreaState();
}

class _SliderAreaState extends State<_SliderArea> {
  double _PhoneNumber = 1000000000.0;

  @override
  Widget build(BuildContext context) {
    return Slider(value: _PhoneNumber, onChanged: (value) {
      setState(() {
        _PhoneNumber = value;
      });
    },
      min: 1000000000,
      max: 1099999999,
      divisions: 99999999,
      label: _PhoneNumber.toStringAsFixed(0),
    );
  }
}

class _RadioArea extends StatefulWidget {
  const _RadioArea({super.key});

  @override
  State<_RadioArea> createState() => _RadioAreaState();
}

class _RadioAreaState extends State<_RadioArea> {

  List<String> cities = ['서울',  '대전', '부산', '인천']; // radio를 구성하는 목록
  String? _citieValue = null; // 사용자가 선택한 도시이름

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ...cities.map(
                (city) {

              bool _isSelectedCity = (city == _citieValue);


              return Row(
                children: [
                  Radio<String> (
                    value: city,
                    groupValue: _citieValue,
                    activeColor: Colors.greenAccent, // Radio Button 클릭된 것, 색상 변경
                    onChanged: (value) {
                      setState(() {
                        _citieValue = value ?? '서울';
                      });
                    },
                  ),
                  Text(city,
                    style: TextStyle(
                        fontSize: 20,
                        color:  _isSelectedCity ? Colors.red : Colors.black26,
                        fontWeight: _isSelectedCity ? FontWeight.bold : FontWeight.normal
                    ),)

                ],
              );
            }
        )
      ],
    );
  }
}

class _CheckBox extends StatefulWidget {
  const _CheckBox({super.key});

  @override
  State<_CheckBox> createState() => _CheckBoxState();
}

class _CheckBoxState extends State<_CheckBox> {
  List<String> _hobbys = ['코딩', '독서', '운동', '수영', '제작'];
  Map<String, bool> _selectedHobbys = {}; // MAP 기본 표시

  @override
  void initState() {
    print('init');
    // TODO: implement deactivate
    super.deactivate();

    for(var h in _hobbys) {
      _selectedHobbys[h] = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [ ..._hobbys.map(
        (hobby) {
          bool _isSelected = _selectedHobbys[hobby] ?? false;

          return Row(
            children: [
              Checkbox(
                value: _isSelected,
                activeColor: Colors.green,
                onChanged: (value) {
                  setState(() {
                    _selectedHobbys[hobby] = value ?? false;
                  });
                }
              ),
              Text(hobby,
                style: TextStyle(
                    fontSize: 20,
                    color: _isSelected ? Colors.red : Colors.black26,
                    fontWeight: _isSelected ? FontWeight.bold : FontWeight.normal
                ),
              )
            ],
          );
        }),
      ],
    );
  }
}
