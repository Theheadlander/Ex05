// Copyright (c) 2015, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

/// The lists library.
library lists;

List flatten(List list) {
  var result = [];
  for (var e in list) {
    result.addAll(e);
  }
  return result;
}

int maxLength(List<String> list) => list.fold(0, (v,e) => v < e.length ? e.length : v);

dynamic max(List list) => list.reduce((v,e) => v.compareTo(e) == -1 ? e : v);


testlettres(text){

RegExp validationletters = new RegExp(r"[^a-z ]", caseSensitive: false); 

 var validation = (validationletters.allMatches(text).length == 0);

 return ('Cette phrase contient seulement des lettres et espaces: ${validation}');

}

tree (int heigth){
  for (int i = 1; i < heigth + 1 ; i++ ){
    var pyramide = "*" * (i * 2 - 1);
    print(pyramide + " ");
  }  while (heigth == heigth);
}

