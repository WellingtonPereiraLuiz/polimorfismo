import '../interface/pessoas_interface.dart';
import '../interface/trabalho_interface.dart';

class PedreiroModel implements TrabalhoInterface, PessoasInterface {
  PedreiroModel({
    required this.horarioDeEntrada,
    required this.horarioDeSaida,
    required this.salarioOuDiaria,
  });

  int qtaSacosDeCimento = 10;
  int qtaDeTijolos = 200;
  int qtaDeMassa = 0;
  int qtaDeConcreto = 0;
  @override
  bool cansado = false;
  @override
  bool fome = false;
  @override
  bool sede = false;
  @override
  double horarioDeEntrada;
  @override
  double horarioDeSaida;
  @override
  double salarioOuDiaria;
  // late int c;
  // late int k;
  void prepararMassa() {
    if (fome == false &&
        sede == false &&
        cansado == false &&
        qtaSacosDeCimento >= 10) {
      print("Preparando massa..");
      qtaDeMassa++;
      qtaSacosDeCimento - 10;
      sede = true;
      cansado = true;
      fome = true;
      // c++;
      // if (c > 5) {
      //   sede = true;
      //   cansado = true;
      //   fome = true;
      // }
    } else if (fome == true) {
      print("Voçe esta com fome.");
    } else if (sede == true) {
      print("Voçe esta com sede.");
    } else if (cansado == true) {
      print("Voçe esta cansado.");
    } else if (qtaSacosDeCimento >= 0 && qtaSacosDeCimento < 10) {
      print("Voçe esta com falta de cimento, compre mais.");
    }
  }

  void prepararConcreto() {
    if (fome == false &&
        sede == false &&
        cansado == false &&
        qtaSacosDeCimento >= 10) {
      print("Preparando concreto..");
      qtaDeConcreto++;
      qtaSacosDeCimento - 10;
      sede = true;
      cansado = true;
      fome = true;
      // k++;
      // if (k > 2) {
      //   sede = true;
      //   cansado = true;
      //   fome = true;
      // }
    } else if (fome == true) {
      print("Voçe esta com fome.");
    } else if (sede == true) {
      print("Voçe esta com sede.");
    } else if (cansado == true) {
      print("Voçe esta cansado.");
    } else if (qtaSacosDeCimento >= 0 && qtaSacosDeCimento < 10) {
      print("Voçe esta com falta de cimento, compre mais.");
    }
  }

  void assentarTijolos() {
    if (fome == false &&
        sede == false &&
        cansado == false &&
        qtaDeTijolos >= 10 &&
        qtaDeConcreto >= 2) {
      print("Assentando tijolos..");
      qtaDeTijolos - 10;
      qtaDeConcreto - 2;
      sede = true;
      cansado = true;
      fome = true;
    } else if (fome == true) {
      print("Voçe esta com fome.");
    } else if (sede == true) {
      print("Voçe esta com sede.");
    } else if (cansado == true) {
      print("Voçe esta cansado.");
    } else if (qtaDeTijolos <= 0) {
      print("Voçe esta com falta de tijolos, compre mais.");
    } else if (qtaDeConcreto >= 0 && qtaDeConcreto < 2) {
      print("Faça mais concreto para poder assentar mais tijolos.");
    }
  }

  void erguerMuro() {
    if (fome == false &&
        sede == false &&
        cansado == false &&
        qtaDeTijolos >= 40 &&
        qtaDeMassa >= 4) {
      print("Assentando tijolos..");
      qtaDeTijolos - 40;
      qtaDeMassa - 4;
      sede = true;
      cansado = true;
      fome = true;
    } else if (fome == true) {
      print("Voçe esta com fome.");
    } else if (sede == true) {
      print("Voçe esta com sede.");
    } else if (cansado == true) {
      print("Voçe esta cansado.");
    } else if (qtaDeTijolos <= 0) {
      print("Voçe esta com falta de tijolos, compre mais.");
    } else if (qtaDeMassa >= 0 && qtaDeMassa < 4) {
      print("Faça mais concreto para poder assentar mais tijolos.");
    }
  }

  @override
  void bebercafe() {
    if (sede == true) {
      print("Bebendo cafezinho..");
      sede = false;
    } else {
      print("Não estou com sede, mas mereço um cafezinho.");
    }
  }

  @override
  void beberAgua() {
    if (sede == true) {
      print("Bebendo agua..");
      sede = false;
    } else {
      print('Voçe não esta com sede.');
    }
  }

  @override
  void comer() {
    if (fome == true) {
      print("Voçe esta comendo.");
      fome = false;
    } else {
      print("Voçe não com fome.");
    }
  }

  @override
  void descansar() {
    if (cansado == true) {
      print("Voçe esta descansando.");
      cansado = false;
    } else {
      print("Voçe não esta cansado.");
    }
  }

  @override
  void comprarMaterialNecessario() {
    if (qtaSacosDeCimento <= 5 && qtaDeTijolos <= 50) {
      qtaDeTijolos = 10;
      qtaDeTijolos = 200;
    } else {
      print("Voçe não precisa de mais materiais.");
    }
  }
}
