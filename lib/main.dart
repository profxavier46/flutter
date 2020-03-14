//bilbioteca importada para que seu aplicativo funcionR

import 'package:flutter/material.dart';

/* Função principal  void main() é procurada inicialmente quando rodamos o app
* A função runApp irá procurar o parametro que foi passado para que ela rode o
* aplicativo
* e o Aplicativo MyApp(), que será criado posteriomente uma classe,
* se não possuir a mesma (classe) criada para que o runApp compare e 
* renderize a árvore de widgets o seu App não ira funcionar 
*/

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // Este widget é a raiz do seu aplicativo.
  @override
  /* A intenção da notação @override é capturar situações em que uma superclasse
  * renomeia um membro e uma subclasse independente que substituía o membro
  * poderia continuar silenciosamente trabalhando usando a implementação da
  * superclasse.
  */
  Widget build(BuildContext context) {
    return MaterialApp(
        home:Scaffold(
          /* home:=>Essa é a rota exibida primeiro quando o aplicativo é iniciado normalmente, a menos que
          * [initialRoute] seja especificado. Também é a rota exibida se o [initialRoute] não puder ser exibido.
          * ==========================================================================================================
          * Scaffold:=>Implementa a estrutura de layout visual do design básico da superclasse material.
          * Esta classe fornece APIs para mostrar drawers, snack bars e folhas de estilo.
          * #######################################################################################################
          */
          appBar: AppBar(
            // Uma barra de aplicativos à ser exibir na parte superior do Scaffold 
          title: Text("Meu Primeiro App"),
          // Titulo da barra superior exibida no app 
        ),
        body:Container(
          /* O widget no body do scaffold está posicionado na parte superior esquerda do espaço disponível entre a 
          * barra de aplicativos(parte superior e a parte inferior do scaffold). 
          * Container:=>Cria um widget que combina widgets comuns, tais como posicionamento e dimensionamento.
          * colocá-lo em um widget [Center] e faça com que ele seja exibido no centro do body
          */
          child: Row(
            // children:=> Cria uma matriz horizontal de filhos(dependentes).

            children:[
            Text("Nome:"),
            Text("Sobrenome:"),
            Text("Idade:"),

          
            ]// Inicio da matriz horizontal de filhos(dependentes) do seu criador que no caso é linha(Row)
            //  Se não houver direcionalidade do ambiente, e será necessária uma direção do texto para determinar a ordem do layout (que é sempre o caso, a menos que a linha não tenha filhos ou apenas um filho) 
          )
        ) //child:=> Cria um widget que centraliza seu filho, que no caso o filho é o Text, isto é o Text é filho do Widget (componente) Center.
      ),
    ); 
  }
}

