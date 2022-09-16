import 'package:function_tree/function_tree.dart';

class OperationController {
  Map addOperation(String data) {
    return {"operation":data, "result":Calculate(data)};
  }

  String Calculate(String operation){
    try {
      return operation.interpret().toString();
    } catch (e) {
      return operation="Error"; 
    }
  }

  String addOperation2(String data) {
    String lastValue=data.substring(data.length-1,data.length);
    if (lastValue.contains("sqrt(")||lastValue.contains("+")||lastValue.contains("-")||lastValue.contains("*")||lastValue.contains("/")) {
      print("ya hay un signo");
      if(data.substring(0,data.length-2).contains(new RegExp(r'[0-9]'))){
        data=data.substring(0,data.length-1)+lastValue;
      }
      else{
        data=data.substring(0,data.length-1)+lastValue;
      }
    }
    return data;
  }
}
