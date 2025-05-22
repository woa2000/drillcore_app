import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SondaRecord extends FirestoreRecord {
  SondaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nomeSonda" field.
  String? _nomeSonda;
  String get nomeSonda => _nomeSonda ?? '';
  bool hasNomeSonda() => _nomeSonda != null;

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
    _nomeSonda = snapshotData['nomeSonda'] as String?;
    _ativo = snapshotData['ativo'] as bool?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _updatedAt = snapshotData['updatedAt'] as DateTime?;
    _idAws = snapshotData['id_aws'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('sonda');

  static Stream<SondaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SondaRecord.fromSnapshot(s));

  static Future<SondaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SondaRecord.fromSnapshot(s));

  static SondaRecord fromSnapshot(DocumentSnapshot snapshot) => SondaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SondaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SondaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SondaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SondaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSondaRecordData({
  String? nomeSonda,
  bool? ativo,
  DateTime? createdAt,
  DateTime? updatedAt,
  String? idAws,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nomeSonda': nomeSonda,
      'ativo': ativo,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'id_aws': idAws,
    }.withoutNulls,
  );

  return firestoreData;
}

class SondaRecordDocumentEquality implements Equality<SondaRecord> {
  const SondaRecordDocumentEquality();

  @override
  bool equals(SondaRecord? e1, SondaRecord? e2) {
    return e1?.nomeSonda == e2?.nomeSonda &&
        e1?.ativo == e2?.ativo &&
        e1?.createdAt == e2?.createdAt &&
        e1?.updatedAt == e2?.updatedAt &&
        e1?.idAws == e2?.idAws;
  }

  @override
  int hash(SondaRecord? e) => const ListEquality()
      .hash([e?.nomeSonda, e?.ativo, e?.createdAt, e?.updatedAt, e?.idAws]);

  @override
  bool isValidKey(Object? o) => o is SondaRecord;
}
