import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ConsistenciaRecord extends FirestoreRecord {
  ConsistenciaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "tipoSolo" field.
  String? _tipoSolo;
  String get tipoSolo => _tipoSolo ?? '';
  bool hasTipoSolo() => _tipoSolo != null;

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
    _tipoSolo = snapshotData['tipoSolo'] as String?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _updatedAt = snapshotData['updatedAt'] as DateTime?;
    _idAws = snapshotData['id_aws'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('consistencia');

  static Stream<ConsistenciaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ConsistenciaRecord.fromSnapshot(s));

  static Future<ConsistenciaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ConsistenciaRecord.fromSnapshot(s));

  static ConsistenciaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ConsistenciaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ConsistenciaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ConsistenciaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ConsistenciaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ConsistenciaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createConsistenciaRecordData({
  String? tipoSolo,
  DateTime? createdAt,
  DateTime? updatedAt,
  String? idAws,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'tipoSolo': tipoSolo,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'id_aws': idAws,
    }.withoutNulls,
  );

  return firestoreData;
}

class ConsistenciaRecordDocumentEquality
    implements Equality<ConsistenciaRecord> {
  const ConsistenciaRecordDocumentEquality();

  @override
  bool equals(ConsistenciaRecord? e1, ConsistenciaRecord? e2) {
    return e1?.tipoSolo == e2?.tipoSolo &&
        e1?.createdAt == e2?.createdAt &&
        e1?.updatedAt == e2?.updatedAt &&
        e1?.idAws == e2?.idAws;
  }

  @override
  int hash(ConsistenciaRecord? e) => const ListEquality()
      .hash([e?.tipoSolo, e?.createdAt, e?.updatedAt, e?.idAws]);

  @override
  bool isValidKey(Object? o) => o is ConsistenciaRecord;
}
