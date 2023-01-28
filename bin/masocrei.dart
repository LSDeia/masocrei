import 'package:masocrei/message.dart';

void main(List<String> arguments) {
  Message decoded = Message("aujourd'hui il fait moche et froid");
  Message encoded = decoded.encode();

  print("Results");
  print("-------------------------");
  print("INPUT : ${decoded.text}");
  print("OUTPUT : ${encoded.text}");
}
