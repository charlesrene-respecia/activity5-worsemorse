import 'dart:io';
import 'dart:core';

void main(){
    var morse_code = [".-", "-...", "-.-.", "-..", ".", "..-.",
                      "--.", "....", "..", ".---", "-.-", ".-..",
                      "--", "-.", "---", ".--.", "--.-", ".-.",
                      "...", "-", "..-", "...-", ".--", "-..-",
                      "-.--", "--.."];
    var english = ["A", "B", "C", "D", "E", "F",
                   "G", "H", "I", "J", "K", "L",
                   "M", "N", "O", "P", "Q", "R",
                   "S", "T", "U", "V", "W", "X",
                   "Y", "Z"];
    var str = stdin.readLineSync();
    morse_decode(str, "", morse_code, english);
}

void morse_decode(var rawString, var translatedString, var morse_code, var english){
  if(rawString.length == 0)
    print(translatedString);
  else{
    for(int i=0;i<26;i++){
      if(rawString.startsWith(morse_code[i])){
        var translated = translatedString + english[i];
        var rawStringLeft = rawString.substring(morse_code[i].length);
        morse_decode(rawStringLeft, translated, morse_code, english);
      }
    }
  }
}
