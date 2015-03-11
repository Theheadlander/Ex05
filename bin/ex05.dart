// Copyright (c) 2015, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import '../lib/lists.dart';


String phrase = "Je suis en programme international";


  
String fn02a() {
  var listofLists= 
      [
       ['Tu as deux bonbons', 'Tu as 2 bonbons'],
       ['Tu as quatre bonbons', 'Tu as 4 bonbons'],
       ['Tu as quarante-cinq bonbons', 'Tu as 40 bonbons'],
       ];
  List sentences = flatten(listofLists);
  return (sentences.join('; '));
}

List fn02b() {
  String phrases = fn02a();
  List listofsentences = phrases.split('; ');
  return listofsentences; 
}

fn02c (){
  List Sentencelist = fn02b();
  int maxLength = 0;
  String maxLengthSentence;
  for (var sentence in Sentencelist ) {
    if(maxLength < sentence.length) {
      maxLength = sentence.length;
      maxLengthSentence = sentence;
    }
  }
  return maxLengthSentence;
}

String fn03a() {
  var listofLists= 
      [
       ['Je', 'suis'],
       ['en', 'programme'],
       ['international', '.'],
       ];
  List phrase = flatten(listofLists);
  return (phrase.join(' '));
}

List fn03b() {
  String words = fn03a();
  List phrase = words.split(' ');
  return phrase;  
}

fn03c (){
  List phrase = fn03b();
  int maxLength = 0;
  String maxLengthword;
  for (var word in phrase ) {
    if(maxLength < word.length) {
      maxLength = word.length;
      maxLengthword = word;
    }
  }
  return maxLengthword;
}


String timetables(int a, int n){
  var result='';
  for(int i=1; i<=n; i++) {
    result='$result $a x $i = ${a*i}\n';
  }
  return result;
}



void main (){
  
  print('Ex05 1)');
  print(phrase);
  print(testlettres(phrase));
  print('Ex05 2) Liste de phrases = ${fn02a()}');
  print('Ex05 2) Phrase la plus longue = ${fn02c()}');
  print('Ex05 3) La phrase = ${fn03a()}');
  print('Ex05 3) Le mot le plus long de la phrase = ${fn03c()}');
  print('Ex05 4) = 8 times table of 10 terms: \n ${timetables(8,10)}');
  print('Ex05 5) : Arbre à 5 étages \n');
  print(tree(5));
  print('Ex05 5)b) : Arbre à 10 étages \n');
  print(tree(10));
  
  
}









