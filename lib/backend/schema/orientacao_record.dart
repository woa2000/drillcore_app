import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrientacaoRecord extends FirestoreRecord {
  OrientacaoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "codigo" field.
  String? _codigo;
  String get codigo => _codigo ?? '';
  bool hasCodigo() => _codigo != null;

  // "sigla" field.
  String? _sigla;
  String get sigla => _sigla ?? '';
  bool hasSigla() => _sigla != null;

  // "descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  bool hasDescricao() => _descricao != null;

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
    _codigo = snapshotData['codigo'] as String?;
    _sigla = snapshotData['sigla'] as String?;
    _descricao = snapshotData['descricao'] as String?;
    _ativo = snapshotData['ativo'] as bool?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _updatedAt = snapshotData['updatedAt'] as DateTime?;
    _idAws = snapshotData['id_aws'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('orientacao');

  static Stream<OrientacaoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OrientacaoRecord.fromSnapshot(s));

  static Future<OrientacaoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OrientacaoRecord.fromSnapshot(s));

  static OrientacaoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      OrientacaoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OrientacaoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OrientacaoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OrientacaoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OrientacaoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOrientacaoRecordData({
  String? codigo,
  String? sigla,
  String? descricao,
  bool? ativo,
  DateTime? createdAt,
  DateTime? updatedAt,
  String? idAws,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'codigo': codigo,
      'sigla': sigla,
      'descricao': descricao,
      'ativo': ativo,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'id_aws': idAws,
    }.withoutNulls,
  );

  return firestoreData;
}

class OrientacaoRecordDocumentEquality implements Equality<OrientacaoRecord> {
  const OrientacaoRecordDocumentEquality();

  @override
  bool equals(OrientacaoRecord? e1, OrientacaoRecord? e2) {
    return e1?.codigo == e2?.codigo &&
        e1?.sigla == e2?.sigla &&
        e1?.descricao == e2?.descricao &&
        e1?.ativo == e2?.ativo &&
        e1?.createdAt == e2?.createdAt &&
        e1?.updatedAt == e2?.updatedAt &&
        e1?.idAws == e2?.idAws;
  }

  @override
  int hash(OrientacaoRecord? e) => const ListEquality().hash([
        e?.codigo,
        e?.sigla,
        e?.descricao,
        e?.ativo,
        e?.createdAt,
        e?.updatedAt,
        e?.idAws
      ]);

  @override
  bool isValidKey(Object? o) => o is OrientacaoRecord;
}
