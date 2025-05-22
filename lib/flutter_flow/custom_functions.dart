import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

DocumentReference? strToReferenceCliente(String? idStr) {
  if (idStr == null) {
    return null;
  }
  return FirebaseFirestore.instance.doc('cliente/$idStr');
}

String? duracaoFormatada(int? duracao) {
  // retornar uma duração no formato hh:mm para uma duração em minutos
  if (duracao == null) return null;
  final hours = duracao ~/ 60;
  final minutes = duracao % 60;
  return '${hours.toString().padLeft(2, '0')}:${minutes.toString().padLeft(2, '0')}';
}

int? duracaoAtividadeEmMinutos(
  String? inicio,
  String? termino,
) {
  // retornar a duração no formato hh:mm para uma diferença entre dois parametros incio e termino
  if (inicio == null || termino == null) {
    return null;
  }

  final start = DateFormat.Hm().parse(inicio);
  final end = DateFormat.Hm().parse(termino);
  var duration = end.difference(start);

  if (start.compareTo(end) > 0) {
    final midnight = DateFormat.Hm().parse("24:00");
    final zero = DateFormat.Hm().parse("00:00");
    duration = midnight.difference(start) + end.difference(zero);
  }

  var hours = duration.inHours;
  var minutes = (duration.inMinutes % 60);

  return (hours * 60) + minutes;
}

bool? validaHorarioTurno(
  String? inicio,
  String? termino,
  String? inicioTurno,
  String? terminoTurno,
) {
  // Verifica se todos os parâmetros são válidos
  if (inicio == null ||
      termino == null ||
      inicioTurno == null ||
      terminoTurno == null) {
    return false;
  }

  // Converte as strings para objetos DateTime usando o formato HH:mm
  final start = DateFormat.Hm().parse(inicio);
  final end = DateFormat.Hm().parse(termino);
  final startTurno = DateFormat.Hm().parse(inicioTurno);
  final endTurno = DateFormat.Hm().parse(terminoTurno);

  // Verifica se o turno definido (inicioTurno -> terminoTurno) cruza a meia-noite
  final turnoCruzaMeiaNoite = startTurno.isAfter(endTurno);

  if (!turnoCruzaMeiaNoite) {
    // Caso o turno NÃO cruze a meia-noite
    return (start.isAtSameMomentAs(startTurno) || start.isAfter(startTurno)) &&
        (end.isBefore(endTurno) || end.isAtSameMomentAs(endTurno));
  } else {
    // Caso o turno CRUZE a meia-noite, ajustamos a lógica:
    // Adicionamos 1 dia ao término do turno para representar um horário contínuo
    final adjustedEndTurno = endTurno.add(Duration(days: 1));

    // Ajustamos o fim também se necessário
    final adjustedEnd = end.isBefore(start) ? end.add(Duration(days: 1)) : end;

    // Validamos se o horário está dentro do turno cruzando a meia-noite
    return (start.isAtSameMomentAs(startTurno) || start.isAfter(startTurno)) &&
        (adjustedEnd.isBefore(adjustedEndTurno) ||
            adjustedEnd == adjustedEndTurno);
  }
}

DocumentReference? strToReferenceProjeto(String? idStr) {
  if (idStr == null) {
    return null;
  }
  return FirebaseFirestore.instance.doc('projeto/$idStr');
}

String? strPercentualRecuperacao(
  double? avanco,
  double? recuperacao,
) {
  if (recuperacao == null || avanco == null || avanco == 0) {
    return " - ";
  }

  var percentual = (recuperacao / avanco) * 100;

  return percentual.toStringAsFixed(2) + " %";
}

DocumentReference? strToReferenceAlvo(String? idStr) {
  if (idStr == null) {
    return null;
  }
  return FirebaseFirestore.instance.doc('alvo/$idStr');
}

DocumentReference? strToReferenceEquipe(String? idStr) {
  if (idStr == null) {
    return null;
  }
  return FirebaseFirestore.instance.doc('equipe/$idStr');
}

DocumentReference? strToReferenceSonda(String? idStr) {
  if (idStr == null) {
    return null;
  }
  return FirebaseFirestore.instance.doc('sonda/$idStr');
}

DocumentReference? strToReferenceTurno(String? idStr) {
  if (idStr == null) {
    return null;
  }
  return FirebaseFirestore.instance.doc('turno/$idStr');
}

