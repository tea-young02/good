import 'package:flutter/material.dart';
import 'package:good/common/compoent/custom_text_form_field.dart';

void main(){
  runApp(
    _App(),
  );
}

class _App extends StatelessWidget {
  const _App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {   //라우팅을 할 때 필요한 경우  ㅇ
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Customtextformfield(
                hintText: '이메일을 입력해주세요',
                onChanged: (String value) {  },
              ),
              Customtextformfield(
                hintText: '비밀번호를 입력해주세요',
                onChanged: (String value) {  },
                obscureText: true,  // 비밀번호
              ),
            ],
          ),
        ),

      ),
    );
  }
}
