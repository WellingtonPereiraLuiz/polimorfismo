import 'model/pedreiro_model.dart';

void main() {
  final profissao = PedreiroModel(
      horarioDeEntrada: 07.30, horarioDeSaida: 16.30, salarioOuDiaria: 100);

  profissao.prepararMassa();
  profissao.comer();
  profissao.beberAgua();
  profissao.descansar();
  profissao.prepararMassa();
  profissao.comer();
  profissao.beberAgua();
  profissao.descansar();
  profissao.erguerMuro();
  profissao.erguerMuro();
}
