class Message {
  String text;

  Message(this.text);

  Message encode() {
    int length = text.length;
    List<String> encoded = List.empty(growable: true);
    List<int> index = Iterable<int>.generate(length).toList();
    int idx;
    int value;

    for (int i = 0; i < length; i++) {
      idx = ((index.length - 1) / 2).floor();
      value = index[idx];
      index.remove(value);
      encoded.add(text[value]);
    }
    return Message(encoded.join());
  }
}
