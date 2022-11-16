import 'dart:developer';
import 'dart:io';

void main() {
  var a = DotEnv();
  var data = a.read(".env");

  for (MapEntry content in data.entries) {
    log("${content.key} = ${content.value} : ${content.value.runtimeType}");
  }
}

class DotEnv {
  Map<String, dynamic> read(String path) {
    File file = File(path);
    Map<String, dynamic> aux = {};
    String? initString;
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
        if (initString != null) {
          if (lineAux[letra] == initString) {
            inString = false;
          }
        } else {
          if (lineAux[letra] == '"' || lineAux[letra] == "'") {
            initString = lineAux[letra];
            inString = true;
          }
        }

        if (!inString) {
          if (lineAux[letra] == "#") {
            contentSplited[1] =
                contentSplited[1].substring(0, letra).toString().trim();
            break;
          }
        }
      }

      aux.putIfAbsent(contentSplited[0], () => contentSplited[1]);

      // convertendo pra int ou double
      var converted = num.tryParse(aux[contentSplited[0]]);
      if (converted != null) {
        aux[contentSplited[0]] = converted;
      }

      // convertendo pra boolean
      if (aux[contentSplited[0]] == "true") {
        aux[contentSplited[0]] = true;
      } else if (aux[contentSplited[0]] == "false") {
        aux[contentSplited[0]] = false;
      }
    }

    return aux;
  }
}
