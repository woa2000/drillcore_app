// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProjetoStruct extends FFFirebaseStruct {
  ProjetoStruct({
    DocumentReference? id,
    String? nomeProjeto,
    DocumentReference? clienteID,
    ClienteStruct? cliente,
    DateTime? createdAt,
    DateTime? updatedAt,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _nomeProjeto = nomeProjeto,
        _clienteID = clienteID,
        _cliente = cliente,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        super(firestoreUtilData);

  // "ID" field.
  DocumentReference? _id;
  DocumentReference? get id => _id;
  set id(DocumentReference? val) => _id = val;

  bool hasId() => _id != null;

  // "nomeProjeto" field.
  String? _nomeProjeto;
  String get nomeProjeto => _nomeProjeto ?? '';
  set nomeProjeto(String? val) => _nomeProjeto = val;

  bool hasNomeProjeto() => _nomeProjeto != null;

  // "clienteID" field.
  DocumentReference? _clienteID;
  DocumentReference? get clienteID => _clienteID;
  set clienteID(DocumentReference? val) => _clienteID = val;

  bool hasClienteID() => _clienteID != null;

  // "cliente" field.
  ClienteStruct? _cliente;
  ClienteStruct get cliente => _cliente ?? ClienteStruct();
  set cliente(ClienteStruct? val) => _cliente = val;

  void updateCliente(Function(ClienteStruct) updateFn) {
    updateFn(_cliente ??= ClienteStruct());
  }

  bool hasCliente() => _cliente != null;

  // "createdAt" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  set createdAt(DateTime? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  // "updatedAt" field.
  DateTime? _updatedAt;
  DateTime? get updatedAt => _updatedAt;
  set updatedAt(DateTime? val) => _updatedAt = val;

  bool hasUpdatedAt() => _updatedAt != null;

  static ProjetoStruct fromMap(Map<String, dynamic> data) => ProjetoStruct(
        id: data['ID'] as DocumentReference?,
        nomeProjeto: data['nomeProjeto'] as String?,
        clienteID: data['clienteID'] as DocumentReference?,
        cliente: data['cliente'] is ClienteStruct
            ? data['cliente']
            : ClienteStruct.maybeFromMap(data['cliente']),
        createdAt: data['createdAt'] as DateTime?,
        updatedAt: data['updatedAt'] as DateTime?,
      );

  static ProjetoStruct? maybeFromMap(dynamic data) =>
      data is Map ? ProjetoStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'ID': _id,
        'nomeProjeto': _nomeProjeto,
        'clienteID': _clienteID,
        'cliente': _cliente?.toMap(),
        'createdAt': _createdAt,
        'updatedAt': _updatedAt,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'ID': serializeParam(
          _id,
          ParamType.DocumentReference,
        ),
        'nomeProjeto': serializeParam(
          _nomeProjeto,
          ParamType.String,
        ),
        'clienteID': serializeParam(
          _clienteID,
          ParamType.DocumentReference,
        ),
        'cliente': serializeParam(
          _cliente,
          ParamType.DataStruct,
        ),
        'createdAt': serializeParam(
          _createdAt,
          ParamType.DateTime,
        ),
        'updatedAt': serializeParam(
          _updatedAt,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static ProjetoStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProjetoStruct(
        id: deserializeParam(
          data['ID'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['projeto'],
        ),
        nomeProjeto: deserializeParam(
          data['nomeProjeto'],
          ParamType.String,
          false,
        ),
        clienteID: deserializeParam(
          data['clienteID'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['cliente'],
        ),
        cliente: deserializeStructParam(
          data['cliente'],
          ParamType.DataStruct,
          false,
          structBuilder: ClienteStruct.fromSerializableMap,
        ),
        createdAt: deserializeParam(
          data['createdAt'],
          ParamType.DateTime,
          false,
        ),
        updatedAt: deserializeParam(
          data['updatedAt'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'ProjetoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProjetoStruct &&
        id == other.id &&
        nomeProjeto == other.nomeProjeto &&
        clienteID == other.clienteID &&
        cliente == other.cliente &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, nomeProjeto, clienteID, cliente, createdAt, updatedAt]);
}

ProjetoStruct createProjetoStruct({
  DocumentReference? id,
  String? nomeProjeto,
  DocumentReference? clienteID,
  ClienteStruct? cliente,
  DateTime? createdAt,
  DateTime? updatedAt,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ProjetoStruct(
      id: id,
      nomeProjeto: nomeProjeto,
      clienteID: clienteID,
      cliente: cliente ?? (clearUnsetFields ? ClienteStruct() : null),
      createdAt: createdAt,
      updatedAt: updatedAt,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ProjetoStruct? updateProjetoStruct(
  ProjetoStruct? projeto, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    projeto
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addProjetoStructData(
  Map<String, dynamic> firestoreData,
  ProjetoStruct? projeto,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (projeto == null) {
    return;
  }
  if (projeto.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && projeto.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final projetoData = getProjetoFirestoreData(projeto, forFieldValue);
  final nestedData = projetoData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = projeto.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getProjetoFirestoreData(
  ProjetoStruct? projeto, [
  bool forFieldValue = false,
]) {
  if (projeto == null) {
    return {};
  }
  final firestoreData = mapToFirestore(projeto.toMap());

  // Handle nested data for "cliente" field.
  addClienteStructData(
    firestoreData,
    projeto.hasCliente() ? projeto.cliente : null,
    'cliente',
    forFieldValue,
  );

  // Add any Firestore field values
  projeto.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getProjetoListFirestoreData(
  List<ProjetoStruct>? projetos,
) =>
    projetos?.map((e) => getProjetoFirestoreData(e, true)).toList() ?? [];
