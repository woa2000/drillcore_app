import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MaterialBoletimRecord extends FirestoreRecord {
  MaterialBoletimRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "material" field.
  DocumentReference? _material;
  DocumentReference? get material => _material;
  bool hasMaterial() => _material != null;

  // "boletim" field.
  DocumentReference? _boletim;
  DocumentReference? get boletim => _boletim;
  bool hasBoletim() => _boletim != null;

  // "quantidade" field.
  double? _quantidade;
  double get quantidade => _quantidade ?? 0.0;
  bool hasQuantidade() => _quantidade != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "updatedAt" field.
  DateTime? _updatedAt;
  DateTime? get updatedAt => _updatedAt;
  bool hasUpdatedAt() => _updatedAt != null;

  void _initializeFields() {
    _material = snapshotData['material'] as DocumentReference?;
    _boletim = snapshotData['boletim'] as DocumentReference?;
    _quantidade = castToType<double>(snapshotData['quantidade']);
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _updatedAt = snapshotData['updatedAt'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('materialBoletim');

  static Stream<MaterialBoletimRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MaterialBoletimRecord.fromSnapshot(s));

  static Future<MaterialBoletimRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MaterialBoletimRecord.fromSnapshot(s));

  static MaterialBoletimRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MaterialBoletimRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MaterialBoletimRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MaterialBoletimRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MaterialBoletimRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MaterialBoletimRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMaterialBoletimRecordData({
  DocumentReference? material,
  DocumentReference? boletim,
  double? quantidade,
  DateTime? createdAt,
  DateTime? updatedAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'material': material,
      'boletim': boletim,
      'quantidade': quantidade,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class MaterialBoletimRecordDocumentEquality
    implements Equality<MaterialBoletimRecord> {
  const MaterialBoletimRecordDocumentEquality();

  @override
  bool equals(MaterialBoletimRecord? e1, MaterialBoletimRecord? e2) {
    return e1?.material == e2?.material &&
        e1?.boletim == e2?.boletim &&
        e1?.quantidade == e2?.quantidade &&
        e1?.createdAt == e2?.createdAt &&
        e1?.updatedAt == e2?.updatedAt;
  }

  @override
  int hash(MaterialBoletimRecord? e) => const ListEquality().hash(
      [e?.material, e?.boletim, e?.quantidade, e?.createdAt, e?.updatedAt]);

  @override
  bool isValidKey(Object? o) => o is MaterialBoletimRecord;
}
