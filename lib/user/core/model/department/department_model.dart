import 'package:json_annotation/json_annotation.dart';
part 'department_model.g.dart';

@JsonSerializable()
class DepartmentsInfo {
  @JsonKey(name: 'departments')
  List<DepartmentData> departments;
  DepartmentsInfo({this.departments = const []});
  factory DepartmentsInfo.fromJson(Map<String, dynamic> json) =>
      _$DepartmentsInfoFromJson(json);
}

@JsonSerializable()
class DepartmentData {
  @JsonKey(name: '_id')
  String? id;
  @JsonKey(name: 'name')
  String? name;
  @JsonKey(name: 'hospitalId')
  List<String>? hopitalid;
  DepartmentData({this.id, this.name, this.hopitalid});
  factory DepartmentData.fromJson(Map<String, dynamic> json) =>
      _$DepartmentDataFromJson(json);
}
