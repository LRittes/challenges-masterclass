/*
Ex:
[
   Obj(id: “jshshe”, name: “A”, parentId: “iwndmn“),
   Obj(id: “urodne”, name: “A”, parentId: “qerispf”),
   Obj(id: “oqndie”, name: “A”, parentId: null),
   Obj(id: “iwndmn”, name: “A”, parentId: “oqndie”),
   Obj(id: “qienfiw”, name: “A”, parentId: “urodne”),
   Obj(id: “qerispf”, name: “A”, parentId: “jshshe”),
];
*/

void main() {
  // var list2 = <OBJ>[...list.map((e) => null)];
  print(sort(list));
}

class OBJ {
  final String id;
  final String name;
  String? parentID;

  OBJ({required this.id, required this.name, this.parentID});

  @override
  String toString() {
    return "OBJ: id: $id, name: $name, parentID: $parentID";
  }
}

List<OBJ> sort(List<OBJ> list) {
  List<OBJ> aux = [];
  int count = 0;
  while (count < list.length) {
    if (aux.isEmpty) {
      aux.add(list[list.indexWhere((element) => element.parentID == null)]);
    } else {
      aux.add(list[
          list.indexWhere((element) => element.parentID == aux[count - 1].id)]);
    }
    count++;
  }
  return aux;
}

var list = <OBJ>[
  OBJ(id: "jshshe", name: "A", parentID: "iwndmn"),
  OBJ(id: "urodne", name: "A", parentID: "qerispf"),
  OBJ(id: "oqndie", name: "A", parentID: null),
  OBJ(id: "iwndmn", name: "A", parentID: "oqndie"),
  OBJ(id: "qienfiw", name: "A", parentID: "urodne"),
  OBJ(id: "qerispf", name: "A", parentID: "jshshe"),
  OBJ(id: "aaa", name: "A", parentID: "qienfiw"),
];
