import 'package:json_annotation/json_annotation.dart';
part 'doctors.g.dart';

@JsonSerializable()
class DoctorsList {
  @JsonKey(name: 'doctors')
  List<DocterData> doctorsList;
  DoctorsList({this.doctorsList = const []});
  factory DoctorsList.fromJson(Map<String, dynamic> json) =>
      _$DoctorsListFromJson(json);
}

@JsonSerializable()
class DocterData {
  @JsonKey(name: '_id')
  String? id;
  @JsonKey(name: 'name')
  String? name;
  DocterData({
    this.id,
    this.name,
  });
  factory DocterData.fromJson(Map<String, dynamic> json) =>
      _$DocterDataFromJson(json);
}
