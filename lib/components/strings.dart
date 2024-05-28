class Products {
  int id;
  String name;
  String cost;
  String shortdesc;
  String desc;
  String photo;
  Products(this.id, this.name, this.shortdesc, this.cost, this.desc, this.photo);
}
class AccountInfo {
  static String email = "";
  static String password = "";
  static String name = "";
  static String lastName = "";
  static bool isAuth = false;
}

class FavStrings {
  int id;
  int oldid;
  String name;
  String cost;
  String photo;
  FavStrings(this.id, this.oldid, this.name, this.cost, this.photo);
}

class CartStrings {
  int id;
  int oldid;
  String name;
  String cost;
  String photo;
  int quantity;
  CartStrings(this.id, this.oldid, this.name, this.cost, this.photo, {this.quantity = 1});
}

List<Products> products = [
  Products(1, "Гель для стирки Dutybox и инжир", "Жидкий порошок с нежным ароматом 'Ночная орхидея'", "1300р", "Жидкий порошок с нежным ароматом 'Ночная орхидея' и концентрированный кондиционер с изысканным ароматом 'Тропические цветы' придают белью мягкость и нежный аромат.Концентрированный эко гель для всех типов вещей на 200 стирок со свежим ароматом Ночная орхидея, придаст белью стойкий ненавязчивый аромат. Жидкий порошок 5 литров от Дьюти бокс — это экологичное и экономичное средство для стирки, которое обеспечивает идеальную чистоту и свежесть вашего белья. С этим гелем для стирки в удобной упаковке на 5 литров вы можете забыть о проблемах с пятнами, так как он эффективно удаляет любые загрязнения с любых тканей.Ополаскиватель для белья на 200 стирок с ароматом Тропические цветы придаст изысканный, приятный аромат вашим вещам, высокоэффективное средство, бережно ухаживающее за всеми типами ткани и придающее особую мягкость белью после стирки. Обладает антистатическим эффектом. Биоразлагаемые натуральные компоненты безопасны как для планеты, так и для самой чувствительной детской кожи. Гипоаллергенный состав дерматологически протестирован и не оставляет осадка, который может раздражать кожу. Проникая в структуру ткани, частицы концентрата эффективно размягчают волокна, устраняют статическое электричество и облегчают процесс глажения белья.Жидкое средство для стирки подходит для белого белья для хлопка, шерсти, вискозы, мембраны, ткани из синтетических волокон и др. видов цветных, и черных тканей. Концентрат для стирки белья не только восстановит глубокий темный цвет, но и придаст приятный аромат свежего сандала, который оставляет незабываемые ощущения после каждой стирки. Одежда черного цвета будет как новая. Средство для стирки Дьюти бокс - идеально подходит для бережной стирки детского белья. Наша бытовая химия подходит для всех типов тканей, от кашемира до пуховиков, мембранных тканей, а также для стирки черного и цветного белья.", "https://avatars.mds.yandex.net/get-mpic/11375994/2a0000018b905a5bc9e704446efa2e4e2592/600x800"),
  Products(2, "Кондиционер ополаскиватель Grass Eva Flower", "Гипоаллергенный кондиционер ополаскиватель для белья EVA Flower 1 литр ", "213р", "Гипоаллергенный кондиционер ополаскиватель для белья EVA Flower 1 литр - прекрасное средство для стирки, бережно ухаживающее за всеми типами ткани и придающее особую мягкость белью после стирки. А созданный концентрат с ароматом цветущей яблони с букетом из жасмина, розы и лаванды в сочетании с нежным древесным ароматом пачули подходит даже для людей с чувствительной кожей. Концентрат кондиционер для белья парфюмированный ЕВА создан из растительных К - тензидов на основе натуральных масел, без фосфатов. Подходит для стирки цветного, белого, черного и детского белья ( кондиционер для белья детский 0+)", "https://avatars.mds.yandex.net/get-mpic/1715800/img_id3224641649058085765.jpeg/600x800"),
  Products(3, "Bimax Капсулы для стирки IQ Technology Color", "Капсулы для стирки BiMAX Color для цветных вещей", "395р", "Капсулы для стирки BiMAX Color для цветных вещей это высококонцентрированное жидкое средство с пониженным пенообразованием и биодобавками заменяет гель и стиральный порошок. Отстирывает более 100 видов пятен, в том числе от шоколада, ягод, кофе, красного вина, косметики, сажи, грязи. Дарит вещам мягкость, стойкий аромат свежести. Содержит в составе компоненты, которые распознают проблему в начале стирки и обеспечивают глубокую и бережную очистку каждой вещи от пятен. При контакте с водой пленка капсулы растворяется и ингредиенты смешиваются, начиная действовать. Точная дозировка позволяет отстирать целый барабан вещей всего одной капсулой. Специальная формула быстро действует, удаляя загрязнения, очищает даже стойкие и сложные пятна и сохраняет яркость цвета стирка за стиркой. Выводят пятна, очищают и освежают бельё - Обеспечивает идеальное отстирывание и кристальную чистоту - Яркость цвета без выцветания - Превосходная чистота с первой стирки. Смягчают белье за счет смягчителей воды в составе и имеют эффект кондиционера. Подходит и для стирки белого белья, а также детского белья. Простота использования: не нужно отмерять и наливать. Наша бытовая химия для стирки не содержит фосфаты или хлор, подходит для септиков. Все активные компоненты биоразлагаемы. Храните упаковки капсул в месте, недоступном для детей", "https://avatars.mds.yandex.net/get-mpic/11910286/img_id899857397110984420.png/600x800"),
  Products(4, "Моющая жидкость для полов и стен для домов с собаками", "Моющая жидкость для полов и стен для домов с собаками Mr.Proper Свежий цитрус", "123р", "Уникальный состав Mr. Proper для домов с питомцами создан специально для уборки помещений, в которых живут собаки. Жидкость подходит для мытья стен, полов, корпусной мебели, а также любимых мест обитания питомца. Отмывает шерсть, следы лап, засохшие остатки корма с ламината или линолеума, удаляет брызги с керамической плитки. Придает поверхностям блеск, устраняет неприятные запахи", "https://avatars.mds.yandex.net/get-mpic/4957996/img_id5965119026101524315.png/600x800"),
  Products(5, "Средство от комаров, мошки, клещей, Gardex Extreme", "Средство от комаров, мошки, клещей, Gardex Extreme, Аэрозоль от всех летающих кровососущих насекомых, 150 мл х 3 шт", "553р", "Если в теплый день Вы собираетесь на рыбалку, пикник, прогулку по лесу или возле водоема, то будьте готовы к рою насекомых вокруг Вас. Хорошо, что есть аэрозоль Gardex Extreme. Благодаря инновационной трехкомпонентной формуле UNIMAX, средство гарантирует сверхсильную защиту в течение 4 часов от комаров, москитов, слепней, мокрецов, мошек, блох, а также таежных и лесных клещей даже в местах повышенного скопления насекомых", "https://avatars.mds.yandex.net/get-mpic/6257919/img_id7157681025199134095.png/600x800"),
  Products(6, "Биоразлагаемое средство для мытья сантехники SYNERGETIC", "Биоразлагаемое средство для мытья сантехники SYNERGETIC", "118р", "Биоразлагаемое средство для мытья сантехники SYNERGETIC Кристальная чистота - универсальное чистящее средство для ежедневной уборки поверхностей, устойчивых к кислотным моющим средствам, в ванных комнатах и санузлах: унитаза, раковины, ванны, душевой кабины, керамической плитки, акриловых, фаянсовых и эмалированных поверхностей", "https://avatars.mds.yandex.net/get-mpic/4547325/img_id3809596799021792790.jpeg/600x800"),
  Products(7, "Крот TURBO гель для устранения засоров 500г, 1 шт", "Крот устраняет засоры в течении 10-15 минут!", "121р", "Крот устраняет засоры в течении 10-15 минут! Благодаря своей гелеобразной форме и высокому содержанию активных веществ, гель быстро проникает до места загрязнения и интенсивно его устраняет. Эффективно растворяет волосы, остатки пищи, жиры, белки, соли жирных кислот, коллагеновые волокна, обладает дезинфицирующим эффектом. Безопасен для всех видов труб, в том числе пластиковых. Удобная упаковка с колпачком защита от детей обеспечивает безопасность", "https://avatars.mds.yandex.net/get-mpic/5209134/img_id2468713839058132903.jpeg/600x800"),
  Products(8, "Domestos Professional Domestos, 1.5 л, 1.5 кг", "Domestos Свежесть Атлантики — универсальное средство для уборки", "247р", "Domestos Свежесть Атлантики — универсальное средство для уборки, которое помогает поддерживать кристальную чистоту и надежно защищает от всех известных микробов. Его можно использовать как гель для унитаза, чистящее средство для ванны, кухни, кафеля, пола и других поверхностей", "https://avatars.mds.yandex.net/get-mpic/12491287/2a0000018d138f2662ad3f4d7d53707a47b8/600x800"),
  Products(9, "Synergetic жидкость для устранения засоров, 5 л", "Средство для прочистки труб Synergetic гель 5 л", "335р", "Средство для прочистки труб Synergetic гель 5 л Назначение Средство чистящее щелочное, биоразлагаемое для устранения засоров в канализационных трубах. Средство для удаления всех видов засоров с дезинфицирующим эффектом. Устраняет запахи, прочищает засоры со стоячей водой", "https://avatars.mds.yandex.net/get-mpic/5332179/img_id3105174907163125546.jpeg/600x800"),
  Products(10, "Пятновыводитель спрей для предварительной обработки пятен SYNERGETIC", "Пятновыводитель спрей для предварительной обработки пятен SYNERGETIC 0,5 л гипоаллергенный, эко, универсальный, для цветного белья, детский, без запаха", "117р", "Биоразлагаемый гипоаллергенный универсальный пятновыводитель SYNERGETIC – универсальное средство для эффективного удаления загрязнений и трудновыводимых пятен от масла, жира, какао, ягод, травы, чернил, кофе, вина, крови на белом и цветном белье из натуральных и синтетических тканей", "https://avatars.mds.yandex.net/get-mpic/12535611/2a0000018e5aef2a05a92e6e5b4c5f2bb71b/600x800"),
  Products(11, "Mr Muscle Гранулы для прочистки сливных труб всех видов, 70 г", "Mr Muscle гранулы для прочистки сливных труб полностью прочищают трубы", "108р", "Mr Muscle гранулы для прочистки сливных труб полностью прочищают трубы, уничтожают микробы и устраняют неприятные запахи. Растворяют жир, волосы и остатки пищи. Средство безопасно для всех видов труб. Гранулы от засора труб действуют всего за 15 минут", "https://avatars.mds.yandex.net/get-mpic/6214739/img_id6648894807063702749.jpeg/600x800"),
  Products(12, "Форссайт (Форсайт) клеевые ловушки от тараканов с феромоновой таблеткой, 5 ловушек", "Форссайт - самые эффективные клеевые ловушки от тараканов проверенные временем", "233р", "Форссайт - самые эффективные клеевые ловушки от тараканов проверенные временем, они абсолютно безопасны для людей и животных. Способ применения очень прост: отклейте защитную пленку от клеевой основы, установите в центре феромоновую таблетку и сложите домик как показано на рисунке, разместите домик в местах обитания насекомых. Один домик с расчетом на 15 кв метров", "https://avatars.mds.yandex.net/get-mpic/4412310/img_id799243400901896772.jpeg/600x800"),
  Products(13, "Спрей Mosquitall Универсальная защита для всей семьи, 100 мл", "Спрей от комаров Mosquitall Универсальная защита подходит для взрослых и детей с 5 лет", "181р", "Спрей от комаров Mosquitall Универсальная защита подходит для взрослых и детей с 5 лет. Репеллент защищает от нападения кровососущих насекомых, отпугивает комаров, москитов и мокрецов. Спрей против комаров можно наносить на одежду, москитную сетку, палатку, снаряжение, обувь (защита до 3 суток), осторожно наносить средство на синтетические ткани. При нанесении на кожу репеллентный спрей от комаров защищает открытые участки тела до 3 часов, репеллентное средство следует не втирать в кожу, а равномерно нанести на поверхность, стараясь обработать максимальное пространство открытых участков кожи.", "https://avatars.mds.yandex.net/get-mpic/5257935/2a0000018a510a63b9f21626915f1adf7f8e/600x800"),
  Products(14, "Щетка для чистки наушников, телефонов, клавиатуры, фотоаппаратов и другой цифровой техники", "Новинка! Многофункциональная ручка щетка для чистки наушников, фотоаппарата и других цифровых гаджетов", "177р", "Новинка! Многофункциональная ручка щетка для чистки наушников, фотоаппарата и других цифровых гаджетов. В небольшом корпусе спрятана насадка в форме пера для чистки Airpods, bluetooth - наушников, фотоаппаратов, гарнитур, мобильных телефонов, планшетов и т. д. С помощью компактной практичной щёточки , вы можете без проблем очистить от пыли зарядное устройство, футляр для наушников, проем динамиков и другие мелкие детали ваших устройств. Корпус щетки изготовлен из переработанного пластика, окончание ручки закругленное, что позволит бережно очистить даже самое маленькое отверстие. Мягкая щетка из микроволокна деликатно очистит мелкие детали и отверстия наушников. Мягкая щеточка из микрофибры идеально подходит для зарядного устройства. Дизайн в форме ручки легко носить с собой. Из-за своей компактности данную щетку можно использовать в любое время и в любом месте. Станет оригинальным подарком на любой праздник", "https://avatars.mds.yandex.net/get-mpic/12365257/2a0000018f960f714ff281d9cb1793465c44/600x800"),
  Products(15, "Антискотч спрей для удаления этикеток следов клея липких лент битума", "Антискотч спрей для удаления этикеток следов клея липких лент битума, чистящее средство BRAUBERG SUPER, 400 мл, 608433", "178р", "Средство BRAUBERG предназначено для быстрого и эффективного удаления остатков клея, клейкой ленты, тонировочной пленки, битума, информационных наклеек и рекламы. Средство обеспечивает быстрое и безопасное удаление остатков клея, различных клейких лент, самоклеящихся этикеток, наклеек и жевательной резинки с твердых поверхностей в домашних условиях, офисе, на производстве", "https://avatars.mds.yandex.net/get-mpic/12535611/2a0000018d0d68edd1aa07ecb3d0f07c591c/600x800"),
];
List<String> photos = [
  // 1
  "https://avatars.mds.yandex.net/get-mpic/11408907/2a0000018b905a596b043c60646fb9680847/600x800",
  "https://avatars.mds.yandex.net/get-mpic/11368503/2a0000018b905a5a7d1463e5fa3ea541d6ea/600x800",
  "https://avatars.mds.yandex.net/get-mpic/5223143/2a0000018b905a5b2fb3b1b417bf56db32e7/600x800",
  // 2
  "https://avatars.mds.yandex.net/get-mpic/1715800/img_id3224641649058085765.jpeg/600x800",
  "https://avatars.mds.yandex.net/get-mpic/4367383/img_id6469539630923448867.jpeg/600x800",
  "https://avatars.mds.yandex.net/get-mpic/6559549/2a0000018a99a5aa1db79cc86b5b26e16f5e/600x800",
  // 3
  "https://avatars.mds.yandex.net/get-mpic/11910286/img_id899857397110984420.png/600x800",
  "https://avatars.mds.yandex.net/get-mpic/4429951/img_id4997431734662555054.jpeg/600x800",
  "https://avatars.mds.yandex.net/get-mpic/11474376/img_id7489883019207873178.jpeg/600x800",
  // 4
  "https://avatars.mds.yandex.net/get-mpic/4957996/img_id5965119026101524315.png/600x800",
  "https://avatars.mds.yandex.net/get-mpic/5395693/img_id733805256239772953.jpeg/600x800",
  "https://avatars.mds.yandex.net/get-mpic/1860966/img_id6790143688994463466.jpeg/600x800",
  // 5
  "https://avatars.mds.yandex.net/get-mpic/6257919/img_id7157681025199134095.png/600x800",
  "https://avatars.mds.yandex.net/get-mpic/4334326/img_id4060766199363056072.png/600x800",
  "https://avatars.mds.yandex.net/get-mpic/4441046/img_id7916410285563877535.png/600x800",
  // 6
  "https://avatars.mds.yandex.net/get-mpic/4547325/img_id3809596799021792790.jpeg/600x800",
  "https://avatars.mds.yandex.net/get-mpic/5235688/img_id2834793146395675802.jpeg/600x800",
  "https://avatars.mds.yandex.net/get-mpic/5259100/2a0000018ea4e0d36b94da6efb4522249a6e/600x800",
  // 7
  "https://avatars.mds.yandex.net/get-mpic/5209134/img_id2468713839058132903.jpeg/600x800",
  "https://avatars.mds.yandex.net/get-mpic/6439030/img_id4240462102982976950.jpeg/600x800",
  "https://avatars.mds.yandex.net/get-mpic/4032259/img_id4273630977117816695.jpeg/600x800",
  // 8
  "https://avatars.mds.yandex.net/get-mpic/12491287/2a0000018d138f2662ad3f4d7d53707a47b8/600x800",
  "https://avatars.mds.yandex.net/get-mpic/12222123/2a0000018d138f26628e7c1a37aab74d8adf/600x800",
  "https://avatars.mds.yandex.net/get-mpic/12535611/2a0000018d138f26624ff6df6b2de16f98b2/600x800",
  // 9
  "https://avatars.mds.yandex.net/get-mpic/5332179/img_id3105174907163125546.jpeg/600x800",
  "https://avatars.mds.yandex.net/get-mpic/5236741/img_id6540043106592467411.jpeg/600x800",
  "https://avatars.mds.yandex.net/get-mpic/5289692/img_id3479439671319614942.jpeg/600x800",
  // 10
  "https://avatars.mds.yandex.net/get-mpic/12535611/2a0000018e5aef2a05a92e6e5b4c5f2bb71b/600x800",
  "https://avatars.mds.yandex.net/get-mpic/5289292/2a0000018e5aef2a1211cc350ed56cc3b6ee/600x800",
  "https://avatars.mds.yandex.net/get-mpic/11487459/2a0000018e5aef2a0289b76b7322909ba92c/600x800",
  // 11
  "https://avatars.mds.yandex.net/get-mpic/6214739/img_id6648894807063702749.jpeg/600x800",
  "https://avatars.mds.yandex.net/get-mpic/5275484/img_id3010821237791173719.png/600x800",
  "https://avatars.mds.yandex.net/get-mpic/1522540/img_id1779029992099911738.png/600x800",
  // 12
  "https://avatars.mds.yandex.net/get-mpic/4412310/img_id799243400901896772.jpeg/600x800",
  "https://avatars.mds.yandex.net/get-mpic/4101287/img_id8731747674295439861.jpeg/600x800",
  "https://avatars.mds.yandex.net/get-mpic/4393885/img_id8963250357643556131.jpeg/600x800",
  // 13
  "https://avatars.mds.yandex.net/get-mpic/5257935/2a0000018a510a63b9f21626915f1adf7f8e/600x800",
  "https://avatars.mds.yandex.net/get-mpic/4399094/img_id3834725089738266245.jpeg/600x800",
  "https://avatars.mds.yandex.net/get-mpic/5236803/img_id7166390972507292636.jpeg/600x800",
  // 14
  "https://avatars.mds.yandex.net/get-mpic/12365257/2a0000018f960f714ff281d9cb1793465c44/600x800",
  "https://avatars.mds.yandex.net/get-mpic/5233785/2a0000018eaded9b6e1bbe85ddedc7d19a1a/600x800",
  "https://avatars.mds.yandex.net/get-mpic/5359986/2a0000018eaded9b63bfcae43e33f389de8b/600x800",
  // 15
  "https://avatars.mds.yandex.net/get-mpic/12535611/2a0000018d0d68edd1aa07ecb3d0f07c591c/600x800",
  "https://avatars.mds.yandex.net/get-mpic/12444182/2a0000018d0d68edd0a07c364072993c161a/600x800",
  "https://avatars.mds.yandex.net/get-mpic/12087486/2a0000018d0d68edd073342a558272ed5961/600x800"
];
