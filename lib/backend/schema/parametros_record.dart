import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ParametrosRecord extends FirestoreRecord {
  ParametrosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "senhaExclusaoBoletim" field.
  String? _senhaExclusaoBoletim;
  String get senhaExclusaoBoletim => _senhaExclusaoBoletim ?? '';
  bool hasSenhaExclusaoBoletim() => _senhaExclusaoBoletim != null;

  // "senhaPermisaoLimpesaCache" field.
  String? _senhaPermisaoLimpesaCache;
  String get senhaPermisaoLimpesaCache => _senhaPermisaoLimpesaCache ?? '';
  bool hasSenhaPermisaoLimpesaCache() => _senhaPermisaoLimpesaCache != null;

  // "senhaExclusaoAtividade" field.
  String? _senhaExclusaoAtividade;
  String get senhaExclusaoAtividade => _senhaExclusaoAtividade ?? '';
  bool hasSenhaExclusaoAtividade() => _senhaExclusaoAtividade != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "updatedAt" field.
  DateTime? _updatedAt;
  DateTime? get updatedAt => _updatedAt;
  bool hasUpdatedAt() => _updatedAt != null;

  void _initializeFields() {
    _senhaExclusaoBoletim = snapshotData['senhaExclusaoBoletim'] as String?;
    _senhaPermisaoLimpesaCache =
        snapshotData['senhaPermisaoLimpesaCache'] as String?;
    _senhaExclusaoAtividade = snapshotData['senhaExclusaoAtividade'] as String?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _updatedAt = snapshotData['updatedAt'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('parametros');

  static Stream<ParametrosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ParametrosRecord.fromSnapshot(s));

  static Future<ParametrosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ParametrosRecord.fromSnapshot(s));

  static ParametrosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ParametrosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ParametrosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ParametrosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ParametrosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ParametrosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createParametrosRecordData({
  String? senhaExclusaoBoletim,
  String? senhaPermisaoLimpesaCache,
  String? senhaExclusaoAtividade,
  DateTime? createdAt,
  DateTime? updatedAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'senhaExclusaoBoletim': senhaExclusaoBoletim,
      'senhaPermisaoLimpesaCache': senhaPermisaoLimpesaCache,
      'senhaExclusaoAtividade': senhaExclusaoAtividade,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class ParametrosRecordDocumentEquality implements Equality<ParametrosRecord> {
  const ParametrosRecordDocumentEquality();

  @override
  bool equals(ParametrosRecord? e1, ParametrosRecord? e2) {
    return e1?.senhaExclusaoBoletim == e2?.senhaExclusaoBoletim &&
        e1?.senhaPermisaoLimpesaCache == e2?.senhaPermisaoLimpesaCache &&
        e1?.senhaExclusaoAtividade == e2?.senhaExclusaoAtividade &&
        e1?.createdAt == e2?.createdAt &&
        e1?.updatedAt == e2?.updatedAt;
  }

  @override
  int hash(ParametrosRecord? e) => const ListEquality().hash([
        e?.senhaExclusaoBoletim,
        e?.senhaPermisaoLimpesaCache,
        e?.senhaExclusaoAtividade,
        e?.createdAt,
        e?.updatedAt
      ]);

  @override
  bool isValidKey(Object? o) => o is ParametrosRecord;
}
