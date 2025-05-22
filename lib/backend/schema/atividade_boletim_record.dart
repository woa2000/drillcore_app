import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AtividadeBoletimRecord extends FirestoreRecord {
  AtividadeBoletimRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "inicio" field.
  DateTime? _inicio;
  DateTime? get inicio => _inicio;
  bool hasInicio() => _inicio != null;

  // "termino" field.
  DateTime? _termino;
  DateTime? get termino => _termino;
  bool hasTermino() => _termino != null;

  // "de" field.
  double? _de;
  double get de => _de ?? 0.0;
  bool hasDe() => _de != null;

  // "avanco" field.
  double? _avanco;
  double get avanco => _avanco ?? 0.0;
  bool hasAvanco() => _avanco != null;

  // "recuperacao" field.
  double? _recuperacao;
  double get recuperacao => _recuperacao ?? 0.0;
  bool hasRecuperacao() => _recuperacao != null;

  // "caixa" field.
  String? _caixa;
  String get caixa => _caixa ?? '';
  bool hasCaixa() => _caixa != null;

  // "diametro" field.
  String? _diametro;
  String get diametro => _diametro ?? '';
  bool hasDiametro() => _diametro != null;

  // "observacao" field.
  String? _observacao;
  String get observacao => _observacao ?? '';
  bool hasObservacao() => _observacao != null;

  // "boletimID" field.
  DocumentReference? _boletimID;
  DocumentReference? get boletimID => _boletimID;
  bool hasBoletimID() => _boletimID != null;

  // "atividadeID" field.
  DocumentReference? _atividadeID;
  DocumentReference? get atividadeID => _atividadeID;
  bool hasAtividadeID() => _atividadeID != null;

  // "orientacaoID" field.
  DocumentReference? _orientacaoID;
  DocumentReference? get orientacaoID => _orientacaoID;
  bool hasOrientacaoID() => _orientacaoID != null;

  // "furoID" field.
  DocumentReference? _furoID;
  DocumentReference? get furoID => _furoID;
  bool hasFuroID() => _furoID != null;

  // "localID" field.
  String? _localID;
  String get localID => _localID ?? '';
  bool hasLocalID() => _localID != null;

  // "ordem" field.
  int? _ordem;
  int get ordem => _ordem ?? 0;
  bool hasOrdem() => _ordem != null;

  // "dip" field.
  String? _dip;
  String get dip => _dip ?? '';
  bool hasDip() => _dip != null;

  // "localBoletimID" field.
  String? _localBoletimID;
  String get localBoletimID => _localBoletimID ?? '';
  bool hasLocalBoletimID() => _localBoletimID != null;

  // "localFuroID" field.
  String? _localFuroID;
  String get localFuroID => _localFuroID ?? '';
  bool hasLocalFuroID() => _localFuroID != null;

  // "litologia" field.
  String? _litologia;
  String get litologia => _litologia ?? '';
  bool hasLitologia() => _litologia != null;

  // "sync" field.
  bool? _sync;
  bool get sync => _sync ?? false;
  bool hasSync() => _sync != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "updatedAt" field.
  DateTime? _updatedAt;
  DateTime? get updatedAt => _updatedAt;
  bool hasUpdatedAt() => _updatedAt != null;

  void _initializeFields() {
    _inicio = snapshotData['inicio'] as DateTime?;
    _termino = snapshotData['termino'] as DateTime?;
    _de = castToType<double>(snapshotData['de']);
    _avanco = castToType<double>(snapshotData['avanco']);
    _recuperacao = castToType<double>(snapshotData['recuperacao']);
    _caixa = snapshotData['caixa'] as String?;
    _diametro = snapshotData['diametro'] as String?;
    _observacao = snapshotData['observacao'] as String?;
    _boletimID = snapshotData['boletimID'] as DocumentReference?;
    _atividadeID = snapshotData['atividadeID'] as DocumentReference?;
    _orientacaoID = snapshotData['orientacaoID'] as DocumentReference?;
    _furoID = snapshotData['furoID'] as DocumentReference?;
    _localID = snapshotData['localID'] as String?;
    _ordem = castToType<int>(snapshotData['ordem']);
    _dip = snapshotData['dip'] as String?;
    _localBoletimID = snapshotData['localBoletimID'] as String?;
    _localFuroID = snapshotData['localFuroID'] as String?;
    _litologia = snapshotData['litologia'] as String?;
    _sync = snapshotData['sync'] as bool?;
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _updatedAt = snapshotData['updatedAt'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('atividadeBoletim');

  static Stream<AtividadeBoletimRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AtividadeBoletimRecord.fromSnapshot(s));

  static Future<AtividadeBoletimRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => AtividadeBoletimRecord.fromSnapshot(s));

  static AtividadeBoletimRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AtividadeBoletimRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AtividadeBoletimRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AtividadeBoletimRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AtividadeBoletimRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AtividadeBoletimRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAtividadeBoletimRecordData({
  DateTime? inicio,
  DateTime? termino,
  double? de,
  double? avanco,
  double? recuperacao,
  String? caixa,
  String? diametro,
  String? observacao,
  DocumentReference? boletimID,
  DocumentReference? atividadeID,
  DocumentReference? orientacaoID,
  DocumentReference? furoID,
  String? localID,
  int? ordem,
  String? dip,
  String? localBoletimID,
  String? localFuroID,
  String? litologia,
  bool? sync,
  DateTime? createdAt,
  DateTime? updatedAt,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'inicio': inicio,
      'termino': termino,
      'de': de,
      'avanco': avanco,
      'recuperacao': recuperacao,
      'caixa': caixa,
      'diametro': diametro,
      'observacao': observacao,
      'boletimID': boletimID,
      'atividadeID': atividadeID,
      'orientacaoID': orientacaoID,
      'furoID': furoID,
      'localID': localID,
      'ordem': ordem,
      'dip': dip,
      'localBoletimID': localBoletimID,
      'localFuroID': localFuroID,
      'litologia': litologia,
      'sync': sync,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
    }.withoutNulls,
  );

  return firestoreData;
}

