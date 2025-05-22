// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class AtividadeStruct extends FFFirebaseStruct {
  AtividadeStruct({
    DocumentReference? id,
    String? nomeAtividade,
    String? codigo,
    String? displayName,
    String? tipo,
    bool? infoPerfuracao,
    bool? ativo,
    DateTime? createdAt,
    DateTime? updatedAt,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _nomeAtividade = nomeAtividade,
        _codigo = codigo,
        _displayName = displayName,
        _tipo = tipo,
        _infoPerfuracao = infoPerfuracao,
        _ativo = ativo,
        _createdAt = createdAt,
        _updatedAt = updatedAt,
        super(firestoreUtilData);

  // "ID" field.
  DocumentReference? _id;
  DocumentReference? get id => _id;
  set id(DocumentReference? val) => _id = val;

  bool hasId() => _id != null;

  // "nomeAtividade" field.
  String? _nomeAtividade;
  String get nomeAtividade => _nomeAtividade ?? '';
  set nomeAtividade(String? val) => _nomeAtividade = val;

  bool hasNomeAtividade() => _nomeAtividade != null;

  // "codigo" field.
  String? _codigo;
  String get codigo => _codigo ?? '';
  set codigo(String? val) => _codigo = val;

  bool hasCodigo() => _codigo != null;

  // "displayName" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  set displayName(String? val) => _displayName = val;

  bool hasDisplayName() => _displayName != null;

  // "tipo" field.
  String? _tipo;
  String get tipo => _tipo ?? '';
  set tipo(String? val) => _tipo = val;

  bool hasTipo() => _tipo != null;

  // "infoPerfuracao" field.
  bool? _infoPerfuracao;
  bool get infoPerfuracao => _infoPerfuracao ?? false;
  set infoPerfuracao(bool? val) => _infoPerfuracao = val;

  bool hasInfoPerfuracao() => _infoPerfuracao != null;

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

  static AtividadeStruct fromMap(Map<String, dynamic> data) => AtividadeStruct(
        id: data['ID'] as DocumentReference?,
        nomeAtividade: data['nomeAtividade'] as String?,
        codigo: data['codigo'] as String?,
        displayName: data['displayName'] as String?,
        tipo: data['tipo'] as String?,
        infoPerfuracao: data['infoPerfuracao'] as bool?,
        ativo: data['ativo'] as bool?,
        createdAt: data['createdAt'] as DateTime?,
        updatedAt: data['updatedAt'] as DateTime?,
      );

  static AtividadeStruct? maybeFromMap(dynamic data) => data is Map
      ? AtividadeStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'ID': _id,
        'nomeAtividade': _nomeAtividade,
        'codigo': _codigo,
        'displayName': _displayName,
        'tipo': _tipo,
        'infoPerfuracao': _infoPerfuracao,
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
        'nomeAtividade': serializeParam(
          _nomeAtividade,
          ParamType.String,
        ),
        'codigo': serializeParam(
          _codigo,
          ParamType.String,
        ),
        'displayName': serializeParam(
          _displayName,
          ParamType.String,
        ),
        'tipo': serializeParam(
          _tipo,
          ParamType.String,
        ),
        'infoPerfuracao': serializeParam(
          _infoPerfuracao,
          ParamType.bool,
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

  static AtividadeStruct fromSerializableMap(Map<String, dynamic> data) =>
      AtividadeStruct(
        id: deserializeParam(
          data['ID'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['atividade'],
        ),
        nomeAtividade: deserializeParam(
          data['nomeAtividade'],
          ParamType.String,
          false,
        ),
        codigo: deserializeParam(
          data['codigo'],
          ParamType.String,
          false,
        ),
        displayName: deserializeParam(
          data['displayName'],
          ParamType.String,
          false,
        ),
        tipo: deserializeParam(
          data['tipo'],
          ParamType.String,
          false,
        ),
        infoPerfuracao: deserializeParam(
          data['infoPerfuracao'],
          ParamType.bool,
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
  String toString() => 'AtividadeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AtividadeStruct &&
        id == other.id &&
        nomeAtividade == other.nomeAtividade &&
        codigo == other.codigo &&
        displayName == other.displayName &&
        tipo == other.tipo &&
        infoPerfuracao == other.infoPerfuracao &&
        ativo == other.ativo &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        nomeAtividade,
        codigo,
        displayName,
        tipo,
        infoPerfuracao,
        ativo,
        createdAt,
        updatedAt
      ]);
}

AtividadeStruct createAtividadeStruct({
  DocumentReference? id,
  String? nomeAtividade,
  String? codigo,
  String? displayName,
  String? tipo,
  bool? infoPerfuracao,
  bool? ativo,
  DateTime? createdAt,
  DateTime? updatedAt,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AtividadeStruct(
      id: id,
      nomeAtividade: nomeAtividade,
      codigo: codigo,
      displayName: displayName,
      tipo: tipo,
      infoPerfuracao: infoPerfuracao,
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

AtividadeStruct? updateAtividadeStruct(
  AtividadeStruct? atividade, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    atividade
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAtividadeStructData(
  Map<String, dynamic> firestoreData,
  AtividadeStruct? atividade,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (atividade == null) {
    return;
  }
  if (atividade.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && atividade.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final atividadeData = getAtividadeFirestoreData(atividade, forFieldValue);
  final nestedData = atividadeData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = atividade.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAtividadeFirestoreData(
  AtividadeStruct? atividade, [
  bool forFieldValue = false,
]) {
  if (atividade == null) {
    return {};
  }
  final firestoreData = mapToFirestore(atividade.toMap());

  // Add any Firestore field values
  atividade.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAtividadeListFirestoreData(
  List<AtividadeStruct>? atividades,
) =>
    atividades?.map((e) => getAtividadeFirestoreData(e, true)).toList() ?? [];
