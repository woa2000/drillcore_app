import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MaterialRecord extends FirestoreRecord {
  MaterialRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nomeMaterial" field.
  String? _nomeMaterial;
  String get nomeMaterial => _nomeMaterial ?? '';
  bool hasNomeMaterial() => _nomeMaterial != null;

  // "unidade" field.
  String? _unidade;
  String get unidade => _unidade ?? '';
  bool hasUnidade() => _unidade != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "updatedAt" field.
  DateTime? _updatedAt;
  DateTime? get updatedAt => _updatedAt;
  bool hasUpdatedAt() => _updatedAt != null;

  // "id_aws" field.
  String? _idAws;
  String get idAws => _idAws ?? '';
  bool hasIdAws() => _idAws != null;

  void _initializeFields() {
    _nomeMaterial = snapshotData['nomeMaterial'] as String?;
    _unidade = snapshotData['unidade'] as String?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _updatedAt = snapshotData['updatedAt'] as DateTime?;
    _idAws = snapshotData['id_aws'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('material');

  static Stream<MaterialRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MaterialRecord.fromSnapshot(s));

  static Future<MaterialRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MaterialRecord.fromSnapshot(s));

  static MaterialRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MaterialRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MaterialRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MaterialRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MaterialRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MaterialRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMaterialRecordData({
  String? nomeMaterial,
  String? unidade,
  DateTime? createdAt,
  DateTime? updatedAt,
  String? idAws,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nomeMaterial': nomeMaterial,
      'unidade': unidade,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'id_aws': idAws,
    }.withoutNulls,
  );

  return firestoreData;
}

class MaterialRecordDocumentEquality implements Equality<MaterialRecord> {
  const MaterialRecordDocumentEquality();

  @override
  bool equals(MaterialRecord? e1, MaterialRecord? e2) {
    return e1?.nomeMaterial == e2?.nomeMaterial &&
        e1?.unidade == e2?.unidade &&
        e1?.createdAt == e2?.createdAt &&
        e1?.updatedAt == e2?.updatedAt &&
        e1?.idAws == e2?.idAws;
  }

  @override
  int hash(MaterialRecord? e) => const ListEquality().hash(
      [e?.nomeMaterial, e?.unidade, e?.createdAt, e?.updatedAt, e?.idAws]);

  @override
  bool isValidKey(Object? o) => o is MaterialRecord;
}
