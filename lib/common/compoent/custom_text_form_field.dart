import 'package:flutter/material.dart';
import 'package:good/common/const/colors.dart';

class Customtextformfield extends StatelessWidget {
  final String? hintText;
  final String? errorText;
  final bool obscureText;
  final bool aotofocus;
  final ValueChanged<String>? onChanged;


  const Customtextformfield({
    required this.onChanged,
    this.aotofocus = false,
    this.obscureText = false,
    this.hintText,
    this.errorText,

    Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final baseBoder = OutlineInputBorder(
      borderSide: BorderSide(
        color: INPUT_BORDER_COLOR,
        width: 1.0,
      ),
    );

    return TextFormField(
      cursorColor: PRIMARY_COLOR ,
      // 비밀번호를 입력할 때
      obscureText: obscureText ,
      autofocus: aotofocus,
      onChanged: onChanged,    // 받아 올 때 마다 값이 바뀌는 값
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(20),
        hintText: hintText,
        errorText: errorText,
        hintStyle: TextStyle(
          color: BODY_TEXT_COLOR,
          fontSize: 14.0,
        ),
        fillColor: INPUT_BG_COLOR,
        filled: true, // false - 배경색 없음, ture - 배경색 있음
        border: baseBoder, // 모든 INPUT 상태의 기본 셋팅
        focusedBorder: baseBoder.copyWith(
          borderSide: baseBoder.borderSide.copyWith(
            color: PRIMARY_COLOR
          ),
        ),
      ),
    );
  }
}
