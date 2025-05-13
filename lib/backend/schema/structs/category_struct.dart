// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class CategoryStruct extends FFFirebaseStruct {
  CategoryStruct({
    int? id,
    String? name,
    String? image,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _name = name,
        _image = image,
        super(firestoreUtilData);

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;

  bool hasImage() => _image != null;

  static CategoryStruct fromMap(Map<String, dynamic> data) => CategoryStruct(
        id: castToType<int>(data['id']),
        name: data['name'] as String?,
        image: data['image'] as String?,
      );

  static CategoryStruct? maybeFromMap(dynamic data) =>
      data is Map ? CategoryStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'name': _name,
        'image': _image,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
      }.withoutNulls;

  static CategoryStruct fromSerializableMap(Map<String, dynamic> data) =>
      CategoryStruct(
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CategoryStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CategoryStruct &&
        id == other.id &&
        name == other.name &&
        image == other.image;
  }

  @override
  int get hashCode => const ListEquality().hash([id, name, image]);
}

CategoryStruct createCategoryStruct({
  int? id,
  String? name,
  String? image,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CategoryStruct(
      id: id,
      name: name,
      image: image,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CategoryStruct? updateCategoryStruct(
  CategoryStruct? category, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    category
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCategoryStructData(
  Map<String, dynamic> firestoreData,
  CategoryStruct? category,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (category == null) {
    return;
  }
  if (category.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && category.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final categoryData = getCategoryFirestoreData(category, forFieldValue);
  final nestedData = categoryData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = category.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCategoryFirestoreData(
  CategoryStruct? category, [
  bool forFieldValue = false,
]) {
  if (category == null) {
    return {};
  }
  final firestoreData = mapToFirestore(category.toMap());

  // Add any Firestore field values
  category.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCategoryListFirestoreData(
  List<CategoryStruct>? categorys,
) =>
    categorys?.map((e) => getCategoryFirestoreData(e, true)).toList() ?? [];
