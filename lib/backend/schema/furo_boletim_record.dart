import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FuroBoletimRecord extends FirestoreRecord {
  FuroBoletimRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "furo" field.
  DocumentReference? _furo;
  DocumentReference? get furo => _furo;
  bool hasFuro() => _furo != null;

  // "boletim" field.
  DocumentReference? _boletim;
  DocumentReference? get boletim => _boletim;
  bool hasBoletim() => _boletim != null;

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

  // "localID" field.
  String? _localID;
  String get localID => _localID ?? '';
  bool hasLocalID() => _localID != null;

  // "localFuroID" field.
  String? _localFuroID;
  String get localFuroID => _localFuroID ?? '';
  bool hasLocalFuroID() => _localFuroID != null;

  // "localBoletimID" field.
  String? _localBoletimID;
  String get localBoletimID => _localBoletimID ?? '';
  bool hasLocalBoletimID() => _localBoletimID != null;

  // "sync" field.
  bool? _sync;
  bool get sync => _sync ?? false;
  bool hasSync() => _sync != null;

  void _initializeFields() {
    _furo = snapshotData['furo'] as DocumentReference?;
    _boletim = snapshotData['boletim'] as DocumentReference?;
    _ativo = snapshotData['ativo'] as bool?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _updatedAt = snapshotData['updatedAt'] as DateTime?;
    _localID = snapshotData['localID'] as String?;
    _localFuroID = snapshotData['localFuroID'] as String?;
    _localBoletimID = snapshotData['localBoletimID'] as String?;
    _sync = snapshotData['sync'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('furoBoletim');

  static Stream<FuroBoletimRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FuroBoletimRecord.fromSnapshot(s));

  static Future<FuroBoletimRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FuroBoletimRecord.fromSnapshot(s));

  static FuroBoletimRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FuroBoletimRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FuroBoletimRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FuroBoletimRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FuroBoletimRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FuroBoletimRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFuroBoletimRecordData({
  DocumentReference? furo,
  DocumentReference? boletim,
  bool? ativo,
  DateTime? createdAt,
  DateTime? updatedAt,
  String? localID,
  String? localFuroID,
  String? localBoletimID,
  bool? sync,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'furo': furo,
      'boletim': boletim,
      'ativo': ativo,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'localID': localID,
      'localFuroID': localFuroID,
      'localBoletimID': localBoletimID,
      'sync': sync,
    }.withoutNulls,
  );

  return firestoreData;
}

class FuroBoletimRecordDocumentEquality implements Equality<FuroBoletimRecord> {
  const FuroBoletimRecordDocumentEquality();

  @override
  bool equals(FuroBoletimRecord? e1, FuroBoletimRecord? e2) {
    return e1?.furo == e2?.furo &&
        e1?.boletim == e2?.boletim &&
        e1?.ativo == e2?.ativo &&
        e1?.createdAt == e2?.createdAt &&
        e1?.updatedAt == e2?.updatedAt &&
        e1?.localID == e2?.localID &&
        e1?.localFuroID == e2?.localFuroID &&
        e1?.localBoletimID == e2?.localBoletimID &&
        e1?.sync == e2?.sync;
  }

  @override
  int hash(FuroBoletimRecord? e) => const ListEquality().hash([
        e?.furo,
        e?.boletim,
        e?.ativo,
        e?.createdAt,
        e?.updatedAt,
        e?.localID,
        e?.localFuroID,
        e?.localBoletimID,
        e?.sync
      ]);

  @override
  bool isValidKey(Object? o) => o is FuroBoletimRecord;
}
