void outer(String name, String id) {
  String inner() {
    List<String> nameSplit = name.split(" ");
    String lastName = nameSplit[1][0].toUpperCase();
    String firstName = nameSplit[0];
    String message = "Hello Agent $lastName.$firstName your id is $id";
    return message;
  }
  print(inner());
}
