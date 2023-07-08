String returnPaddedString(int count) {
  String padString = '';
  //
  int padBit = 10 - count.toString().length;

  //
  for (int i = 0; i < padBit; i++) {
    padString += '0';
  }
  //
  padString += count.toString();
  return padString;
}
