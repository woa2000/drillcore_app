import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      if (prefs.containsKey('ff_parametros')) {
        try {
          final serializedData = prefs.getString('ff_parametros') ?? '{}';
          _parametros =
              ParametrosStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    _safeInit(() {
      _clientes = prefs
              .getStringList('ff_clientes')
              ?.map((x) {
                try {
                  return ClienteStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _clientes;
    });
    _safeInit(() {
      _projetos = prefs
              .getStringList('ff_projetos')
              ?.map((x) {
                try {
                  return ProjetoStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _projetos;
    });
    _safeInit(() {
      _alvos = prefs
              .getStringList('ff_alvos')
              ?.map((x) {
                try {
                  return AlvoStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _alvos;
    });
    _safeInit(() {
      _sondas = prefs
              .getStringList('ff_sondas')
              ?.map((x) {
                try {
                  return SondaStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _sondas;
    });
    _safeInit(() {
      _furos = prefs
              .getStringList('ff_furos')
              ?.map((x) {
                try {
                  return FuroStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _furos;
    });
    _safeInit(() {
      _turnos = prefs
              .getStringList('ff_turnos')
              ?.map((x) {
                try {
                  return TurnoStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _turnos;
    });
    _safeInit(() {
      _equipes = prefs
              .getStringList('ff_equipes')
              ?.map((x) {
                try {
                  return EquipeStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _equipes;
    });
    _safeInit(() {
      _equipeProjeto = prefs
              .getStringList('ff_equipeProjeto')
              ?.map((x) {
                try {
                  return EquipeProjetoStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _equipeProjeto;
    });
    _safeInit(() {
      _atividades = prefs
              .getStringList('ff_atividades')
              ?.map((x) {
                try {
                  return AtividadeStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _atividades;
    });
    _safeInit(() {
      _boletins = prefs
              .getStringList('ff_boletins')
              ?.map((x) {
                try {
                  return BoletimStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _boletins;
    });
    _safeInit(() {
      _atividadesBoletim = prefs
              .getStringList('ff_atividadesBoletim')
              ?.map((x) {
                try {
                  return AtividadeBoletimStruct.fromSerializableMap(
                      jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _atividadesBoletim;
    });
    _safeInit(() {
      _furosBoletim = prefs
              .getStringList('ff_furosBoletim')
              ?.map((x) {
                try {
                  return FuroBoletimStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _furosBoletim;
    });
    _safeInit(() {
      _lstDiametro = prefs
              .getStringList('ff_lstDiametro')
              ?.map((x) {
                try {
                  return DiametroStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _lstDiametro;
    });
    _safeInit(() {
      _lstConsistencia = prefs
              .getStringList('ff_lstConsistencia')
              ?.map((x) {
                try {
                  return ConsistenciaStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _lstConsistencia;
    });
    _safeInit(() {
      _lstOrientacao = prefs
              .getStringList('ff_lstOrientacao')
              ?.map((x) {
                try {
                  return OrientacaoStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _lstOrientacao;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  ParametrosStruct _parametros = ParametrosStruct();
  ParametrosStruct get parametros => _parametros;
  set parametros(ParametrosStruct value) {
    _parametros = value;
    prefs.setString('ff_parametros', value.serialize());
  }

  void updateParametrosStruct(Function(ParametrosStruct) updateFn) {
    updateFn(_parametros);
    prefs.setString('ff_parametros', _parametros.serialize());
  }

  List<ClienteStruct> _clientes = [];
  List<ClienteStruct> get clientes => _clientes;
  set clientes(List<ClienteStruct> value) {
    _clientes = value;
    prefs.setStringList(
        'ff_clientes', value.map((x) => x.serialize()).toList());
  }

  void addToClientes(ClienteStruct value) {
    clientes.add(value);
    prefs.setStringList(
        'ff_clientes', _clientes.map((x) => x.serialize()).toList());
  }

  void removeFromClientes(ClienteStruct value) {
    clientes.remove(value);
    prefs.setStringList(
        'ff_clientes', _clientes.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromClientes(int index) {
    clientes.removeAt(index);
    prefs.setStringList(
        'ff_clientes', _clientes.map((x) => x.serialize()).toList());
  }

  void updateClientesAtIndex(
    int index,
    ClienteStruct Function(ClienteStruct) updateFn,
  ) {
    clientes[index] = updateFn(_clientes[index]);
    prefs.setStringList(
        'ff_clientes', _clientes.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInClientes(int index, ClienteStruct value) {
    clientes.insert(index, value);
    prefs.setStringList(
        'ff_clientes', _clientes.map((x) => x.serialize()).toList());
  }

  List<ProjetoStruct> _projetos = [];
  List<ProjetoStruct> get projetos => _projetos;
  set projetos(List<ProjetoStruct> value) {
    _projetos = value;
    prefs.setStringList(
        'ff_projetos', value.map((x) => x.serialize()).toList());
  }

  void addToProjetos(ProjetoStruct value) {
    projetos.add(value);
    prefs.setStringList(
        'ff_projetos', _projetos.map((x) => x.serialize()).toList());
  }

  void removeFromProjetos(ProjetoStruct value) {
    projetos.remove(value);
    prefs.setStringList(
        'ff_projetos', _projetos.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromProjetos(int index) {
    projetos.removeAt(index);
    prefs.setStringList(
        'ff_projetos', _projetos.map((x) => x.serialize()).toList());
  }

  void updateProjetosAtIndex(
    int index,
    ProjetoStruct Function(ProjetoStruct) updateFn,
  ) {
    projetos[index] = updateFn(_projetos[index]);
    prefs.setStringList(
        'ff_projetos', _projetos.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInProjetos(int index, ProjetoStruct value) {
    projetos.insert(index, value);
    prefs.setStringList(
        'ff_projetos', _projetos.map((x) => x.serialize()).toList());
  }

  List<AlvoStruct> _alvos = [];
  List<AlvoStruct> get alvos => _alvos;
  set alvos(List<AlvoStruct> value) {
    _alvos = value;
    prefs.setStringList('ff_alvos', value.map((x) => x.serialize()).toList());
  }

  void addToAlvos(AlvoStruct value) {
    alvos.add(value);
    prefs.setStringList('ff_alvos', _alvos.map((x) => x.serialize()).toList());
  }

  void removeFromAlvos(AlvoStruct value) {
    alvos.remove(value);
    prefs.setStringList('ff_alvos', _alvos.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromAlvos(int index) {
    alvos.removeAt(index);
    prefs.setStringList('ff_alvos', _alvos.map((x) => x.serialize()).toList());
  }

  void updateAlvosAtIndex(
    int index,
    AlvoStruct Function(AlvoStruct) updateFn,
  ) {
    alvos[index] = updateFn(_alvos[index]);
    prefs.setStringList('ff_alvos', _alvos.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInAlvos(int index, AlvoStruct value) {
    alvos.insert(index, value);
    prefs.setStringList('ff_alvos', _alvos.map((x) => x.serialize()).toList());
  }

  List<SondaStruct> _sondas = [];
  List<SondaStruct> get sondas => _sondas;
  set sondas(List<SondaStruct> value) {
    _sondas = value;
    prefs.setStringList('ff_sondas', value.map((x) => x.serialize()).toList());
  }

  void addToSondas(SondaStruct value) {
    sondas.add(value);
    prefs.setStringList(
        'ff_sondas', _sondas.map((x) => x.serialize()).toList());
  }

  void removeFromSondas(SondaStruct value) {
    sondas.remove(value);
    prefs.setStringList(
        'ff_sondas', _sondas.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromSondas(int index) {
    sondas.removeAt(index);
    prefs.setStringList(
        'ff_sondas', _sondas.map((x) => x.serialize()).toList());
  }

  void updateSondasAtIndex(
    int index,
    SondaStruct Function(SondaStruct) updateFn,
  ) {
    sondas[index] = updateFn(_sondas[index]);
    prefs.setStringList(
        'ff_sondas', _sondas.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInSondas(int index, SondaStruct value) {
    sondas.insert(index, value);
    prefs.setStringList(
        'ff_sondas', _sondas.map((x) => x.serialize()).toList());
  }

  List<FuroStruct> _furos = [];
  List<FuroStruct> get furos => _furos;
  set furos(List<FuroStruct> value) {
    _furos = value;
    prefs.setStringList('ff_furos', value.map((x) => x.serialize()).toList());
  }

  void addToFuros(FuroStruct value) {
    furos.add(value);
    prefs.setStringList('ff_furos', _furos.map((x) => x.serialize()).toList());
  }

  void removeFromFuros(FuroStruct value) {
    furos.remove(value);
    prefs.setStringList('ff_furos', _furos.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromFuros(int index) {
    furos.removeAt(index);
    prefs.setStringList('ff_furos', _furos.map((x) => x.serialize()).toList());
  }

  void updateFurosAtIndex(
    int index,
    FuroStruct Function(FuroStruct) updateFn,
  ) {
    furos[index] = updateFn(_furos[index]);
    prefs.setStringList('ff_furos', _furos.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInFuros(int index, FuroStruct value) {
    furos.insert(index, value);
    prefs.setStringList('ff_furos', _furos.map((x) => x.serialize()).toList());
  }

  List<TurnoStruct> _turnos = [];
  List<TurnoStruct> get turnos => _turnos;
  set turnos(List<TurnoStruct> value) {
    _turnos = value;
    prefs.setStringList('ff_turnos', value.map((x) => x.serialize()).toList());
  }

  void addToTurnos(TurnoStruct value) {
    turnos.add(value);
    prefs.setStringList(
        'ff_turnos', _turnos.map((x) => x.serialize()).toList());
  }

  void removeFromTurnos(TurnoStruct value) {
    turnos.remove(value);
    prefs.setStringList(
        'ff_turnos', _turnos.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromTurnos(int index) {
    turnos.removeAt(index);
    prefs.setStringList(
        'ff_turnos', _turnos.map((x) => x.serialize()).toList());
  }

  void updateTurnosAtIndex(
    int index,
    TurnoStruct Function(TurnoStruct) updateFn,
  ) {
    turnos[index] = updateFn(_turnos[index]);
    prefs.setStringList(
        'ff_turnos', _turnos.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInTurnos(int index, TurnoStruct value) {
    turnos.insert(index, value);
    prefs.setStringList(
        'ff_turnos', _turnos.map((x) => x.serialize()).toList());
  }

  List<EquipeStruct> _equipes = [];
  List<EquipeStruct> get equipes => _equipes;
  set equipes(List<EquipeStruct> value) {
    _equipes = value;
    prefs.setStringList('ff_equipes', value.map((x) => x.serialize()).toList());
  }

  void addToEquipes(EquipeStruct value) {
    equipes.add(value);
    prefs.setStringList(
        'ff_equipes', _equipes.map((x) => x.serialize()).toList());
  }

  void removeFromEquipes(EquipeStruct value) {
    equipes.remove(value);
    prefs.setStringList(
        'ff_equipes', _equipes.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromEquipes(int index) {
    equipes.removeAt(index);
    prefs.setStringList(
        'ff_equipes', _equipes.map((x) => x.serialize()).toList());
  }

  void updateEquipesAtIndex(
    int index,
    EquipeStruct Function(EquipeStruct) updateFn,
  ) {
    equipes[index] = updateFn(_equipes[index]);
    prefs.setStringList(
        'ff_equipes', _equipes.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInEquipes(int index, EquipeStruct value) {
    equipes.insert(index, value);
    prefs.setStringList(
        'ff_equipes', _equipes.map((x) => x.serialize()).toList());
  }

  List<EquipeProjetoStruct> _equipeProjeto = [];
  List<EquipeProjetoStruct> get equipeProjeto => _equipeProjeto;
  set equipeProjeto(List<EquipeProjetoStruct> value) {
    _equipeProjeto = value;
    prefs.setStringList(
        'ff_equipeProjeto', value.map((x) => x.serialize()).toList());
  }

  void addToEquipeProjeto(EquipeProjetoStruct value) {
    equipeProjeto.add(value);
    prefs.setStringList(
        'ff_equipeProjeto', _equipeProjeto.map((x) => x.serialize()).toList());
  }

  void removeFromEquipeProjeto(EquipeProjetoStruct value) {
    equipeProjeto.remove(value);
    prefs.setStringList(
        'ff_equipeProjeto', _equipeProjeto.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromEquipeProjeto(int index) {
    equipeProjeto.removeAt(index);
    prefs.setStringList(
        'ff_equipeProjeto', _equipeProjeto.map((x) => x.serialize()).toList());
  }

  void updateEquipeProjetoAtIndex(
    int index,
    EquipeProjetoStruct Function(EquipeProjetoStruct) updateFn,
  ) {
    equipeProjeto[index] = updateFn(_equipeProjeto[index]);
    prefs.setStringList(
        'ff_equipeProjeto', _equipeProjeto.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInEquipeProjeto(int index, EquipeProjetoStruct value) {
    equipeProjeto.insert(index, value);
    prefs.setStringList(
        'ff_equipeProjeto', _equipeProjeto.map((x) => x.serialize()).toList());
  }

  List<AtividadeStruct> _atividades = [];
  List<AtividadeStruct> get atividades => _atividades;
  set atividades(List<AtividadeStruct> value) {
    _atividades = value;
    prefs.setStringList(
        'ff_atividades', value.map((x) => x.serialize()).toList());
  }

  void addToAtividades(AtividadeStruct value) {
    atividades.add(value);
    prefs.setStringList(
        'ff_atividades', _atividades.map((x) => x.serialize()).toList());
  }

  void removeFromAtividades(AtividadeStruct value) {
    atividades.remove(value);
    prefs.setStringList(
        'ff_atividades', _atividades.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromAtividades(int index) {
    atividades.removeAt(index);
    prefs.setStringList(
        'ff_atividades', _atividades.map((x) => x.serialize()).toList());
  }

  void updateAtividadesAtIndex(
    int index,
    AtividadeStruct Function(AtividadeStruct) updateFn,
  ) {
    atividades[index] = updateFn(_atividades[index]);
    prefs.setStringList(
        'ff_atividades', _atividades.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInAtividades(int index, AtividadeStruct value) {
    atividades.insert(index, value);
    prefs.setStringList(
        'ff_atividades', _atividades.map((x) => x.serialize()).toList());
  }

  List<BoletimStruct> _boletins = [];
  List<BoletimStruct> get boletins => _boletins;
  set boletins(List<BoletimStruct> value) {
    _boletins = value;
    prefs.setStringList(
        'ff_boletins', value.map((x) => x.serialize()).toList());
  }

  void addToBoletins(BoletimStruct value) {
    boletins.add(value);
    prefs.setStringList(
        'ff_boletins', _boletins.map((x) => x.serialize()).toList());
  }

  void removeFromBoletins(BoletimStruct value) {
    boletins.remove(value);
    prefs.setStringList(
        'ff_boletins', _boletins.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromBoletins(int index) {
    boletins.removeAt(index);
    prefs.setStringList(
        'ff_boletins', _boletins.map((x) => x.serialize()).toList());
  }

  void updateBoletinsAtIndex(
    int index,
    BoletimStruct Function(BoletimStruct) updateFn,
  ) {
    boletins[index] = updateFn(_boletins[index]);
    prefs.setStringList(
        'ff_boletins', _boletins.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInBoletins(int index, BoletimStruct value) {
    boletins.insert(index, value);
    prefs.setStringList(
        'ff_boletins', _boletins.map((x) => x.serialize()).toList());
  }

  List<AtividadeBoletimStruct> _atividadesBoletim = [];
  List<AtividadeBoletimStruct> get atividadesBoletim => _atividadesBoletim;
  set atividadesBoletim(List<AtividadeBoletimStruct> value) {
    _atividadesBoletim = value;
    prefs.setStringList(
        'ff_atividadesBoletim', value.map((x) => x.serialize()).toList());
  }

  void addToAtividadesBoletim(AtividadeBoletimStruct value) {
    atividadesBoletim.add(value);
    prefs.setStringList('ff_atividadesBoletim',
        _atividadesBoletim.map((x) => x.serialize()).toList());
  }

  void removeFromAtividadesBoletim(AtividadeBoletimStruct value) {
    atividadesBoletim.remove(value);
    prefs.setStringList('ff_atividadesBoletim',
        _atividadesBoletim.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromAtividadesBoletim(int index) {
    atividadesBoletim.removeAt(index);
    prefs.setStringList('ff_atividadesBoletim',
        _atividadesBoletim.map((x) => x.serialize()).toList());
  }

  void updateAtividadesBoletimAtIndex(
    int index,
    AtividadeBoletimStruct Function(AtividadeBoletimStruct) updateFn,
  ) {
    atividadesBoletim[index] = updateFn(_atividadesBoletim[index]);
    prefs.setStringList('ff_atividadesBoletim',
        _atividadesBoletim.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInAtividadesBoletim(
      int index, AtividadeBoletimStruct value) {
    atividadesBoletim.insert(index, value);
    prefs.setStringList('ff_atividadesBoletim',
        _atividadesBoletim.map((x) => x.serialize()).toList());
  }

  List<FuroBoletimStruct> _furosBoletim = [];
  List<FuroBoletimStruct> get furosBoletim => _furosBoletim;
  set furosBoletim(List<FuroBoletimStruct> value) {
    _furosBoletim = value;
    prefs.setStringList(
        'ff_furosBoletim', value.map((x) => x.serialize()).toList());
  }

  void addToFurosBoletim(FuroBoletimStruct value) {
    furosBoletim.add(value);
    prefs.setStringList(
        'ff_furosBoletim', _furosBoletim.map((x) => x.serialize()).toList());
  }

  void removeFromFurosBoletim(FuroBoletimStruct value) {
    furosBoletim.remove(value);
    prefs.setStringList(
        'ff_furosBoletim', _furosBoletim.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromFurosBoletim(int index) {
    furosBoletim.removeAt(index);
    prefs.setStringList(
        'ff_furosBoletim', _furosBoletim.map((x) => x.serialize()).toList());
  }

  void updateFurosBoletimAtIndex(
    int index,
    FuroBoletimStruct Function(FuroBoletimStruct) updateFn,
  ) {
    furosBoletim[index] = updateFn(_furosBoletim[index]);
    prefs.setStringList(
        'ff_furosBoletim', _furosBoletim.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInFurosBoletim(int index, FuroBoletimStruct value) {
    furosBoletim.insert(index, value);
    prefs.setStringList(
        'ff_furosBoletim', _furosBoletim.map((x) => x.serialize()).toList());
  }

  int _contador = 0;
  int get contador => _contador;
  set contador(int value) {
    _contador = value;
  }

  List<ProjetoStruct> _lstProjetosCliente = [];
  List<ProjetoStruct> get lstProjetosCliente => _lstProjetosCliente;
  set lstProjetosCliente(List<ProjetoStruct> value) {
    _lstProjetosCliente = value;
  }

  void addToLstProjetosCliente(ProjetoStruct value) {
    lstProjetosCliente.add(value);
  }

  void removeFromLstProjetosCliente(ProjetoStruct value) {
    lstProjetosCliente.remove(value);
  }

  void removeAtIndexFromLstProjetosCliente(int index) {
    lstProjetosCliente.removeAt(index);
  }

  void updateLstProjetosClienteAtIndex(
    int index,
    ProjetoStruct Function(ProjetoStruct) updateFn,
  ) {
    lstProjetosCliente[index] = updateFn(_lstProjetosCliente[index]);
  }

  void insertAtIndexInLstProjetosCliente(int index, ProjetoStruct value) {
    lstProjetosCliente.insert(index, value);
  }

  List<AlvoStruct> _lstAlvosProjeto = [];
  List<AlvoStruct> get lstAlvosProjeto => _lstAlvosProjeto;
  set lstAlvosProjeto(List<AlvoStruct> value) {
    _lstAlvosProjeto = value;
  }

  void addToLstAlvosProjeto(AlvoStruct value) {
    lstAlvosProjeto.add(value);
  }

  void removeFromLstAlvosProjeto(AlvoStruct value) {
    lstAlvosProjeto.remove(value);
  }

  void removeAtIndexFromLstAlvosProjeto(int index) {
    lstAlvosProjeto.removeAt(index);
  }

  void updateLstAlvosProjetoAtIndex(
    int index,
    AlvoStruct Function(AlvoStruct) updateFn,
  ) {
    lstAlvosProjeto[index] = updateFn(_lstAlvosProjeto[index]);
  }

  void insertAtIndexInLstAlvosProjeto(int index, AlvoStruct value) {
    lstAlvosProjeto.insert(index, value);
  }

  List<TurnoStruct> _lstTurnosProjeto = [];
  List<TurnoStruct> get lstTurnosProjeto => _lstTurnosProjeto;
  set lstTurnosProjeto(List<TurnoStruct> value) {
    _lstTurnosProjeto = value;
  }

  void addToLstTurnosProjeto(TurnoStruct value) {
    lstTurnosProjeto.add(value);
  }

  void removeFromLstTurnosProjeto(TurnoStruct value) {
    lstTurnosProjeto.remove(value);
  }

  void removeAtIndexFromLstTurnosProjeto(int index) {
    lstTurnosProjeto.removeAt(index);
  }

  void updateLstTurnosProjetoAtIndex(
    int index,
    TurnoStruct Function(TurnoStruct) updateFn,
  ) {
    lstTurnosProjeto[index] = updateFn(_lstTurnosProjeto[index]);
  }

  void insertAtIndexInLstTurnosProjeto(int index, TurnoStruct value) {
    lstTurnosProjeto.insert(index, value);
  }

  List<FuroStruct> _lstFurosAlvo = [];
  List<FuroStruct> get lstFurosAlvo => _lstFurosAlvo;
  set lstFurosAlvo(List<FuroStruct> value) {
    _lstFurosAlvo = value;
  }

  void addToLstFurosAlvo(FuroStruct value) {
    lstFurosAlvo.add(value);
  }

  void removeFromLstFurosAlvo(FuroStruct value) {
    lstFurosAlvo.remove(value);
  }

  void removeAtIndexFromLstFurosAlvo(int index) {
    lstFurosAlvo.removeAt(index);
  }

  void updateLstFurosAlvoAtIndex(
    int index,
    FuroStruct Function(FuroStruct) updateFn,
  ) {
    lstFurosAlvo[index] = updateFn(_lstFurosAlvo[index]);
  }

  void insertAtIndexInLstFurosAlvo(int index, FuroStruct value) {
    lstFurosAlvo.insert(index, value);
  }

  List<EquipeProjetoStruct> _lstEquipeProjeto = [];
  List<EquipeProjetoStruct> get lstEquipeProjeto => _lstEquipeProjeto;
  set lstEquipeProjeto(List<EquipeProjetoStruct> value) {
    _lstEquipeProjeto = value;
  }

  void addToLstEquipeProjeto(EquipeProjetoStruct value) {
    lstEquipeProjeto.add(value);
  }

  void removeFromLstEquipeProjeto(EquipeProjetoStruct value) {
    lstEquipeProjeto.remove(value);
  }

  void removeAtIndexFromLstEquipeProjeto(int index) {
    lstEquipeProjeto.removeAt(index);
  }

  void updateLstEquipeProjetoAtIndex(
    int index,
    EquipeProjetoStruct Function(EquipeProjetoStruct) updateFn,
  ) {
    lstEquipeProjeto[index] = updateFn(_lstEquipeProjeto[index]);
  }

  void insertAtIndexInLstEquipeProjeto(int index, EquipeProjetoStruct value) {
    lstEquipeProjeto.insert(index, value);
  }

  List<EquipeProjetoStruct> _lstSupervisor = [];
  List<EquipeProjetoStruct> get lstSupervisor => _lstSupervisor;
  set lstSupervisor(List<EquipeProjetoStruct> value) {
    _lstSupervisor = value;
  }

  void addToLstSupervisor(EquipeProjetoStruct value) {
    lstSupervisor.add(value);
  }

  void removeFromLstSupervisor(EquipeProjetoStruct value) {
    lstSupervisor.remove(value);
  }

  void removeAtIndexFromLstSupervisor(int index) {
    lstSupervisor.removeAt(index);
  }

  void updateLstSupervisorAtIndex(
    int index,
    EquipeProjetoStruct Function(EquipeProjetoStruct) updateFn,
  ) {
    lstSupervisor[index] = updateFn(_lstSupervisor[index]);
  }

  void insertAtIndexInLstSupervisor(int index, EquipeProjetoStruct value) {
    lstSupervisor.insert(index, value);
  }

  List<EquipeProjetoStruct> _lstOperador = [];
  List<EquipeProjetoStruct> get lstOperador => _lstOperador;
  set lstOperador(List<EquipeProjetoStruct> value) {
    _lstOperador = value;
  }

  void addToLstOperador(EquipeProjetoStruct value) {
    lstOperador.add(value);
  }

  void removeFromLstOperador(EquipeProjetoStruct value) {
    lstOperador.remove(value);
  }

  void removeAtIndexFromLstOperador(int index) {
    lstOperador.removeAt(index);
  }

  void updateLstOperadorAtIndex(
    int index,
    EquipeProjetoStruct Function(EquipeProjetoStruct) updateFn,
  ) {
    lstOperador[index] = updateFn(_lstOperador[index]);
  }

  void insertAtIndexInLstOperador(int index, EquipeProjetoStruct value) {
    lstOperador.insert(index, value);
  }

  List<EquipeProjetoStruct> _lstAuxiliar = [];
  List<EquipeProjetoStruct> get lstAuxiliar => _lstAuxiliar;
  set lstAuxiliar(List<EquipeProjetoStruct> value) {
    _lstAuxiliar = value;
  }

  void addToLstAuxiliar(EquipeProjetoStruct value) {
    lstAuxiliar.add(value);
  }

  void removeFromLstAuxiliar(EquipeProjetoStruct value) {
    lstAuxiliar.remove(value);
  }

  void removeAtIndexFromLstAuxiliar(int index) {
    lstAuxiliar.removeAt(index);
  }

  void updateLstAuxiliarAtIndex(
    int index,
    EquipeProjetoStruct Function(EquipeProjetoStruct) updateFn,
  ) {
    lstAuxiliar[index] = updateFn(_lstAuxiliar[index]);
  }

  void insertAtIndexInLstAuxiliar(int index, EquipeProjetoStruct value) {
    lstAuxiliar.insert(index, value);
  }

  List<EquipeProjetoStruct> _lstFiscal = [];
  List<EquipeProjetoStruct> get lstFiscal => _lstFiscal;
  set lstFiscal(List<EquipeProjetoStruct> value) {
    _lstFiscal = value;
  }

  void addToLstFiscal(EquipeProjetoStruct value) {
    lstFiscal.add(value);
  }

  void removeFromLstFiscal(EquipeProjetoStruct value) {
    lstFiscal.remove(value);
  }

  void removeAtIndexFromLstFiscal(int index) {
    lstFiscal.removeAt(index);
  }

  void updateLstFiscalAtIndex(
    int index,
    EquipeProjetoStruct Function(EquipeProjetoStruct) updateFn,
  ) {
    lstFiscal[index] = updateFn(_lstFiscal[index]);
  }

  void insertAtIndexInLstFiscal(int index, EquipeProjetoStruct value) {
    lstFiscal.insert(index, value);
  }

  List<EquipeStruct> _lstSupervisorSelecionado = [];
  List<EquipeStruct> get lstSupervisorSelecionado => _lstSupervisorSelecionado;
  set lstSupervisorSelecionado(List<EquipeStruct> value) {
    _lstSupervisorSelecionado = value;
  }

  void addToLstSupervisorSelecionado(EquipeStruct value) {
    lstSupervisorSelecionado.add(value);
  }

  void removeFromLstSupervisorSelecionado(EquipeStruct value) {
    lstSupervisorSelecionado.remove(value);
  }

  void removeAtIndexFromLstSupervisorSelecionado(int index) {
    lstSupervisorSelecionado.removeAt(index);
  }

  void updateLstSupervisorSelecionadoAtIndex(
    int index,
    EquipeStruct Function(EquipeStruct) updateFn,
  ) {
    lstSupervisorSelecionado[index] =
        updateFn(_lstSupervisorSelecionado[index]);
  }

  void insertAtIndexInLstSupervisorSelecionado(int index, EquipeStruct value) {
    lstSupervisorSelecionado.insert(index, value);
  }

  List<EquipeStruct> _lstOperadorSelecionado = [];
  List<EquipeStruct> get lstOperadorSelecionado => _lstOperadorSelecionado;
  set lstOperadorSelecionado(List<EquipeStruct> value) {
    _lstOperadorSelecionado = value;
  }

  void addToLstOperadorSelecionado(EquipeStruct value) {
    lstOperadorSelecionado.add(value);
  }

  void removeFromLstOperadorSelecionado(EquipeStruct value) {
    lstOperadorSelecionado.remove(value);
  }

  void removeAtIndexFromLstOperadorSelecionado(int index) {
    lstOperadorSelecionado.removeAt(index);
  }

  void updateLstOperadorSelecionadoAtIndex(
    int index,
    EquipeStruct Function(EquipeStruct) updateFn,
  ) {
    lstOperadorSelecionado[index] = updateFn(_lstOperadorSelecionado[index]);
  }

  void insertAtIndexInLstOperadorSelecionado(int index, EquipeStruct value) {
    lstOperadorSelecionado.insert(index, value);
  }

  List<EquipeStruct> _lstAuxiliarSelecionado = [];
  List<EquipeStruct> get lstAuxiliarSelecionado => _lstAuxiliarSelecionado;
  set lstAuxiliarSelecionado(List<EquipeStruct> value) {
    _lstAuxiliarSelecionado = value;
  }

  void addToLstAuxiliarSelecionado(EquipeStruct value) {
    lstAuxiliarSelecionado.add(value);
  }

  void removeFromLstAuxiliarSelecionado(EquipeStruct value) {
    lstAuxiliarSelecionado.remove(value);
  }

  void removeAtIndexFromLstAuxiliarSelecionado(int index) {
    lstAuxiliarSelecionado.removeAt(index);
  }

  void updateLstAuxiliarSelecionadoAtIndex(
    int index,
    EquipeStruct Function(EquipeStruct) updateFn,
  ) {
    lstAuxiliarSelecionado[index] = updateFn(_lstAuxiliarSelecionado[index]);
  }

  void insertAtIndexInLstAuxiliarSelecionado(int index, EquipeStruct value) {
    lstAuxiliarSelecionado.insert(index, value);
  }

  List<AtividadeStruct> _lstAtividades = [];
  List<AtividadeStruct> get lstAtividades => _lstAtividades;
  set lstAtividades(List<AtividadeStruct> value) {
    _lstAtividades = value;
  }

  void addToLstAtividades(AtividadeStruct value) {
    lstAtividades.add(value);
  }

  void removeFromLstAtividades(AtividadeStruct value) {
    lstAtividades.remove(value);
  }

  void removeAtIndexFromLstAtividades(int index) {
    lstAtividades.removeAt(index);
  }

  void updateLstAtividadesAtIndex(
    int index,
    AtividadeStruct Function(AtividadeStruct) updateFn,
  ) {
    lstAtividades[index] = updateFn(_lstAtividades[index]);
  }

  void insertAtIndexInLstAtividades(int index, AtividadeStruct value) {
    lstAtividades.insert(index, value);
  }

  List<DiametroStruct> _lstDiametro = [];
  List<DiametroStruct> get lstDiametro => _lstDiametro;
  set lstDiametro(List<DiametroStruct> value) {
    _lstDiametro = value;
    prefs.setStringList(
        'ff_lstDiametro', value.map((x) => x.serialize()).toList());
  }

  void addToLstDiametro(DiametroStruct value) {
    lstDiametro.add(value);
    prefs.setStringList(
        'ff_lstDiametro', _lstDiametro.map((x) => x.serialize()).toList());
  }

  void removeFromLstDiametro(DiametroStruct value) {
    lstDiametro.remove(value);
    prefs.setStringList(
        'ff_lstDiametro', _lstDiametro.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromLstDiametro(int index) {
    lstDiametro.removeAt(index);
    prefs.setStringList(
        'ff_lstDiametro', _lstDiametro.map((x) => x.serialize()).toList());
  }

  void updateLstDiametroAtIndex(
    int index,
    DiametroStruct Function(DiametroStruct) updateFn,
  ) {
    lstDiametro[index] = updateFn(_lstDiametro[index]);
    prefs.setStringList(
        'ff_lstDiametro', _lstDiametro.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInLstDiametro(int index, DiametroStruct value) {
    lstDiametro.insert(index, value);
    prefs.setStringList(
        'ff_lstDiametro', _lstDiametro.map((x) => x.serialize()).toList());
  }

  List<ConsistenciaStruct> _lstConsistencia = [];
  List<ConsistenciaStruct> get lstConsistencia => _lstConsistencia;
  set lstConsistencia(List<ConsistenciaStruct> value) {
    _lstConsistencia = value;
    prefs.setStringList(
        'ff_lstConsistencia', value.map((x) => x.serialize()).toList());
  }

  void addToLstConsistencia(ConsistenciaStruct value) {
    lstConsistencia.add(value);
    prefs.setStringList('ff_lstConsistencia',
        _lstConsistencia.map((x) => x.serialize()).toList());
  }

  void removeFromLstConsistencia(ConsistenciaStruct value) {
    lstConsistencia.remove(value);
    prefs.setStringList('ff_lstConsistencia',
        _lstConsistencia.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromLstConsistencia(int index) {
    lstConsistencia.removeAt(index);
    prefs.setStringList('ff_lstConsistencia',
        _lstConsistencia.map((x) => x.serialize()).toList());
  }

  void updateLstConsistenciaAtIndex(
    int index,
    ConsistenciaStruct Function(ConsistenciaStruct) updateFn,
  ) {
    lstConsistencia[index] = updateFn(_lstConsistencia[index]);
    prefs.setStringList('ff_lstConsistencia',
        _lstConsistencia.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInLstConsistencia(int index, ConsistenciaStruct value) {
    lstConsistencia.insert(index, value);
    prefs.setStringList('ff_lstConsistencia',
        _lstConsistencia.map((x) => x.serialize()).toList());
  }

  List<OrientacaoStruct> _lstOrientacao = [];
  List<OrientacaoStruct> get lstOrientacao => _lstOrientacao;
  set lstOrientacao(List<OrientacaoStruct> value) {
    _lstOrientacao = value;
    prefs.setStringList(
        'ff_lstOrientacao', value.map((x) => x.serialize()).toList());
  }

  void addToLstOrientacao(OrientacaoStruct value) {
    lstOrientacao.add(value);
    prefs.setStringList(
        'ff_lstOrientacao', _lstOrientacao.map((x) => x.serialize()).toList());
  }

  void removeFromLstOrientacao(OrientacaoStruct value) {
    lstOrientacao.remove(value);
    prefs.setStringList(
        'ff_lstOrientacao', _lstOrientacao.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromLstOrientacao(int index) {
    lstOrientacao.removeAt(index);
    prefs.setStringList(
        'ff_lstOrientacao', _lstOrientacao.map((x) => x.serialize()).toList());
  }

  void updateLstOrientacaoAtIndex(
    int index,
    OrientacaoStruct Function(OrientacaoStruct) updateFn,
  ) {
    lstOrientacao[index] = updateFn(_lstOrientacao[index]);
    prefs.setStringList(
        'ff_lstOrientacao', _lstOrientacao.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInLstOrientacao(int index, OrientacaoStruct value) {
    lstOrientacao.insert(index, value);
    prefs.setStringList(
        'ff_lstOrientacao', _lstOrientacao.map((x) => x.serialize()).toList());
  }

  bool _isPerfuracao = false;
  bool get isPerfuracao => _isPerfuracao;
  set isPerfuracao(bool value) {
    _isPerfuracao = value;
  }

  String _boletimID = '';
  String get boletimID => _boletimID;
  set boletimID(String value) {
    _boletimID = value;
  }

  String _duracao = '';
  String get duracao => _duracao;
  set duracao(String value) {
    _duracao = value;
  }

  DateTime? _pInicioAtividade;
  DateTime? get pInicioAtividade => _pInicioAtividade;
  set pInicioAtividade(DateTime? value) {
    _pInicioAtividade = value;
  }

  DateTime? _pTerminoAtividade;
  DateTime? get pTerminoAtividade => _pTerminoAtividade;
  set pTerminoAtividade(DateTime? value) {
    _pTerminoAtividade = value;
  }

  DocumentReference? _pUltimaAtividade;
  DocumentReference? get pUltimaAtividade => _pUltimaAtividade;
  set pUltimaAtividade(DocumentReference? value) {
    _pUltimaAtividade = value;
  }

  DateTime? _pValidateInicioAtividade;
  DateTime? get pValidateInicioAtividade => _pValidateInicioAtividade;
  set pValidateInicioAtividade(DateTime? value) {
    _pValidateInicioAtividade = value;
  }

  TurnoStruct _pValidateTurno = TurnoStruct();
  TurnoStruct get pValidateTurno => _pValidateTurno;
  set pValidateTurno(TurnoStruct value) {
    _pValidateTurno = value;
  }

  void updatePValidateTurnoStruct(Function(TurnoStruct) updateFn) {
    updateFn(_pValidateTurno);
  }

  DateTime? _dataBoletim;
  DateTime? get dataBoletim => _dataBoletim;
  set dataBoletim(DateTime? value) {
    _dataBoletim = value;
  }

  BoletimStruct _boletimSelecionado = BoletimStruct();
  BoletimStruct get boletimSelecionado => _boletimSelecionado;
  set boletimSelecionado(BoletimStruct value) {
    _boletimSelecionado = value;
  }

  void updateBoletimSelecionadoStruct(Function(BoletimStruct) updateFn) {
    updateFn(_boletimSelecionado);
  }

  FuroStruct _furoAtivo = FuroStruct();
  FuroStruct get furoAtivo => _furoAtivo;
  set furoAtivo(FuroStruct value) {
    _furoAtivo = value;
  }

  void updateFuroAtivoStruct(Function(FuroStruct) updateFn) {
    updateFn(_furoAtivo);
  }

  bool _erro = false;
  bool get erro => _erro;
  set erro(bool value) {
    _erro = value;
  }

  bool _errCliente = false;
  bool get errCliente => _errCliente;
  set errCliente(bool value) {
    _errCliente = value;
  }

  bool _errProjeto = false;
  bool get errProjeto => _errProjeto;
  set errProjeto(bool value) {
    _errProjeto = value;
  }

  bool _errFuro = false;
  bool get errFuro => _errFuro;
  set errFuro(bool value) {
    _errFuro = value;
  }

  bool _errSonda = false;
  bool get errSonda => _errSonda;
  set errSonda(bool value) {
    _errSonda = value;
  }

  bool _errData = false;
  bool get errData => _errData;
  set errData(bool value) {
    _errData = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
