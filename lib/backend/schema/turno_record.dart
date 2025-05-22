import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TurnoRecord extends FirestoreRecord {
  TurnoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nomeTurno" field.
  String? _nomeTurno;
  String get nomeTurno => _nomeTurno ?? '';
  bool hasNomeTurno() => _nomeTurno != null;

  // "codigo" field.
  String? _codigo;
  String get codigo => _codigo ?? '';
  bool hasCodigo() => _codigo != null;

  // "projetoID" field.
  DocumentReference? _projetoID;
  DocumentReference? get projetoID => _projetoID;
  bool hasProjetoID() => _projetoID != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "updatedAt" field.
  DateTime? _updatedAt;
  DateTime? get updatedAt => _updatedAt;
  bool hasUpdatedAt() => _updatedAt != null;

  // "inicio" field.
  String? _inicio;
  String get inicio => _inicio ?? '';
  bool hasInicio() => _inicio != null;

  // "termino" field.
  String? _termino;
  String get termino => _termino ?? '';
  bool hasTermino() => _termino != null;

  // "id_aws" field.
  String? _idAws;
  String get idAws => _idAws ?? '';
  bool hasIdAws() => _idAws != null;

  void _initializeFields() {
    _nomeTurno = snapshotData['nomeTurno'] as String?;
    _codigo = snapshotData['codigo'] as String?;
    _projetoID = snapshotData['projetoID'] as DocumentReference?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _updatedAt = snapshotData['updatedAt'] as DateTime?;
    _inicio = snapshotData['inicio'] as String?;
    _termino = snapshotData['termino'] as String?;
    _idAws = snapshotData['id_aws'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('turno');

  static Stream<TurnoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TurnoRecord.fromSnapshot(s));

  static Future<TurnoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TurnoRecord.fromSnapshot(s));

  static TurnoRecord fromSnapshot(DocumentSnapshot snapshot) => TurnoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TurnoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TurnoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TurnoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TurnoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTurnoRecordData({
  String? nomeTurno,
  String? codigo,
  DocumentReference? projetoID,
  DateTime? createdAt,
  DateTime? updatedAt,
  String? inicio,
  String? termino,
  String? idAws,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nomeTurno': nomeTurno,
      'codigo': codigo,
      'projetoID': projetoID,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'inicio': inicio,
      'termino': termino,
      'id_aws': idAws,
    }.withoutNulls,
  );

  return firestoreData;
}

class TurnoRecordDocumentEquality implements Equality<TurnoRecord> {
  const TurnoRecordDocumentEquality();

  @override
  bool equals(TurnoRecord? e1, TurnoRecord? e2) {
    return e1?.nomeTurno == e2?.nomeTurno &&
        e1?.codigo == e2?.codigo &&
        e1?.projetoID == e2?.projetoID &&
        e1?.createdAt == e2?.createdAt &&
        e1?.updatedAt == e2?.updatedAt &&
        e1?.inicio == e2?.inicio &&
        e1?.termino == e2?.termino &&
        e1?.idAws == e2?.idAws;
  }

  @override
  int hash(TurnoRecord? e) => const ListEquality().hash([
        e?.nomeTurno,
        e?.codigo,
        e?.projetoID,
        e?.createdAt,
        e?.updatedAt,
        e?.inicio,
        e?.termino,
        e?.idAws
      ]);

  @override
  bool isValidKey(Object? o) => o is TurnoRecord;
}
