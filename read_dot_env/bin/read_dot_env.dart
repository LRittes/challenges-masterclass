import 'dart:io';

void main() {
  var a = ReadDotEnv(".env");
  a.read();
}

class ReadDotEnv {
  final String path;

  ReadDotEnv(this.path);

  // Map<String, dynamic>
  void read() {
    File file = File(path);
    Map aux = {};
    bool inString = false;

    var fileContent = file.readAsLinesSync();

    for (String line in fileContent) {
      line = line.trim();
      if (line.isEmpty) continue;
      if (line[0] == "#") continue;
      List contentSplited = line.split("=");
      if (contentSplited.length < 2) continue;
      contentSplited[1] = contentSplited.sublist(1).join("=");
      String lineAux = contentSplited[1];
      for (int letra = 0; letra < lineAux.length; letra++) {
        if (lineAux[letra] == '"') inString = !inString;
        if (!inString) {
          if (lineAux[letra] == "#") {
            contentSplited[1] =
                contentSplited[1].substring(0, letra).toString().trim();
            break;
          }
        }
      }

      if (contentSplited[1]) {
        // Saber se é dos tipos primitivos e converter
      }

      aux.putIfAbsent(contentSplited[0], () => contentSplited[1]);
    }

    print(aux);

    // for (var item in aux.entries) {
    // }
  }
}
