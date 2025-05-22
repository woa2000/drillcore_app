import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BoletimRecord extends FirestoreRecord {
  BoletimRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "data" field.
  DateTime? _data;
  DateTime? get data => _data;
  bool hasData() => _data != null;

  // "inclinacao" field.
  double? _inclinacao;
  double get inclinacao => _inclinacao ?? 0.0;
  bool hasInclinacao() => _inclinacao != null;

  // "azimute" field.
  double? _azimute;
  double get azimute => _azimute ?? 0.0;
  bool hasAzimute() => _azimute != null;

  // "horimetroInicial" field.
  double? _horimetroInicial;
  double get horimetroInicial => _horimetroInicial ?? 0.0;
  bool hasHorimetroInicial() => _horimetroInicial != null;

  // "horimetroFinal" field.
  double? _horimetroFinal;
  double get horimetroFinal => _horimetroFinal ?? 0.0;
  bool hasHorimetroFinal() => _horimetroFinal != null;

  // "supervisores" field.
  List<DocumentReference>? _supervisores;
  List<DocumentReference> get supervisores => _supervisores ?? const [];
  bool hasSupervisores() => _supervisores != null;

  // "auxiliares" field.
  List<DocumentReference>? _auxiliares;
  List<DocumentReference> get auxiliares => _auxiliares ?? const [];
  bool hasAuxiliares() => _auxiliares != null;

  // "fiscais" field.
  List<DocumentReference>? _fiscais;
  List<DocumentReference> get fiscais => _fiscais ?? const [];
  bool hasFiscais() => _fiscais != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "updatedAt" field.
  DateTime? _updatedAt;
  DateTime? get updatedAt => _updatedAt;
  bool hasUpdatedAt() => _updatedAt != null;

  // "clienteID" field.
  DocumentReference? _clienteID;
  DocumentReference? get clienteID => _clienteID;
  bool hasClienteID() => _clienteID != null;

  // "projetoID" field.
  DocumentReference? _projetoID;
  DocumentReference? get projetoID => _projetoID;
  bool hasProjetoID() => _projetoID != null;

  // "alvoID" field.
  DocumentReference? _alvoID;
  DocumentReference? get alvoID => _alvoID;
  bool hasAlvoID() => _alvoID != null;

  // "turnoID" field.
  DocumentReference? _turnoID;
  DocumentReference? get turnoID => _turnoID;
  bool hasTurnoID() => _turnoID != null;

  // "sondaID" field.
  DocumentReference? _sondaID;
  DocumentReference? get sondaID => _sondaID;
  bool hasSondaID() => _sondaID != null;

  // "localID" field.
  String? _localID;
  String get localID => _localID ?? '';
  bool hasLocalID() => _localID != null;

  // "concluido" field.
  bool? _concluido;
  bool get concluido => _concluido ?? false;
  bool hasConcluido() => _concluido != null;

  // "sync" field.
  bool? _sync;
  bool get sync => _sync ?? false;
  bool hasSync() => _sync != null;

  // "operadores" field.
  List<DocumentReference>? _operadores;
  List<DocumentReference> get operadores => _operadores ?? const [];
  bool hasOperadores() => _operadores != null;

  // "cliente" field.
  ClienteStruct? _cliente;
  ClienteStruct get cliente => _cliente ?? ClienteStruct();
  bool hasCliente() => _cliente != null;

  // "furosBoletim" field.
  List<FuroBoletimStruct>? _furosBoletim;
  List<FuroBoletimStruct> get furosBoletim => _furosBoletim ?? const [];
  bool hasFurosBoletim() => _furosBoletim != null;

  // "user" field.
  String? _user;
  String get user => _user ?? '';
  bool hasUser() => _user != null;

  void _initializeFields() {
    _data = snapshotData['data'] as DateTime?;
    _inclinacao = castToType<double>(snapshotData['inclinacao']);
    _azimute = castToType<double>(snapshotData['azimute']);
    _horimetroInicial = castToType<double>(snapshotData['horimetroInicial']);
    _horimetroFinal = castToType<double>(snapshotData['horimetroFinal']);
    _supervisores = getDataList(snapshotData['supervisores']);
    _auxiliares = getDataList(snapshotData['auxiliares']);
    _fiscais = getDataList(snapshotData['fiscais']);
    _createdAt = snapshotData['createdAt'] as DateTime?;
    _updatedAt = snapshotData['updatedAt'] as DateTime?;
    _clienteID = snapshotData['clienteID'] as DocumentReference?;
    _projetoID = snapshotData['projetoID'] as DocumentReference?;
    _alvoID = snapshotData['alvoID'] as DocumentReference?;
    _turnoID = snapshotData['turnoID'] as DocumentReference?;
    _sondaID = snapshotData['sondaID'] as DocumentReference?;
    _localID = snapshotData['localID'] as String?;
    _concluido = snapshotData['concluido'] as bool?;
    _sync = snapshotData['sync'] as bool?;
    _operadores = getDataList(snapshotData['operadores']);
    _cliente = snapshotData['cliente'] is ClienteStruct
        ? snapshotData['cliente']
        : ClienteStruct.maybeFromMap(snapshotData['cliente']);
    _furosBoletim = getStructList(
      snapshotData['furosBoletim'],
      FuroBoletimStruct.fromMap,
    );
    _user = snapshotData['user'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('boletim');

  static Stream<BoletimRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BoletimRecord.fromSnapshot(s));

  static Future<BoletimRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BoletimRecord.fromSnapshot(s));

  static BoletimRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BoletimRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BoletimRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BoletimRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BoletimRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BoletimRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBoletimRecordData({
  DateTime? data,
  double? inclinacao,
  double? azimute,
  double? horimetroInicial,
  double? horimetroFinal,
  DateTime? createdAt,
  DateTime? updatedAt,
  DocumentReference? clienteID,
  DocumentReference? projetoID,
  DocumentReference? alvoID,
  DocumentReference? turnoID,
  DocumentReference? sondaID,
  String? localID,
  bool? concluido,
  bool? sync,
  ClienteStruct? cliente,
  String? user,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'data': data,
      'inclinacao': inclinacao,
      'azimute': azimute,
      'horimetroInicial': horimetroInicial,
      'horimetroFinal': horimetroFinal,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'clienteID': clienteID,
      'projetoID': projetoID,
      'alvoID': alvoID,
      'turnoID': turnoID,
      'sondaID': sondaID,
      'localID': localID,
      'concluido': concluido,
      'sync': sync,
      'cliente': ClienteStruct().toMap(),
      'user': user,
    }.withoutNulls,
  );

  // Handle nested data for "cliente" field.
  addClienteStructData(firestoreData, cliente, 'cliente');

  return firestoreData;
}

