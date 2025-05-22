import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'row_equipe_state_model.dart';
export 'row_equipe_state_model.dart';

class RowEquipeStateWidget extends StatefulWidget {
  const RowEquipeStateWidget({
    super.key,
    required this.index,
    required this.equipe,
    required this.tipo,
  });

  final int? index;
  final EquipeStruct? equipe;
  final String? tipo;

  @override
  State<RowEquipeStateWidget> createState() => _RowEquipeStateWidgetState();
}

class _RowEquipeStateWidgetState extends State<RowEquipeStateWidget> {
  late RowEquipeStateModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RowEquipeStateModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              if (widget.tipo == 'Supervisor') {
                FFAppState()
                    .removeAtIndexFromLstSupervisorSelecionado(widget.index!);
                FFAppState().update(() {});
              } else {
                if (widget.tipo == 'Operador') {
                  FFAppState()
                      .removeAtIndexFromLstOperadorSelecionado(widget.index!);
                  FFAppState().update(() {});
                } else {
                  if (widget.tipo == 'Auxiliar') {
                    FFAppState().removeAtIndexFromLstAuxiliarSelecionado(
                        widget.index!);
                    FFAppState().update(() {});
                  }
                }
              }
            },
            child: FaIcon(
              FontAwesomeIcons.trashAlt,
              color: FlutterFlowTheme.of(context).secondaryText,
              size: 24.0,
            ),
          ),
          Text(
            valueOrDefault<String>(
              widget.equipe?.nome,
              'Equipe',
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  font: GoogleFonts.readexPro(
                    fontWeight:
                        FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
                  fontSize: 16.0,
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
          ),
        ].divide(SizedBox(width: 10.0)),
      ),
    );
  }
}
