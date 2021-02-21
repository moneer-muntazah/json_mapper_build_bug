import 'package:dart_json_mapper/dart_json_mapper.dart';

@jsonSerializable
@Json(name: 'MyModule')
class MyModule {
  @JsonProperty(name: 'my_id')
  int id;
}