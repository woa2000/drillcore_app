// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class ClienteStruct extends FFFirebaseStruct {
  ClienteStruct({
    DocumentReference? id,
    String? nomeCliente,
    String? logoCliente,
    bool? ativo,
    DateTime? createdAt,
    DateTime? updatedAt,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _nomeCliente = nomeCliente,
        _logoCliente = logoCliente,
        _ativo = ativo,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        super(firestoreUtilData);

  // "ID" field.
  DocumentReference? _id;
  DocumentReference? get id => _id;
  set id(DocumentReference? val) => _id = val;

  bool hasId() => _id != null;

  // "nomeCliente" field.
  String? _nomeCliente;
  String get nomeCliente => _nomeCliente ?? '';
  set nomeCliente(String? val) => _nomeCliente = val;

  bool hasNomeCliente() => _nomeCliente != null;

  // "logoCliente" field.
  String? _logoCliente;
  String get logoCliente => _logoCliente ?? '';
  set logoCliente(String? val) => _logoCliente = val;

  bool hasLogoCliente() => _logoCliente != null;

  // "ativo" field.
  bool? _ativo;
  bool get ativo => _ativo ?? false;
  set ativo(bool? val) => _ativo = val;

  bool hasAtivo() => _ativo != null;

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

  static ClienteStruct fromMap(Map<String, dynamic> data) => ClienteStruct(
        id: data['ID'] as DocumentReference?,
        nomeCliente: data['nomeCliente'] as String?,
        logoCliente: data['logoCliente'] as String?,
        ativo: data['ativo'] as bool?,
        createdAt: data['createdAt'] as DateTime?,
        updatedAt: data['updatedAt'] as DateTime?,
      );

  static ClienteStruct? maybeFromMap(dynamic data) =>
      data is Map ? ClienteStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'ID': _id,
        'nomeCliente': _nomeCliente,
        'logoCliente': _logoCliente,
        'ativo': _ativo,
        'createdAt': _createdAt,
        'updatedAt': _updatedAt,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'ID': serializeParam(
          _id,
          ParamType.DocumentReference,
        ),
        'nomeCliente': serializeParam(
          _nomeCliente,
          ParamType.String,
        ),
        'logoCliente': serializeParam(
          _logoCliente,
          ParamType.String,
        ),
        'ativo': serializeParam(
          _ativo,
          ParamType.bool,
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

  static ClienteStruct fromSerializableMap(Map<String, dynamic> data) =>
      ClienteStruct(
        id: deserializeParam(
          data['ID'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['cliente'],
        ),
        nomeCliente: deserializeParam(
          data['nomeCliente'],
          ParamType.String,
          false,
        ),
        logoCliente: deserializeParam(
          data['logoCliente'],
          ParamType.String,
          false,
        ),
        ativo: deserializeParam(
          data['ativo'],
          ParamType.bool,
          false,
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
  String toString() => 'ClienteStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ClienteStruct &&
        id == other.id &&
        nomeCliente == other.nomeCliente &&
        logoCliente == other.logoCliente &&
        ativo == other.ativo &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, nomeCliente, logoCliente, ativo, createdAt, updatedAt]);
}

ClienteStruct createClienteStruct({
  DocumentReference? id,
  String? nomeCliente,
  String? logoCliente,
  bool? ativo,
  DateTime? createdAt,
  DateTime? updatedAt,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ClienteStruct(
      id: id,
      nomeCliente: nomeCliente,
      logoCliente: logoCliente,
      ativo: ativo,
      createdAt: createdAt,
      updatedAt: updatedAt,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ClienteStruct? updateClienteStruct(
  ClienteStruct? cliente, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    cliente
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addClienteStructData(
  Map<String, dynamic> firestoreData,
  ClienteStruct? cliente,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (cliente == null) {
    return;
  }
  if (cliente.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && cliente.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final clienteData = getClienteFirestoreData(cliente, forFieldValue);
  final nestedData = clienteData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = cliente.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getClienteFirestoreData(
  ClienteStruct? cliente, [
  bool forFieldValue = false,
]) {
  if (cliente == null) {
    return {};
  }
  final firestoreData = mapToFirestore(cliente.toMap());

  // Add any Firestore field values
  cliente.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getClienteListFirestoreData(
  List<ClienteStruct>? clientes,
) =>
    clientes?.map((e) => getClienteFirestoreData(e, true)).toList() ?? [];
