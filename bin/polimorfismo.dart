import 'model/pedreiro_model.dart';

void main() {
  final profissao = PedreiroModel(
      horarioDeEntrada: 07.30, horarioDeSaida: 16.30, salarioOuDiaria: 100);

  profissao.bebercafe();
}