class AtividadeBoletimRecordDocumentEquality
    implements Equality<AtividadeBoletimRecord> {
  const AtividadeBoletimRecordDocumentEquality();

  @override
  bool equals(AtividadeBoletimRecord? e1, AtividadeBoletimRecord? e2) {
    return e1?.inicio == e2?.inicio &&
        e1?.termino == e2?.termino &&
        e1?.de == e2?.de &&
        e1?.avanco == e2?.avanco &&
        e1?.recuperacao == e2?.recuperacao &&
        e1?.caixa == e2?.caixa &&
        e1?.diametro == e2?.diametro &&
        e1?.observacao == e2?.observacao &&
        e1?.boletimID == e2?.boletimID &&
        e1?.atividadeID == e2?.atividadeID &&
        e1?.orientacaoID == e2?.orientacaoID &&
        e1?.furoID == e2?.furoID &&
        e1?.localID == e2?.localID &&
        e1?.ordem == e2?.ordem &&
        e1?.dip == e2?.dip &&
        e1?.localBoletimID == e2?.localBoletimID &&
        e1?.localFuroID == e2?.localFuroID &&
        e1?.litologia == e2?.litologia &&
        e1?.sync == e2?.sync &&
        e1?.createdAt == e2?.createdAt &&
        e1?.updatedAt == e2?.updatedAt;
  }

  @override
  int hash(AtividadeBoletimRecord? e) => const ListEquality().hash([
        e?.inicio,
        e?.termino,
        e?.de,
        e?.avanco,
        e?.recuperacao,
        e?.caixa,
        e?.diametro,
        e?.observacao,
        e?.boletimID,
        e?.atividadeID,
        e?.orientacaoID,
        e?.furoID,
        e?.localID,
        e?.ordem,
        e?.dip,
        e?.localBoletimID,
        e?.localFuroID,
        e?.litologia,
        e?.sync,
        e?.createdAt,
        e?.updatedAt
      ]);

  @override
  bool isValidKey(Object? o) => o is AtividadeBoletimRecord;
}