String? newGuid() {
  // criar uma função que retorne um Guid
  final random = math.Random();
  final hexDigits = '0123456789abcdef';
  final buffer = StringBuffer();
  for (var i = 0; i < 32; i++) {
    final digit = hexDigits[random.nextInt(16)];
    buffer.write(digit);
  }
  final guid = buffer.toString();
  return guid.substring(0, 8) +
      '-' +
      guid.substring(8, 12) +
      '-' +
      guid.substring(12, 16) +
      '-' +
      guid.substring(16, 20) +
      '-' +
      guid.substring(20);
}

DocumentReference? strToReferenceAtividade(String? idStr) {
  if (idStr == null) {
    return null;
  }
  return FirebaseFirestore.instance.doc('atividade/$idStr');
}

DocumentReference? strToReferenceConsistencia(String? idStr) {
  if (idStr == null) {
    return null;
  }
  return FirebaseFirestore.instance.doc('consistencia/$idStr');
}

DocumentReference? strToReferenceDiametro(String? idStr) {
  if (idStr == null) {
    return null;
  }
  return FirebaseFirestore.instance.doc('diametro/$idStr');
}

DocumentReference? strToReferenceOrientacao(String? idStr) {
  if (idStr == null) {
    return null;
  }
  return FirebaseFirestore.instance.doc('orientacao/$idStr');
}

String? duracaoAtividade(
  String? inicio,
  String? termino,
) {
  // retornar a duração no formato hh:mm para uma diferença entre dois parametros incio e termino
  if (inicio == null || termino == null) {
    return null;
  }

  final start = DateFormat.Hm().parse(inicio);
  final end = DateFormat.Hm().parse(termino);
  var duration = end.difference(start);

  if (start.compareTo(end) > 0) {
    final midnight = DateFormat.Hm().parse("24:00");
    final zero = DateFormat.Hm().parse("00:00");
    duration = midnight.difference(start) + end.difference(zero);
  }

  final hours = duration.inHours.toString().padLeft(2, '0');
  final minutes = (duration.inMinutes % 60).toString().padLeft(2, '0');

  return '$hours:$minutes';
}

String? strAte(
  double? de,
  double? avanco,
) {
  if (de == null || avanco == null) {
    return " - ";
  }

  var ate = de + avanco;

  return ate.toStringAsFixed(2);
}

DateTime? strToTime(String? time) {
  // convert string to time
  if (time == null) {
    return null;
  }
  try {
    return DateTime.parse("1900-01-21 " + time);
  } catch (e) {
    return null;
  }
}

double? strToDouble(String? entrada) {
  // convert string to double
  try {
    return double.parse(entrada!);
  } catch (e) {
    return null;
  }
}

ModelResultStruct? validateBoletim(
  String? cliente,
  String? projeto,
  String? alvo,
  String? furo,
  String? sonda,
  String? inclinacao,
  String? azimute,
  String? turno,
  String? horimetroInicial,
  int? supervisores,
  int? operadores,
  int? auxiliares,
) {
  // validar se cliente é nulo

  final erros = <String>[];
  var success = true;

  if (cliente == null || cliente == 'Option 1' || cliente == "") {
    success = false;
    erros.add('O cliente deve ser selecionado');
  }

  if (projeto == null || projeto == 'Option 1' || projeto == "") {
    success = false;
    erros.add('O projeto deve ser selecionado');
  }

  if (alvo == null || alvo == 'Option 1' || alvo == "") {
    success = false;
    erros.add('O alvo deve ser selecionado');
  }

  if (sonda == null || sonda == 'Option 1' || sonda == "") {
    success = false;
    erros.add('A sonda deve ser selecionada');
  }

  if (inclinacao == null || inclinacao == 'Option 1' || inclinacao == "") {
    success = false;
    erros.add('A Inclinação deve ser informada');
  }

  if (azimute == null || azimute == 'Option 1' || azimute == "") {
    success = false;
    erros.add('O Azimute deve ser informado');
  }

  if (turno == null || turno == 'Option 1' || turno == "") {
    success = false;
    erros.add('O turno deve ser selecionado');
  }

  if (horimetroInicial == null ||
      horimetroInicial == 'Option 1' ||
      horimetroInicial == "") {
    success = false;
    erros.add('O Horimetro Inicial deve ser informado');
  }

  if (supervisores == null || supervisores == 0) {
    success = false;
    erros.add('É necessário selecionar ao menos 1 supervisor');
  }

  if (operadores == null || operadores == 0) {
    success = false;
    erros.add('É necessário selecionar ao menos 1 operador');
  }

  if (auxiliares == null || auxiliares == 0) {
    success = false;
    erros.add('É necessário selecionar ao menos 1 auxiliar');
  }

  return ModelResultStruct(
    sucesso: success,
    titulo: 'Informações Boletim',
    erros: erros,
  );
}

