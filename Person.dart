abstract class Person {
  int id;
  String name;

  Person(this.id, this.name);

  @override
  String toString() {
    return 'ID: $id, Name: $name';
  }
}
