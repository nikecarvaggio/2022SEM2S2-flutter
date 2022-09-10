class OperationController {
  String addOperation(String data) {
    if (data.contains("[sqrt(,]")) {
      return "presiono raiz";
    }
    return data;
  }
}
