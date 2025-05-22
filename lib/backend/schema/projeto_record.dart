import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProjetoRecord extends FirestoreRecord {
  ProjetoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "clienteID" field.
  DocumentReference? _clienteID;
  DocumentReference? get clienteID => _clienteID;
  bool hasClienteID() => _clienteID != null;

  // "nomeProjeto" field.
  String? _nomeProjeto;
  String get nomeProjeto => _nomeProjeto ?? '';
  bool hasNomeProjeto() => _nomeProjeto != null;

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
    _clienteID = snapshotData['clienteID'] as DocumentReference?;
    _nomeProjeto = snapshotData['nomeProjeto'] as String?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _updatedAt = snapshotData['updatedAt'] as DateTime?;
    _idAws = snapshotData['id_aws'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('projeto');

  static Stream<ProjetoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProjetoRecord.fromSnapshot(s));

  static Future<ProjetoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProjetoRecord.fromSnapshot(s));

  static ProjetoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProjetoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProjetoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProjetoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProjetoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProjetoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProjetoRecordData({
  DocumentReference? clienteID,
  String? nomeProjeto,
  DateTime? createdAt,
  DateTime? updatedAt,
  String? idAws,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'clienteID': clienteID,
      'nomeProjeto': nomeProjeto,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'id_aws': idAws,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProjetoRecordDocumentEquality implements Equality<ProjetoRecord> {
  const ProjetoRecordDocumentEquality();

  @override
  bool equals(ProjetoRecord? e1, ProjetoRecord? e2) {
    return e1?.clienteID == e2?.clienteID &&
        e1?.nomeProjeto == e2?.nomeProjeto &&
        e1?.createdAt == e2?.createdAt &&
        e1?.updatedAt == e2?.updatedAt &&
        e1?.idAws == e2?.idAws;
  }

  @override
  int hash(ProjetoRecord? e) => const ListEquality().hash(
      [e?.clienteID, e?.nomeProjeto, e?.createdAt, e?.updatedAt, e?.idAws]);

  @override
  bool isValidKey(Object? o) => o is ProjetoRecord;
}
