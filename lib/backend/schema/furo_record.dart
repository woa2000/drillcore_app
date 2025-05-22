import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FuroRecord extends FirestoreRecord {
  FuroRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "alvoID" field.
  DocumentReference? _alvoID;
  DocumentReference? get alvoID => _alvoID;
  bool hasAlvoID() => _alvoID != null;

  // "nomeFuro" field.
  String? _nomeFuro;
  String get nomeFuro => _nomeFuro ?? '';
  bool hasNomeFuro() => _nomeFuro != null;

  // "furoOrientado" field.
  bool? _furoOrientado;
  bool get furoOrientado => _furoOrientado ?? false;
  bool hasFuroOrientado() => _furoOrientado != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "updatedAt" field.
  DateTime? _updatedAt;
  DateTime? get updatedAt => _updatedAt;
  bool hasUpdatedAt() => _updatedAt != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "localID" field.
  String? _localID;
  String get localID => _localID ?? '';
  bool hasLocalID() => _localID != null;

  // "profundidade" field.
  double? _profundidade;
  double get profundidade => _profundidade ?? 0.0;
  bool hasProfundidade() => _profundidade != null;

  // "sync" field.
  bool? _sync;
  bool get sync => _sync ?? false;
  bool hasSync() => _sync != null;

  void _initializeFields() {
    _alvoID = snapshotData['alvoID'] as DocumentReference?;
    _nomeFuro = snapshotData['nomeFuro'] as String?;
    _furoOrientado = snapshotData['furoOrientado'] as bool?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _updatedAt = snapshotData['updatedAt'] as DateTime?;
    _status = snapshotData['status'] as String?;
    _localID = snapshotData['localID'] as String?;
    _profundidade = castToType<double>(snapshotData['profundidade']);
    _sync = snapshotData['sync'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('furo');

  static Stream<FuroRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FuroRecord.fromSnapshot(s));

  static Future<FuroRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FuroRecord.fromSnapshot(s));

  static FuroRecord fromSnapshot(DocumentSnapshot snapshot) => FuroRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FuroRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FuroRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FuroRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FuroRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFuroRecordData({
  DocumentReference? alvoID,
  String? nomeFuro,
  bool? furoOrientado,
  DateTime? createdAt,
  DateTime? updatedAt,
  String? status,
  String? localID,
  double? profundidade,
  bool? sync,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'alvoID': alvoID,
      'nomeFuro': nomeFuro,
      'furoOrientado': furoOrientado,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'status': status,
      'localID': localID,
      'profundidade': profundidade,
      'sync': sync,
    }.withoutNulls,
  );

  return firestoreData;
}

class FuroRecordDocumentEquality implements Equality<FuroRecord> {
  const FuroRecordDocumentEquality();

  @override
  bool equals(FuroRecord? e1, FuroRecord? e2) {
    return e1?.alvoID == e2?.alvoID &&
        e1?.nomeFuro == e2?.nomeFuro &&
        e1?.furoOrientado == e2?.furoOrientado &&
        e1?.createdAt == e2?.createdAt &&
        e1?.updatedAt == e2?.updatedAt &&
        e1?.status == e2?.status &&
        e1?.localID == e2?.localID &&
        e1?.profundidade == e2?.profundidade &&
        e1?.sync == e2?.sync;
  }

  @override
  int hash(FuroRecord? e) => const ListEquality().hash([
        e?.alvoID,
        e?.nomeFuro,
        e?.furoOrientado,
        e?.createdAt,
        e?.updatedAt,
        e?.status,
        e?.localID,
        e?.profundidade,
        e?.sync
      ]);

  @override
  bool isValidKey(Object? o) => o is FuroRecord;
}
