import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DiametroRecord extends FirestoreRecord {
  DiametroRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nomeDiametro" field.
  String? _nomeDiametro;
  String get nomeDiametro => _nomeDiametro ?? '';
  bool hasNomeDiametro() => _nomeDiametro != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "updatedAt" field.
  DateTime? _updatedAt;
  DateTime? get updatedAt => _updatedAt;
  bool hasUpdatedAt() => _updatedAt != null;

  void _initializeFields() {
    _nomeDiametro = snapshotData['nomeDiametro'] as String?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _updatedAt = snapshotData['updatedAt'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('diametro');

  static Stream<DiametroRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DiametroRecord.fromSnapshot(s));

  static Future<DiametroRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DiametroRecord.fromSnapshot(s));

  static DiametroRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DiametroRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DiametroRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DiametroRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DiametroRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DiametroRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDiametroRecordData({
  String? nomeDiametro,
  DateTime? createdAt,
  DateTime? updatedAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nomeDiametro': nomeDiametro,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class DiametroRecordDocumentEquality implements Equality<DiametroRecord> {
  const DiametroRecordDocumentEquality();

  @override
  bool equals(DiametroRecord? e1, DiametroRecord? e2) {
    return e1?.nomeDiametro == e2?.nomeDiametro &&
        e1?.createdAt == e2?.createdAt &&
        e1?.updatedAt == e2?.updatedAt;
  }

  @override
  int hash(DiametroRecord? e) =>
      const ListEquality().hash([e?.nomeDiametro, e?.createdAt, e?.updatedAt]);

  @override
  bool isValidKey(Object? o) => o is DiametroRecord;
}
