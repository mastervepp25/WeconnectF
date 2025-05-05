import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ToolsRecord extends FirestoreRecord {
  ToolsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "subscribe" field.
  String? _subscribe;
  String get subscribe => _subscribe ?? '';
  bool hasSubscribe() => _subscribe != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _createdAt = snapshotData['created_at'] as DateTime?;
    _user = snapshotData['user'] as DocumentReference?;
    _subscribe = snapshotData['subscribe'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('tools');

  static Stream<ToolsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ToolsRecord.fromSnapshot(s));

  static Future<ToolsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ToolsRecord.fromSnapshot(s));

  static ToolsRecord fromSnapshot(DocumentSnapshot snapshot) => ToolsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ToolsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ToolsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ToolsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ToolsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createToolsRecordData({
  String? name,
  String? description,
  double? price,
  DateTime? createdAt,
  DocumentReference? user,
  String? subscribe,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'price': price,
      'created_at': createdAt,
      'user': user,
      'subscribe': subscribe,
    }.withoutNulls,
  );

  return firestoreData;
}

class ToolsRecordDocumentEquality implements Equality<ToolsRecord> {
  const ToolsRecordDocumentEquality();

  @override
  bool equals(ToolsRecord? e1, ToolsRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.price == e2?.price &&
        e1?.createdAt == e2?.createdAt &&
        e1?.user == e2?.user &&
        e1?.subscribe == e2?.subscribe;
  }

  @override
  int hash(ToolsRecord? e) => const ListEquality().hash(
      [e?.name, e?.description, e?.price, e?.createdAt, e?.user, e?.subscribe]);

  @override
  bool isValidKey(Object? o) => o is ToolsRecord;
}
