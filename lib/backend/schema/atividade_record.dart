import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AtividadeRecord extends FirestoreRecord {
  AtividadeRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nomeAtividade" field.
  String? _nomeAtividade;
  String get nomeAtividade => _nomeAtividade ?? '';
  bool hasNomeAtividade() => _nomeAtividade != null;

  // "codigo" field.
  int? _codigo;
  int get codigo => _codigo ?? 0;
  bool hasCodigo() => _codigo != null;

  // "tipo" field.
  String? _tipo;
  String get tipo => _tipo ?? '';
  bool hasTipo() => _tipo != null;

  // "infoPerfuracao" field.
  bool? _infoPerfuracao;
  bool get infoPerfuracao => _infoPerfuracao ?? false;
  bool hasInfoPerfuracao() => _infoPerfuracao != null;

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
    _nomeAtividade = snapshotData['nomeAtividade'] as String?;
    _codigo = castToType<int>(snapshotData['codigo']);
    _tipo = snapshotData['tipo'] as String?;
    _infoPerfuracao = snapshotData['infoPerfuracao'] as bool?;
    _ativo = snapshotData['ativo'] as bool?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _updatedAt = snapshotData['updatedAt'] as DateTime?;
    _idAws = snapshotData['id_aws'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('atividade');

  static Stream<AtividadeRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AtividadeRecord.fromSnapshot(s));

  static Future<AtividadeRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AtividadeRecord.fromSnapshot(s));

  static AtividadeRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AtividadeRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AtividadeRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AtividadeRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AtividadeRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AtividadeRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAtividadeRecordData({
  String? nomeAtividade,
  int? codigo,
  String? tipo,
  bool? infoPerfuracao,
  bool? ativo,
  DateTime? createdAt,
  DateTime? updatedAt,
  String? idAws,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nomeAtividade': nomeAtividade,
      'codigo': codigo,
      'tipo': tipo,
      'infoPerfuracao': infoPerfuracao,
      'ativo': ativo,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'id_aws': idAws,
    }.withoutNulls,
  );

  return firestoreData;
}

class AtividadeRecordDocumentEquality implements Equality<AtividadeRecord> {
  const AtividadeRecordDocumentEquality();

  @override
  bool equals(AtividadeRecord? e1, AtividadeRecord? e2) {
    return e1?.nomeAtividade == e2?.nomeAtividade &&
        e1?.codigo == e2?.codigo &&
        e1?.tipo == e2?.tipo &&
        e1?.infoPerfuracao == e2?.infoPerfuracao &&
        e1?.ativo == e2?.ativo &&
        e1?.createdAt == e2?.createdAt &&
        e1?.updatedAt == e2?.updatedAt &&
        e1?.idAws == e2?.idAws;
  }

  @override
  int hash(AtividadeRecord? e) => const ListEquality().hash([
        e?.nomeAtividade,
        e?.codigo,
        e?.tipo,
        e?.infoPerfuracao,
        e?.ativo,
        e?.createdAt,
        e?.updatedAt,
        e?.idAws
      ]);

  @override
  bool isValidKey(Object? o) => o is AtividadeRecord;
}
