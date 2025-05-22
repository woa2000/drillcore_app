import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AlvoRecord extends FirestoreRecord {
  AlvoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "projetoID" field.
  DocumentReference? _projetoID;
  DocumentReference? get projetoID => _projetoID;
  bool hasProjetoID() => _projetoID != null;

  // "nomeAlvo" field.
  String? _nomeAlvo;
  String get nomeAlvo => _nomeAlvo ?? '';
  bool hasNomeAlvo() => _nomeAlvo != null;

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
    _projetoID = snapshotData['projetoID'] as DocumentReference?;
    _nomeAlvo = snapshotData['nomeAlvo'] as String?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _updatedAt = snapshotData['updatedAt'] as DateTime?;
    _idAws = snapshotData['id_aws'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('alvo');

  static Stream<AlvoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AlvoRecord.fromSnapshot(s));

  static Future<AlvoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AlvoRecord.fromSnapshot(s));

  static AlvoRecord fromSnapshot(DocumentSnapshot snapshot) => AlvoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AlvoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AlvoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AlvoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AlvoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAlvoRecordData({
  DocumentReference? projetoID,
  String? nomeAlvo,
  DateTime? createdAt,
  DateTime? updatedAt,
  String? idAws,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'projetoID': projetoID,
      'nomeAlvo': nomeAlvo,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'id_aws': idAws,
    }.withoutNulls,
  );

  return firestoreData;
}

class AlvoRecordDocumentEquality implements Equality<AlvoRecord> {
  const AlvoRecordDocumentEquality();

  @override
  bool equals(AlvoRecord? e1, AlvoRecord? e2) {
    return e1?.projetoID == e2?.projetoID &&
        e1?.nomeAlvo == e2?.nomeAlvo &&
        e1?.createdAt == e2?.createdAt &&
        e1?.updatedAt == e2?.updatedAt &&
        e1?.idAws == e2?.idAws;
  }

  @override
  int hash(AlvoRecord? e) => const ListEquality()
      .hash([e?.projetoID, e?.nomeAlvo, e?.createdAt, e?.updatedAt, e?.idAws]);

  @override
  bool isValidKey(Object? o) => o is AlvoRecord;
}