class BoletimRecordDocumentEquality implements Equality<BoletimRecord> {
  const BoletimRecordDocumentEquality();

  @override
  bool equals(BoletimRecord? e1, BoletimRecord? e2) {
    const listEquality = ListEquality();
    return e1?.data == e2?.data &&
        e1?.inclinacao == e2?.inclinacao &&
        e1?.azimute == e2?.azimute &&
        e1?.horimetroInicial == e2?.horimetroInicial &&
        e1?.horimetroFinal == e2?.horimetroFinal &&
        listEquality.equals(e1?.supervisores, e2?.supervisores) &&
        listEquality.equals(e1?.auxiliares, e2?.auxiliares) &&
        listEquality.equals(e1?.fiscais, e2?.fiscais) &&
        e1?.createdAt == e2?.createdAt &&
        e1?.updatedAt == e2?.updatedAt &&
        e1?.clienteID == e2?.clienteID &&
        e1?.projetoID == e2?.projetoID &&
        e1?.alvoID == e2?.alvoID &&
        e1?.turnoID == e2?.turnoID &&
        e1?.sondaID == e2?.sondaID &&
        e1?.localID == e2?.localID &&
        e1?.concluido == e2?.concluido &&
        e1?.sync == e2?.sync &&
        listEquality.equals(e1?.operadores, e2?.operadores) &&
        e1?.cliente == e2?.cliente &&
        listEquality.equals(e1?.furosBoletim, e2?.furosBoletim) &&
        e1?.user == e2?.user;
  }

  @override
  int hash(BoletimRecord? e) => const ListEquality().hash([
        e?.data,
        e?.inclinacao,
        e?.azimute,
        e?.horimetroInicial,
        e?.horimetroFinal,
        e?.supervisores,
        e?.auxiliares,
        e?.fiscais,
        e?.createdAt,
        e?.updatedAt,
        e?.clienteID,
        e?.projetoID,
        e?.alvoID,
        e?.turnoID,
        e?.sondaID,
        e?.localID,
        e?.concluido,
        e?.sync,
        e?.operadores,
        e?.cliente,
        e?.furosBoletim,
        e?.user
      ]);

  @override
  bool isValidKey(Object? o) => o is BoletimRecord;
}
