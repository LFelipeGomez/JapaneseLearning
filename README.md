[![TODO board](https://imdone.io/api/1.0/projects/5c0752fbf6e892507d838180/badge)](https://imdone.io/app#/board/LFelipeGomez/JapaneseLearning)


# JapaneseLearning

This repository consist in multiple programs to help the learning of Japanese Kanjis.

## Programs
### KanjiLearning.jl

This program is designed to learning a specific level of Kanji (N5-N1) associating a keyword (spanish) to his respective kanji and an example (hiragana and kanji version).

![](./Animations/KanjiLearning.gif)

#### ArgParse

This program accept the next arguments:

|argument|short|help|type|default|
| --- | --- | --- | --- | --- |
|--folder_path|-p|Path to the folder where the csv are|`String`|"../Datasets/KanjisNs/"|
|--time|-t|Time (s) between outputs|`Int64`|5|
|--level|-N| Level (N#) to be learned|`Int64`|4|


#### Workflow

1. Shows the *keyword*
2. Waits some time (5s default) while the user tries to remember the respective kanji and example
3. Shows the correct kanji and example

#### Data Requirements

A CSV file with the name `KanjisN#.csv `, where **#** indicates the number of the level, is required with the next columns:

| español | kanji | ejemplo | ejemplokanji |
| --- | --- | --- | --- |
| negativo | 不 | ふとう | 不当 |
| hermano | 弟 | あにき | あに |
| ... | ... | ... | ... |

---

### KanjiTest.jl

This program is designed to test and practice the kanjis learned previously (by `KanjiLearning.jl`). The program divides the kanjis from the database in two sets: **to learn** and **learned**. At the beginning all kanjis are part of the set **to learn** and just when the user type correctly the kanji as part of any word then the kanji is take to the set **learned**.

![](./Animations/KanjiTest.gif)

#### ArgParse

This program accept the next arguments:

|argument|short|help|type|default|
| --- | --- | --- | --- | --- |
|--folder_path|-p|Path to the folder where the csv are|`String`|"../Datasets/KanjisNs/"|
|--level|-N| Level (N#) to be learned|`Int64`|4|

#### Worflow

1. Shows the number of kanjis left to be correct answered
2. Shows a random kanji
3. The user have to type some word that includes that exactly that kanji
  1. If the Kanji is correct, the program prints just the *keyword* and the kanji would be show again at some other point of the practice
  2. If the kanji is wrong, the program print the *keyword*, some word that includes that kanji and his pronunciation in hiragana. The kanji shall be show again at some further random point of the practice

#### Data requirements

A CSV file with the name `KanjisN#.csv `, where **#** indicates the number of the level, is required with the next columns:

| español | kanji | ejemplo | ejemplokanji |
| --- | --- | --- | --- |
| negativo | 不 | ふとう | 不当 |
| hermano | 弟 | あにき | あに |
| ... | ... | ... | ... |

---

### KanjiBookLearning.jl

This program is designed to practice the kanjis learned by the book *Kanji para recordar I*. So first the user should read the book until some specific lesson and then come to this program to test the learned.

![](./Animations/KanjiBookLearning.gif)

#### ArgParse

This program accept the next arguments:

|argument|short|help|type|default|
| --- | --- | --- | --- | --- |
|--folder_path|-p|Path to the folder where the csv are|`String`|"../Datasets/KanjiBook/"|
|--time|-t|Time (s) between outputs|`Int64`|5|
|--start_chapter|-s| Chapter from where the program shall start|`Int64`|1|
|--final_chapter|-f| Chapter until where the program shall end|`Int64`|1|

#### Worflow

1. Shows the number of kanji (given by the book) and the *keyword*
2. Waits some seconds (`--time`) while the user should write on paper the respective kanji


#### Data Requirements
A CSV file per lesson is required with the name `KanjiBookPalabras#.csv` where **#** indicates the number of the lesson. The columns required on each file are:

| español | BookIndex |
| --- | --- |
| campo de arroz | 14 |
| boca | 11 |
| ... | ... |

---

#### Glosary

***keyword:*** Meaning associated to the kanji. Sometimes not the usual meaning and mostly condensed in one word but not necessarly
