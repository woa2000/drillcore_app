import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EquipeProjetoRecord extends FirestoreRecord {
  EquipeProjetoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "equipeID" field.
  DocumentReference? _equipeID;
  DocumentReference? get equipeID => _equipeID;
  bool hasEquipeID() => _equipeID != null;

  // "projetoID" field.
  DocumentReference? _projetoID;
  DocumentReference? get projetoID => _projetoID;
  bool hasProjetoID() => _projetoID != null;

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
    _equipeID = snapshotData['equipeID'] as DocumentReference?;
    _projetoID = snapshotData['projetoID'] as DocumentReference?;
    _ativo = snapshotData['ativo'] as bool?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _updatedAt = snapshotData['updatedAt'] as DateTime?;
    _idAws = snapshotData['id_aws'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('equipeProjeto');

  static Stream<EquipeProjetoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EquipeProjetoRecord.fromSnapshot(s));

  static Future<EquipeProjetoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EquipeProjetoRecord.fromSnapshot(s));

  static EquipeProjetoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EquipeProjetoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EquipeProjetoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EquipeProjetoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EquipeProjetoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EquipeProjetoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEquipeProjetoRecordData({
  DocumentReference? equipeID,
  DocumentReference? projetoID,
  bool? ativo,
  DateTime? createdAt,
  DateTime? updatedAt,
  String? idAws,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'equipeID': equipeID,
      'projetoID': projetoID,
      'ativo': ativo,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'id_aws': idAws,
    }.withoutNulls,
  );

  return firestoreData;
}

class EquipeProjetoRecordDocumentEquality
    implements Equality<EquipeProjetoRecord> {
  const EquipeProjetoRecordDocumentEquality();

  @override
  bool equals(EquipeProjetoRecord? e1, EquipeProjetoRecord? e2) {
    return e1?.equipeID == e2?.equipeID &&
        e1?.projetoID == e2?.projetoID &&
        e1?.ativo == e2?.ativo &&
        e1?.createdAt == e2?.createdAt &&
        e1?.updatedAt == e2?.updatedAt &&
        e1?.idAws == e2?.idAws;
  }

  @override
  int hash(EquipeProjetoRecord? e) => const ListEquality().hash([
        e?.equipeID,
        e?.projetoID,
        e?.ativo,
        e?.createdAt,
        e?.updatedAt,
        e?.idAws
      ]);

  @override
  bool isValidKey(Object? o) => o is EquipeProjetoRecord;
}
