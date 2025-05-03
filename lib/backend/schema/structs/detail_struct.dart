// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class DetailStruct extends FFFirebaseStruct {
  DetailStruct({
    int? prid,
    int? id,
    String? image,
    String? title,
    String? price,
    String? catetype,
    bool? isFav,
    bool? isJust,
    bool? isNew,
    bool? isCart,
    bool? isColor,
    String? isResult,
    bool? itsResult,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _prid = prid,
        _id = id,
        _image = image,
        _title = title,
        _price = price,
        _catetype = catetype,
        _isFav = isFav,
        _isJust = isJust,
        _isNew = isNew,
        _isCart = isCart,
        _isColor = isColor,
        _isResult = isResult,
        _itsResult = itsResult,
        super(firestoreUtilData);

  // "prid" field.
  int? _prid;
  int get prid => _prid ?? 0;
  set prid(int? val) => _prid = val;

  void incrementPrid(int amount) => prid = prid + amount;

  bool hasPrid() => _prid != null;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;

  bool hasImage() => _image != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "price" field.
  String? _price;
  String get price => _price ?? '';
  set price(String? val) => _price = val;

  bool hasPrice() => _price != null;

  // "catetype" field.
  String? _catetype;
  String get catetype => _catetype ?? '';
  set catetype(String? val) => _catetype = val;

  bool hasCatetype() => _catetype != null;

  // "is_fav" field.
  bool? _isFav;
  bool get isFav => _isFav ?? false;
  set isFav(bool? val) => _isFav = val;

  bool hasIsFav() => _isFav != null;

  // "is_just" field.
  bool? _isJust;
  bool get isJust => _isJust ?? false;
  set isJust(bool? val) => _isJust = val;

  bool hasIsJust() => _isJust != null;

  // "is_new" field.
  bool? _isNew;
  bool get isNew => _isNew ?? false;
  set isNew(bool? val) => _isNew = val;

  bool hasIsNew() => _isNew != null;

  // "is_cart" field.
  bool? _isCart;
  bool get isCart => _isCart ?? false;
  set isCart(bool? val) => _isCart = val;

  bool hasIsCart() => _isCart != null;

  // "is_color" field.
  bool? _isColor;
  bool get isColor => _isColor ?? false;
  set isColor(bool? val) => _isColor = val;

  bool hasIsColor() => _isColor != null;

  // "is_result" field.
  String? _isResult;
  String get isResult => _isResult ?? '';
  set isResult(String? val) => _isResult = val;

  bool hasIsResult() => _isResult != null;

  // "its_result" field.
  bool? _itsResult;
  bool get itsResult => _itsResult ?? false;
  set itsResult(bool? val) => _itsResult = val;

  bool hasItsResult() => _itsResult != null;

  static DetailStruct fromMap(Map<String, dynamic> data) => DetailStruct(
        prid: castToType<int>(data['prid']),
        id: castToType<int>(data['id']),
        image: data['image'] as String?,
        title: data['title'] as String?,
        price: data['price'] as String?,
        catetype: data['catetype'] as String?,
        isFav: data['is_fav'] as bool?,
        isJust: data['is_just'] as bool?,
        isNew: data['is_new'] as bool?,
        isCart: data['is_cart'] as bool?,
        isColor: data['is_color'] as bool?,
        isResult: data['is_result'] as String?,
        itsResult: data['its_result'] as bool?,
      );

  static DetailStruct? maybeFromMap(dynamic data) =>
      data is Map ? DetailStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'prid': _prid,
        'id': _id,
        'image': _image,
        'title': _title,
        'price': _price,
        'catetype': _catetype,
        'is_fav': _isFav,
        'is_just': _isJust,
        'is_new': _isNew,
        'is_cart': _isCart,
        'is_color': _isColor,
        'is_result': _isResult,
        'its_result': _itsResult,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'prid': serializeParam(
          _prid,
          ParamType.int,
        ),
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
        'image': serializeParam(
          _image,
          ParamType.String,
        ),
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'price': serializeParam(
          _price,
          ParamType.String,
        ),
        'catetype': serializeParam(
          _catetype,
          ParamType.String,
        ),
        'is_fav': serializeParam(
          _isFav,
          ParamType.bool,
        ),
        'is_just': serializeParam(
          _isJust,
          ParamType.bool,
        ),
        'is_new': serializeParam(
          _isNew,
          ParamType.bool,
        ),
        'is_cart': serializeParam(
          _isCart,
          ParamType.bool,
        ),
        'is_color': serializeParam(
          _isColor,
          ParamType.bool,
        ),
        'is_result': serializeParam(
          _isResult,
          ParamType.String,
        ),
        'its_result': serializeParam(
          _itsResult,
          ParamType.bool,
        ),
      }.withoutNulls;

  static DetailStruct fromSerializableMap(Map<String, dynamic> data) =>
      DetailStruct(
        prid: deserializeParam(
          data['prid'],
          ParamType.int,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
        image: deserializeParam(
          data['image'],
          ParamType.String,
          false,
        ),
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        price: deserializeParam(
          data['price'],
          ParamType.String,
          false,
        ),
        catetype: deserializeParam(
          data['catetype'],
          ParamType.String,
          false,
        ),
        isFav: deserializeParam(
          data['is_fav'],
          ParamType.bool,
          false,
        ),
        isJust: deserializeParam(
          data['is_just'],
          ParamType.bool,
          false,
        ),
        isNew: deserializeParam(
          data['is_new'],
          ParamType.bool,
          false,
        ),
        isCart: deserializeParam(
          data['is_cart'],
          ParamType.bool,
          false,
        ),
        isColor: deserializeParam(
          data['is_color'],
          ParamType.bool,
          false,
        ),
        isResult: deserializeParam(
          data['is_result'],
          ParamType.String,
          false,
        ),
        itsResult: deserializeParam(
          data['its_result'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'DetailStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DetailStruct &&
        prid == other.prid &&
        id == other.id &&
        image == other.image &&
        title == other.title &&
        price == other.price &&
        catetype == other.catetype &&
        isFav == other.isFav &&
        isJust == other.isJust &&
        isNew == other.isNew &&
        isCart == other.isCart &&
        isColor == other.isColor &&
        isResult == other.isResult &&
        itsResult == other.itsResult;
  }

  @override
  int get hashCode => const ListEquality().hash([
        prid,
        id,
        image,
        title,
        price,
        catetype,
        isFav,
        isJust,
        isNew,
        isCart,
        isColor,
        isResult,
        itsResult
      ]);
}

DetailStruct createDetailStruct({
  int? prid,
  int? id,
  String? image,
  String? title,
  String? price,
  String? catetype,
  bool? isFav,
  bool? isJust,
  bool? isNew,
  bool? isCart,
  bool? isColor,
  String? isResult,
  bool? itsResult,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    DetailStruct(
      prid: prid,
      id: id,
      image: image,
      title: title,
      price: price,
      catetype: catetype,
      isFav: isFav,
      isJust: isJust,
      isNew: isNew,
      isCart: isCart,
      isColor: isColor,
      isResult: isResult,
      itsResult: itsResult,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

DetailStruct? updateDetailStruct(
  DetailStruct? detail, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    detail
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addDetailStructData(
  Map<String, dynamic> firestoreData,
  DetailStruct? detail,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (detail == null) {
    return;
  }
  if (detail.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && detail.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final detailData = getDetailFirestoreData(detail, forFieldValue);
  final nestedData = detailData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = detail.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getDetailFirestoreData(
  DetailStruct? detail, [
  bool forFieldValue = false,
]) {
  if (detail == null) {
    return {};
  }
  final firestoreData = mapToFirestore(detail.toMap());

  // Add any Firestore field values
  detail.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getDetailListFirestoreData(
  List<DetailStruct>? details,
) =>
    details?.map((e) => getDetailFirestoreData(e, true)).toList() ?? [];
