class Ques {
  Ques(this.ques, this.ans);

  String ques;
  List<String> ans;
  List<String> getShuffled() {
    List<String> shuffled = List.from(ans);
    shuffled.shuffle();
    return shuffled;
  }
}
/* 
 List<String> get ShuffleAnswers {
    List<String> shuffled = List.from(ans);
    shuffled.shuffle();
    return shuffled;
  }
}
Here if we see get is t a dart fuc that give s is used when a func is just changing the values of a particular data type
and  

*/