ModelResultStruct? validateItemBoletim(
  String? codigoUltimaAtividade,
  String? terminoUltimaAtividade,
  String? inicioTurno,
  String? terminoTurno,
  String? codigoAtividade,
  bool? isPerfuracao,
  double? de,
  double? avanco,
  double? recuperacao,
  String? inicio,
  String? termino,
) {
  // Print dos parâmetros de entrada
  print('Parâmetros de entrada:');
  print('codigoUltimaAtividade: $codigoUltimaAtividade');
  print('terminoUltimaAtividade: $terminoUltimaAtividade');
  print('inicioTurno: $inicioTurno');
  print('terminoTurno: $terminoTurno');
  print('codigoAtividade: $codigoAtividade');
  print('isPerfuracao: $isPerfuracao');
  print('de: $de');
  print('avanco: $avanco');
  print('recuperacao: $recuperacao');
  print('inicio: $inicio');
  print('termino: $termino');

  // validar se cliente é nulo
  final erros = <String>[];
  var success = true;

  if (codigoAtividade == null ||
      codigoAtividade == 'Option 1' ||
      codigoAtividade == "") {
    success = false;
    erros.add('A atividade deve ser selecionada');
  }

  if (codigoUltimaAtividade != null &&
      codigoAtividade == codigoUltimaAtividade) {
    success = false;
    erros.add('Não é possível incluir a mesma atividade duas vezes seguidas');
  }

  if (codigoUltimaAtividade != null && terminoUltimaAtividade != inicio) {
    success = false;
    erros.add('O horário de início desta atividade deve  ser igual à: ' +
        terminoUltimaAtividade!);
  }

  if (validaHorarioTurno(inicio, termino, inicioTurno, terminoTurno) == false) {
    success = false;
    erros.add('O horário da atividade deve estar entre ' +
        inicioTurno! +
        ' e ' +
        terminoTurno!);
  }

  if (isPerfuracao == true) {
    if (de == null || avanco == null || recuperacao == null) {
      success = false;
      erros.add('Os campos De, Avanço e Recuperação são obrigatórios.');
    }
  }

  return ModelResultStruct(
    sucesso: success,
    titulo: 'Informações Boletim',
    erros: erros,
  );
}

ModelResultStruct? validateEditBoletim(
  String? cliente,
  String? projeto,
  String? alvo,
  String? sonda,
  String? inclinacao,
  String? azimute,
  String? turno,
  String? horimetroInicial,
  int? supervisores,
  int? operadores,
  int? auxiliares,
) {
  // validar se cliente é nulo

  final erros = <String>[];
  var success = true;

  if (cliente == null || cliente == 'Option 1' || cliente == "") {
    success = false;
    erros.add('O cliente deve ser selecionado');
  }

  if (projeto == null || projeto == 'Option 1' || projeto == "") {
    success = false;
    erros.add('O projeto deve ser selecionado');
  }

  if (alvo == null || alvo == 'Option 1' || alvo == "") {
    success = false;
    erros.add('O alvo deve ser selecionado');
  }

  if (sonda == null || sonda == 'Option 1' || sonda == "") {
    success = false;
    erros.add('A sonda deve ser selecionada');
  }

  if (inclinacao == null || inclinacao == 'Option 1' || inclinacao == "") {
    success = false;
    erros.add('A Inclinação deve ser informada');
  }

  if (azimute == null || azimute == 'Option 1' || azimute == "") {
    success = false;
    erros.add('O Azimute deve ser informado');
  }

  if (turno == null || turno == 'Option 1' || turno == "") {
    success = false;
    erros.add('O turno deve ser selecionado');
  }

  if (horimetroInicial == null ||
      horimetroInicial == 'Option 1' ||
      horimetroInicial == "") {
    success = false;
    erros.add('O Horimetro Inicial deve ser informado');
  }

  if (supervisores == null || supervisores == 0) {
    success = false;
    erros.add('É necessário selecionar ao menos 1 supervisor');
  }

  if (operadores == null || operadores == 0) {
    success = false;
    erros.add('É necessário selecionar ao menos 1 operador');
  }

  if (auxiliares == null || auxiliares == 0) {
    success = false;
    erros.add('É necessário selecionar ao menos 1 auxiliar');
  }

  return ModelResultStruct(
    sucesso: success,
    titulo: 'Informações Boletim',
    erros: erros,
  );
}

