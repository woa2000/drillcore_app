import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ClienteRecord extends FirestoreRecord {
  ClienteRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nomeCliente" field.
  String? _nomeCliente;
  String get nomeCliente => _nomeCliente ?? '';
  bool hasNomeCliente() => _nomeCliente != null;

  // "logoCliente" field.
  String? _logoCliente;
  String get logoCliente => _logoCliente ?? '';
  bool hasLogoCliente() => _logoCliente != null;

  // "ativo" field.
  bool? _ativo;
  bool get ativo => _ativo ?? false;
  bool hasAtivo() => _ativo != null;

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
    _nomeCliente = snapshotData['nomeCliente'] as String?;
    _logoCliente = snapshotData['logoCliente'] as String?;
    _ativo = snapshotData['ativo'] as bool?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _updatedAt = snapshotData['updatedAt'] as DateTime?;
    _idAws = snapshotData['id_aws'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cliente');

  static Stream<ClienteRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ClienteRecord.fromSnapshot(s));

  static Future<ClienteRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ClienteRecord.fromSnapshot(s));

  static ClienteRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ClienteRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ClienteRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ClienteRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ClienteRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ClienteRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createClienteRecordData({
  String? nomeCliente,
  String? logoCliente,
  bool? ativo,
  DateTime? createdAt,
  DateTime? updatedAt,
  String? idAws,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nomeCliente': nomeCliente,
      'logoCliente': logoCliente,
      'ativo': ativo,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'id_aws': idAws,
    }.withoutNulls,
  );

  return firestoreData;
}

class ClienteRecordDocumentEquality implements Equality<ClienteRecord> {
  const ClienteRecordDocumentEquality();

  @override
  bool equals(ClienteRecord? e1, ClienteRecord? e2) {
    return e1?.nomeCliente == e2?.nomeCliente &&
        e1?.logoCliente == e2?.logoCliente &&
        e1?.ativo == e2?.ativo &&
        e1?.createdAt == e2?.createdAt &&
        e1?.updatedAt == e2?.updatedAt &&
        e1?.idAws == e2?.idAws;
  }

  @override
  int hash(ClienteRecord? e) => const ListEquality().hash([
        e?.nomeCliente,
        e?.logoCliente,
        e?.ativo,
        e?.createdAt,
        e?.updatedAt,
        e?.idAws
      ]);

  @override
  bool isValidKey(Object? o) => o is ClienteRecord;
}
