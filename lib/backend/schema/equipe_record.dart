import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EquipeRecord extends FirestoreRecord {
  EquipeRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "funcao" field.
  String? _funcao;
  String get funcao => _funcao ?? '';
  bool hasFuncao() => _funcao != null;

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

  void _initializeFields() {
    _nome = snapshotData['nome'] as String?;
    _funcao = snapshotData['funcao'] as String?;
    _ativo = snapshotData['ativo'] as bool?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _updatedAt = snapshotData['updatedAt'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('equipe');

  static Stream<EquipeRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EquipeRecord.fromSnapshot(s));

  static Future<EquipeRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EquipeRecord.fromSnapshot(s));

  static EquipeRecord fromSnapshot(DocumentSnapshot snapshot) => EquipeRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EquipeRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EquipeRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EquipeRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EquipeRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEquipeRecordData({
  String? nome,
  String? funcao,
  bool? ativo,
  DateTime? createdAt,
  DateTime? updatedAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nome': nome,
      'funcao': funcao,
      'ativo': ativo,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class EquipeRecordDocumentEquality implements Equality<EquipeRecord> {
  const EquipeRecordDocumentEquality();

  @override
  bool equals(EquipeRecord? e1, EquipeRecord? e2) {
    return e1?.nome == e2?.nome &&
        e1?.funcao == e2?.funcao &&
        e1?.ativo == e2?.ativo &&
        e1?.createdAt == e2?.createdAt &&
        e1?.updatedAt == e2?.updatedAt;
  }

  @override
  int hash(EquipeRecord? e) => const ListEquality()
      .hash([e?.nome, e?.funcao, e?.ativo, e?.createdAt, e?.updatedAt]);

  @override
  bool isValidKey(Object? o) => o is EquipeRecord;
}
