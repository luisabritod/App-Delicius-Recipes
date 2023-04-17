import 'package:delicius_recipes/models/Recipe.dart';

class RecipeRepository {
  static List<Recipe> bolos = [
    Recipe(
        category: 'Bolos',
        image: 'assets/images/bolo-de-abacaxi-com-anis-baunilha.webp.svg',
        name: 'Bolo de abacaxi com anis e baunilha',
        ingredients: 'ingredients',
        how: 'how',
        rating: 4.65),
    Recipe(
        category: 'Bolos',
        image: 'assets/images/brownie-com-avela-brigadeiro-e-marshmallow.svg',
        name: 'Brownie com avelã, brigadeiro e marshmallow',
        ingredients: 'ingredients',
        how: 'how',
        rating: 4.85),
    Recipe(
        category: 'Bolos',
        image: 'assets/images/buche-de-notel-de-floresta-negra.svg',
        name: 'Bûche de Noël de floresta negra',
        ingredients: 'ingredients',
        how: 'how',
        rating: 4.58)
  ];
  static List<Recipe> doces = [
    Recipe(
        category: 'Doces e sobremesas',
        image: 'assets/images/cocada-mole-brulee.svg',
        name: 'Cocada mole brulée',
        ingredients: 'ingredients',
        how: 'how',
        rating: 4.78),
    Recipe(
        category: 'Doces e sobremesas',
        image: 'assets/images/tartelete-de-framboesa-e-pistache.webp.svg',
        name: 'Tartelete de framboesa e pistache',
        ingredients: 'ingredients',
        how: 'how',
        rating: 4.87),
    Recipe(
        category: 'Doces e sobremesas',
        image: 'assets/images/tartelette-de-pecan.webp.svg',
        name: 'Tartelette de pecan',
        ingredients: 'ingredients',
        how: 'how',
        rating: 5),
  ];
  static List<Recipe> lanches = [
    Recipe(
        category: 'Lanches',
        image: 'assets/images/bolinho-de-arroz-na-air-fryer.svg',
        name: 'Bolinho de arroz na air fryer',
        ingredients: 'ingredients',
        how: 'how',
        rating: 4.7),
    Recipe(
        category: 'Lanches',
        image: 'assets/images/pipoca-de-chocolate-com-castanhas.svg',
        name: 'Pipoca doce de chocolate com castanhas ',
        ingredients: 'ingredients',
        how: 'how',
        rating: 4.7),
    Recipe(
        category: 'Lanches',
        image: 'assets/images/pao-de-queijo-de-frigideira.svg',
        name: 'Pão de queijo de frigideira',
        ingredients: 'ingredients',
        how: 'how',
        rating: 4.7),
  ];
  static List<Recipe> paes = [
    Recipe(
        category: 'Pães',
        image: 'assets/images/muffin-salgado-de-vegetais.svg',
        name: 'Muffin salgado de vegetais',
        ingredients: 'ingredients',
        how: 'how',
        rating: 4.96),
    Recipe(
        category: 'Pães',
        image: 'assets/images/pao-doce-de-abobora.svg',
        name: 'Pão doce de abóbora',
        ingredients: 'ingredients',
        how: 'how',
        rating: 4.96),
    Recipe(
        category: 'Pães',
        image: 'assets/images/sanduiche-de-peru-desfiado.svg',
        name: 'Sanduíche de peru desfiado',
        ingredients: 'ingredients',
        how: 'how',
        rating: 4.96),
  ];
  static List<Recipe> peixes = [
    Recipe(
        rating: 4,
        category: 'Peixes e frutos do mar',
        image: 'assets/images/ceviche-de-camarao-e-leite-de-coco.svg',
        name: 'Ceviche de camarão e leite de coco',
        ingredients:
            '●   600 gramas de camarão limpo\n●   Suco de 2 limões\n●   1 cebola roxa descascada e picada meia lua bem fina\n●   Meia xícara de chá de tomate grape\n●   Meia xícara de chá de tomate cereja amarelo\n●   1 maço de coentro (separar os talos das folhas)\n●   300 mililitros de leite de coco\n●   1 cebola branca pequena descascada e picada grosseiramente (para o leite de tigre)\n●   1 pimenta dedo de moça pequena picada sem sementes\n●   Fio de azeite para finalizar\n●   Sal a gosto',
        how:
            '▶Em uma panela coloque água e leve ao fogo para fervendo e tempere com sal.\n▶Quando começar a ferver dê um “susto” no camarão nesta água fervente até que ele troque de cor.\n▶Escorra toda água do camarão e lave com água fria e reserve na geladeira.\n▶No liquidificar faça o leite de tigre batendo o suco de limão, os talos do coentro, a cebola branca, o leite de coco, 4 camarões e a pimenta dedo de moça.\n▶Bata bem, transfira para um recipiente e reserve na geladeira.\n▶Pique os camarões em cubos pequenos, corte também os tomates ao meio e junte a cebola roxa.\n▶Numa tigela, coloque o camarão, a cebola roxa, o tomate tempere com sal a gosto e misture.\n▶Passe o leite de tigre por uma peneira descartando toda parte sólida e usando somente a parte liquida.\n▶Adicione o leite de tigre e vá colocando aos poucos a gosto. Se gosta de mais líquido sinta-se à vontade.\n▶Coloque por cima na finalização na hora de servir as folhas do coentro.'),
    Recipe(
        rating: 4.25,
        category: 'Peixes e frutos do mar',
        image: 'assets/images/peixe-assado-com-legumes.svg',
        name: 'Peixe assado com legumes',
        ingredients:
            '●   1 filé de namorado cortado em 4 porções\n●   Suco de um limão\n●   2 alho-poró\n●   200 gramas de tomate cereja vermelho e amarelo cortado ao meio\n●   1 maço de aspargos sem a parte branca fibrosa\n●   3 dentes de alho\n●   1 xícara de azeitonas azapa\n●   8 galhos de tomilho\n●   2 colheres de sopa de manteiga\n●   Sal e pimenta-do-reino a gosto\n●   Fios de azeite a gosto',
        how:
            '▶Pré-aqueça o forno a 200 graus Celsius por 10 minutos.\n▶Tempere o peixe com sal, pimenta-do-reino, azeite a gosto e limão.\n▶Leve ao fogo uma frigideira ante aderente de preferência com cabo de ferro que possa ir ao forno.\n▶Deixe a frigideira aquecer bem.\n▶Amasse os dentes de alho com casca e esfregue na frigideira.\n▶Com o alho ainda na frigideira adicione um fio de azeite e uma colher de manteiga.\n▶Com a gordura já quente coloque os filés de peixe para selar os dois lados até que doure.\n▶Adicione o tomilho na gordura para liberar sabor.\n▶Acrescente na frigideira as azeitonas e os tomates.\n▶Regue com azeite a gosto e retire do fogo.\n▶Coloque a frigideira no forno por 10 minutos, para terminar o cozimento do peixe.\n▶Enquanto o peixe está assando, corte os alho-poró ao comprido descartando as folhas. Ficando em dois pedaços.\n▶Em uma outra frigideira coloque um fio de azeite e uma colher de manteiga.\n▶Leve ao fogo para aquecer.\n▶Toste o alho-poró e o aspargo, não muito para não amargar.\n▶Tempere com sal e pimenta-do-reino a gosto.'),
  ];
  static List<Recipe> saudavel = [
    Recipe(
        rating: 4.53,
        category: 'Saudável',
        image: 'assets/images/brownie-simples-de-cacau.svg',
        name: 'Brownie simples de cacau',
        ingredients:
            '●   2 xícaras de tâmaras sem caroço\n●   Três quartos de xícara de cacau em pó\n●   Um terço de xícara de óleo de coco\n●   2 ovos\n●   1 colher de chá de extrato de baunilha\n●   1 pitada de sal\n●   1 colher de chá de canela em pó',
        how:
            '▶Deixe as tâmaras na água em temperatura ambiente por 1 hora e 30 minutos, ou em água quente por 30 minutos, assim elas vão amolecer.\n▶Escorra a água das tâmaras.\n▶No liquidificador, coloque as tâmaras sem o caroço, o cacau em pó, o óleo de coco, os ovos, o extrato de baunilha, o sal e a canela em pó.\n▶Bata tudo até que fique uma massa homogênea.\n▶Unte a assadeira com óleo de coco e despeje a mistura do liquidificador sobre ela.\n▶Nivele bem a massa e leve ao forno a 170 graus Célsius por 20 minutos.'),
    Recipe(
        rating: 4.56,
        category: 'Saudável',
        image: 'assets/images/empanado-de-frango-caseiro.svg',
        name: 'Empanado de frango caseiro',
        ingredients:
            '●   350 gramas de peito de frango\n●   4 colheres de sopa de azeite extravirgem\n●   3 colheres de chá de alho em pó\n●   3 colheres de chá de páprica doce\n●   2 colheres de chá de sal\n●   1 xícara de chá de flocão de milho\n●   2 colheres de sopa de queijo parmesão ralado\n●   2 ovos',
        how:
            '▶Coloque o frango, azeite e temperos num processador e bata até formar uma massinha.\n▶Modele no tamanho desejado.\n▶Faça 2 potes separados: um com o ovo e um com o flocão misturado ao queijo.\n▶Passe o frango moldado primeiro no ovo, depois no flocão.\n▶Coloque numa assadeira untada e leve ao forno a 180 graus Célsius por 15 minutos, até dourar. Depois, vire e deixe mais 10 minutos até dourar do outro lado.\n▶Seu empanado de frango caseiro está pronto para servir.'),
    Recipe(
        rating: 3.85,
        category: 'Saudável',
        image: 'assets/images/macarrao-de-abobrinha.svg',
        name: 'Macarrão de abobrinha',
        ingredients:
            '●   2 abobrinhas japonesa\n●   2 colheres de sopa de azeite\n●   Meia cebola\n●   1 colher de chá de sal\n●   1 pitada de pimenta preta',
        how:
            '▶Corte as abobrinhas em tiras finas ou utilize o cortador de abobrinhas.\n▶Corte a cebola em tiras e transfira para uma panela com azeite e refogue até que fiquem transparentes.\n▶Adicione a abobrinha e mexa levemente, acrescente o sal e a pimenta e deixe no fogo por mais 3 minutos.'),
  ];
  static List<Recipe> salada = [
    Recipe(
        rating: 4.65,
        category: 'Salada',
        image: 'assets/images/salada-de-feijao-com-coentro-receita.svg',
        name: 'Salada de feijão com coentro',
        ingredients:
            '●   2 e meia xícaras de feijão-fradinho cozido\n●   1 e meia cebola-roxa em cubinhos\n●   200 gramas de tomate-grape\n●   1 pimentão amarelo picado\n●   Sal a gosto\n●   Pimenta-do-reino a gosto\n●   1 e meia pimenta dedo-de-moça picada\n●   Meia xícara de coentro\n●   100 gramas de castanha-de-caju\n●   Suco de 1 laranja-pera\n●   50 mililitros de azeite de oliva extravirgem',
        how:
            '▶Em uma tigela, misture feijão-fradinho cozido, cebola-roxa em cubinhos, tomate-grape, pimentão amarelo picado, sal a gosto, pimenta-do-reino a gosto e pimenta dedo-de-moça picada.\n▶Acrescente coentro, castanha-do-pará e misture.\n▶Despeje suco de laranja-pêra, azeite de oliva extravirgem e misture mais uma vez.\n▶Se precisar, ajuste o sal e a pimenta-do-reino.\n▶Finalize com mais coentro, se desejar. Leve à geladeira até a hora de servir.'),
    Recipe(
        rating: 4.98,
        category: 'Salada',
        image: 'assets/images/salada-de-grao-de-bico.svg',
        name: 'Salada de grão-de-bico',
        ingredients:
            '●   2 xícaras de chá de grão-de-bico \n●   1 dente de alho \n●   1 colher de sobremesa de sal \n●   Água suficiente para cozinhar o grão-de-bico\n●   5 colheres de sopa de azeite\n●   1 limão\n●   Meia xícara de chá de azeitonas fatiadas\n●   1 cebola picada\n●   2 dentes de alho picados\n●   10 folhas de hortelã picadas\n●   1 colher de chá de sal1 pimentão verde em cubos\n●   1 tomate em cubos',
        how:
            '▶Em um recipiente, coloque 2 xícaras de chá de grão-de-bico e água suficiente para cobrir os grãos. Deixe de molho de um dia para o outro. \n▶No dia seguinte, escorra a água e coloque os grãos na panela de pressão. Em seguida, adicione 1 dente de alho, 1 colher de sobremesa de sal e água suficiente para cobrir os grãos. Feche a panela e cozinhe por 10 minutos após pegar pressão.\n▶Escorra o grão-de-bico, coloque em um recipiente e espere esfriar.\n▶Em um recipiente, coloque 5 colheres de sopa de azeite, 1 limão, meia xícara de chá de azeitona fatiada, 1 cebola picada, 2 dentes de alho picados, 10 folhas de hortelã picadas e 1 colher de chá de sal. Misture e reserve.\n▶Na tigela com o grão-de-bico, adicione 1 pimentão verde em cubos e 1 tomate em cubos. Misture e, depois, acrescente o molho.\n▶Misture novamente e sirva em seguida.'),
    Recipe(
        rating: 4.21,
        category: 'Salada',
        image: 'assets/images/salada-de-lentilha-com-couve-flor.svg',
        name: 'Salada de lentilha com couve-flor',
        ingredients:
            '●   1 couve-flor pequena ou 3 xícaras de chá cortada em floretes pequenos \n●   1 e meia xícara de chá de lentilha \n●   Um terço de xícara de chá de amêndoas com casca picadas grosseiramente \n●   1 dente de alho pequeno \n●   Meia xícara de chá de caldo de limão\n●   2 colheres de sopa de extrato de tomate \n●   2 colheres de sopa de mel\n●   1 e meia colher de chá de cominho em pó \n●   Um quarto de colher de chá de canela em pó\n●   Meia colher de chá de páprica doce \n●   Azeite a gosto\n●   Sal a gosto \n●   Folhas de salsinha a gosto para servir\n●   Sementes de romã a gosto - opcional',
        how:
            '▶Numa panela média, cubra as lentilhas com 1 litro e meio de água e leve ao fogo alto. Quando ferver, abaixe o fogo e deixe cozinhar por cerca de 20 minutos, ou até as lentilhas estarem cozidas, mas al dente. Enquanto isso, prepare o molho.\n▶Descasque e passe o dente de alho pelo ralador sobre uma tigela pequena. Adicione um terço de xícara de chá de azeite, o caldo de limão, o extrato de tomate, o mel, o cominho, a canela e 1 colher de chá de sal. Misture bem para emulsionar. Se preferir, prepare o molho num pote com tampa e chacoalhe bem.\n▶Assim que estiverem cozidas, escorra as lentilhas por uma peneira e passe sob água corrente para cessar o cozimento e amornar. Escorra bem a água e transfira os grãos para uma tigela. Adicione o molho e misture delicadamente — a lentilha morna absorve melhor os sabores do molho.\n▶Corte a couve-flor em floretes pequenos, lave sob água corrente e seque bem numa centrífuga de saladas – quanto mais secos, mais dourados ficam os floretes. Transfira para uma tigela, tempere com a páprica, uma pitada de sal e 1 colher de sopa de azeite. Misture bem.\n▶Leve uma frigideira grande antiaderente ao fogo médio para aquecer. Regue com um fio de azeite, coloque os floretes de couve-flor e doure por cerca de 5 minutos, mexendo de vez em quando.\n▶Junte a couve-flor à lentilha, adicione as amêndoas picadas, folhas de salsinha e sementes de romã a gosto. Misture delicadamente e sirva a seguir. Se preferir, leve à geladeira para apurar os sabores por 1 hora antes de servir.')
  ];
}
