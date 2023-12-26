import 'package:flutter/material.dart';
import 'package:language_learning_flutte/data/models/task.dart';
import 'package:language_learning_flutte/data/models/word.dart';
import 'package:language_learning_flutte/ui_kit/_ui_kit.dart';
import 'models/lesson.dart';

class AppData {
  const AppData._();

  static List<Lesson> lessonItems = [
    Lesson(
      id: 1,
      name: 'Семья',
      // progress: 0,
      tasks: [
        Task(
          id: 1,
          description: 'Отметьте верный перевод',
          type: TaskType.chooseTranslationByImage,
          wordsToLearn: [
            Word(id: 1, word: 'мама', translation: 'ана', image: AppAsset.mom),
            Word(id: 2, word: 'папа', translation: 'баба', image: AppAsset.father),
            Word(id: 3, word: 'дочь', translation: 'къыз', image: AppAsset.daugher),
            Word(id: 4, word: 'сын', translation: 'огълу', image: AppAsset.son),
          ],
        ),
        Task(
          id: 2,
          description: 'Сопоставьте перевод с словом',
          type: TaskType.matchTranslation,
          wordsToLearn: [
            Word(id: 5, word: 'старший брат', translation: 'агъа', image: AppAsset.bigBrother),
            Word(id: 6, word: 'младший брат', translation: 'къардаш', image: AppAsset.juniorBrother),
            Word(id: 7, word: 'старшая сестра', translation: 'тата', image: AppAsset.bigSister),
            Word(id: 8, word: 'дядя (по матери)', translation: 'дайы', image: AppAsset.uncleMom),
          ],
        ),
        Task(
          id: 3,
          description: 'Прослушайте и напишите перевод',
          type: TaskType.listenAndWrite,
          wordsToLearn: [
            Word(id: 9, word: 'бабушка', translation: 'бита', image: AppAsset.grandma),
            Word(id: 10, word: 'дедушка', translation: 'къартбаба', image: AppAsset.grandpa),
            Word(id: 11, word: 'младшая сестра', translation: 'къыз къардаш', image: AppAsset.juniorSister),
            Word(id: 12, word: 'дядя (по отцу)', translation: 'эмдже', image: AppAsset.uncleDad),
          ],
        ),
      ],
    ),

    Lesson(
      id: 2,
      name: 'Фрукты',
      // progress: 0,
      tasks: [
        Task(
          id: 4,
          description: 'Отметьте верный перевод',
          type: TaskType.chooseTranslationByImage,
          wordsToLearn: [
            Word(id: 13, word: 'яблоко', translation: 'алма', image: AppAsset.apple),
            Word(id: 14, word: 'груша', translation: 'армут', image: AppAsset.pear),
            Word(id: 15, word: 'абрикос', translation: 'къайсы', image: AppAsset.apricot),
            Word(id: 16, word: 'арбуз', translation: 'къарпыз', image: AppAsset.watermelon),
          ],
        ),
        Task(
          id: 5,
          description: 'Сопоставьте перевод с словом',
          type: TaskType.matchTranslation,
          wordsToLearn: [
            Word(id: 17, word: 'виноград', translation: 'юзюм', image: AppAsset.grape),
            Word(id: 18, word: 'персик', translation: 'шефтали', image: AppAsset.peach),
            Word(id: 19, word: 'слива', translation: 'эрик', image: AppAsset.plum),
            Word(id: 20, word: 'дыня', translation: 'къавун', image: AppAsset.melon),
          ],
        ),
        Task(
          id: 6,
          description: 'Прослушайте и напишите перевод',
          type: TaskType.listenAndWrite,
          wordsToLearn: [
            Word(id: 21, word: 'клубника', translation: 'джилек', image: AppAsset.strawberry),
            Word(id: 22, word: 'банан', translation: 'муз', image: AppAsset.banana),
            Word(id: 13, word: 'малина', translation: 'ахудут', image: AppAsset.raspberry),
            Word(id: 24, word: 'черешня', translation: 'кираз', image: AppAsset.cherry),
          ],
        ),
      ],
    ),

    Lesson(
      id: 3,
      name: 'Овощи',
      // progress: 0,
      tasks: [
        Task(
          id: 7,
          description: 'Отметьте верный перевод',
          type: TaskType.chooseTranslationByImage,
          wordsToLearn: [
            Word(id: 25, word: 'картофель', translation: 'къартоп', image: AppAsset.potato),
            Word(id: 26, word: 'морковь', translation: 'маркоф', image: AppAsset.carrot),
            Word(id: 27, word: 'лук', translation: 'согъан', image: AppAsset.onion),
            Word(id: 28, word: 'редис', translation: 'айлыкъ туруп', image: AppAsset.radish),
          ],
        ),
        Task(
          id: 8,
          description: 'Сопоставьте перевод с словом',
          type: TaskType.matchTranslation,
          wordsToLearn: [
            Word(id: 29, word: 'огурец', translation: 'хыяр', image: AppAsset.cucumber),
            Word(id: 30, word: 'помидор', translation: 'памидор', image: AppAsset.tomato),
            Word(id: 31, word: 'свёкла', translation: 'чюкюндир', image: AppAsset.beet),
            Word(id: 32, word: 'тыква', translation: 'къабакъ', image: AppAsset.pumpkin),
          ],
        ),
        Task(
          id: 9,
          description: 'Прослушайте и напишите перевод',
          type: TaskType.listenAndWrite,
          wordsToLearn: [
            Word(id: 33, word: 'кабачок', translation: 'сакъыз къабакъ', image: AppAsset.zucchini),
            Word(id: 34, word: 'капуста', translation: 'къапыста', image: AppAsset.cabbage),
            Word(id: 35, word: 'перец', translation: 'бибер', image: AppAsset.pepper),
            Word(id: 36, word: 'чеснок', translation: 'сарымсакъ', image: AppAsset.garlic),
          ],
        ),
      ],
    ),

    Lesson(
      id: 4,
      name: 'Цветы',
      // progress: 0,
      tasks: [
        Task(
          id: 10,
          description: 'Отметьте верный перевод',
          type: TaskType.chooseTranslationByImage,
          wordsToLearn: [
            Word(id: 37, word: 'розы', translation: 'гуль', image: AppAsset.rose),
            Word(id: 38, word: 'хризантемы', translation: 'кузь чичеги', image: AppAsset.chrysanthemum),
            Word(id: 39, word: 'ромашка', translation: 'пападие', image: AppAsset.chamomile),
            Word(id: 40, word: 'пион', translation: 'шакъайыкъ', image: AppAsset.peony),
          ],
        ),
        Task(
          id: 11,
          description: 'Сопоставьте перевод с словом',
          type: TaskType.matchTranslation,
          wordsToLearn: [
            Word(id: 41, word: 'тюльпан', translation: 'ляле', image: AppAsset.tulip),
            Word(id: 42, word: 'астра', translation: 'чувар чичек', image: AppAsset.astra),
            Word(id: 43, word: 'акация', translation: 'эскемчек', image: AppAsset.acachia),
            Word(id: 44, word: 'лаванда', translation: 'къарабаш оту', image: AppAsset.lavender),
          ],
        ),
        Task(
          id: 12,
          description: 'Прослушайте и напишите перевод',
          type: TaskType.listenAndWrite,
          wordsToLearn: [
            Word(id: 45, word: 'ландыш', translation: 'инджи чичек', image: AppAsset.landush),
            Word(id: 46, word: 'мак', translation: 'къашкъаш', image: AppAsset.poppy),
            Word(id: 47, word: 'лилия', translation: 'занбакъ', image: AppAsset.lily),
            Word(id: 48, word: 'нарцисс', translation: 'наргиз', image: AppAsset.nargiss),
          ],
        ),
      ],
    ),
  ];
}