List<ClienteStruct>? setCliente(List<ClientesRecord> clienteDB) {
  List<ClienteStruct> clienteList = [];
  for (var clienteRecord in clienteDB) {
    ClienteStruct clienteStruct = ClienteStruct(
        id: clienteRecord.cliente.id,
        nomeCliente: clienteRecord.cliente.nomeCliente,
        logoCliente: clienteRecord.cliente.logoCliente,
        ativo: clienteRecord.cliente.ativo,
        createdAt: clienteRecord.cliente.createdAt,
        updatedAt: clienteRecord.cliente.updatedAt);
    clienteList.add(clienteStruct);
  }

  return clienteList;
}

List<ProjetoStruct>? setProjeto(List<ProjetoRecord>? projetosDB) {
  // retornar uma lista do tipo ProjetoStruct de acordo com o argumento de entrada do tipo ProjetoRecord
  if (projetosDB == null) {
    return null;
  }

  List<ProjetoStruct> projetos = [];
  for (var projeto in projetosDB) {
    projetos.add(
      ProjetoStruct(
        id: projeto.reference,
        nomeProjeto: projeto.nomeProjeto,
        clienteID: projeto.clienteID,
        createdAt: projeto.createdAt,
        updatedAt: projeto.updatedAt,
      ),
    );
  }

  return projetos;
}

List<AlvoStruct>? setAlvo(List<AlvoRecord>? alvoDB) {
  // retornar uma lista do objeto AlvoStruct de acordo com o argumento de entrada alvoDB
  if (alvoDB == null) {
    return null;
  }

  List<AlvoStruct> alvoList = [];
  for (var record in alvoDB) {
    AlvoStruct alvo = AlvoStruct(
      id: record.reference,
      nomeAlvo: record.nomeAlvo,
      projetoID: record.projetoID,
      createdAt: record.createdAt,
      updatedAt: record.updatedAt,
    );
    alvoList.add(alvo);
  }

  return alvoList;
}

List<SondaStruct>? setSonda(List<SondaRecord>? sondaDB) {
  // retornar uma lista do tipo SondaStruct de acordo com o argumento de entrada sondaDB
  if (sondaDB == null) {
    return null;
  }

  List<SondaStruct> sondaList = [];
  for (var sondaRecord in sondaDB) {
    SondaStruct sonda = SondaStruct(
      id: sondaRecord.reference,
      nomeSonda: sondaRecord.nomeSonda,
      ativo: sondaRecord.ativo,
      createdAt: sondaRecord.createdAt,
      updatedAt: sondaRecord.updatedAt,
    );
    sondaList.add(sonda);
  }

  return sondaList;
}

List<EquipeProjetoStruct>? setEquipeProjeto(
  List<EquipeProjetoRecord>? equipeProjetoDB,
  List<EquipeRecord>? equipeDB,
) {
  if (equipeProjetoDB == null) {
    return null;
  }

  List<EquipeProjetoStruct> membrosEquipe = [];
  for (var membro in equipeProjetoDB) {
    try {
      // Buscar o registro correspondente em equipeDB
      var equipe = equipeDB?.firstWhere((e) => e.reference == membro.equipeID);

      membrosEquipe.add(
        EquipeProjetoStruct(
          id: membro.reference,
          equipeID: membro.equipeID,
          equipe: equipe != null
              ? EquipeStruct(
                  id: equipe.reference,
                  nome: equipe.nome,
                  funcao: equipe.funcao,
                  ativo: equipe.ativo,
                )
              : null, // Define equipe como null se `equipe` não for encontrado
          projetoID: membro.projetoID,
          createdAt: membro.createdAt,
          updatedAt: membro.updatedAt,
        ),
      );
    } catch (e) {
      print('Error: $e'); // Exibe o erro específico
    }
  }

  return membrosEquipe;
}

DocumentReference? filterBotetimData(
  List<BoletimRecord> lstBoletins,
  DateTime dataComparacao,
) {
  var boletim = lstBoletins.firstWhere((e) {
    DateTime? dtBoletim = e.data;

    return dtBoletim?.day == dataComparacao.day &&
        dtBoletim?.month == dataComparacao.month &&
        dtBoletim?.year == dataComparacao.year;
  });

  return boletim?.reference;
}

double roundDouble(double value) {
  // arrendondar valor para 2 casas decimais
  return double.parse(value.toStringAsFixed(2));
}

double? strToDoubleEN(String valor) {
  if (valor == '') {
    return 0;
  }

  return double.parse(valor.replaceAll(',', '.').replaceAll('%', ''));
}
