[![TODO board](https://imdone.io/api/1.0/projects/5c0752fbf6e892507d838180/badge)](https://imdone.io/app#/board/LFelipeGomez/JapaneseLearning)


<?xml version="1.0" encoding="utf-8"?>
<!-- Generator: Adobe Illustrator 22.1.0, SVG Export Plug-In . SVG Version: 6.00 Build 0)  -->
<svg version="1.1" id="made_with_julia" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px"
	 y="0px" width="210.5px" height="35px" viewBox="0 0 210.5 35" style="enable-background:new 0 0 210.5 35;" xml:space="preserve">
<path style="fill:#C1282D;" d="M210.5,35h-100V0h100V35z"/>
<path style="fill:#EF4041;" d="M111,35H0V0h111V35z"/>
<path style="fill:#FFFFFF;" d="M14.8,13.2l2.5,6.5l2.5-6.5h1.9v8.5h-1.5V19l0.1-3.8l-2.5,6.6h-1.1l-2.5-6.6l0.1,3.8v2.8h-1.5v-8.5
	L14.8,13.2L14.8,13.2z M30.9,19.8h-3.3l-0.7,2h-1.5l3.2-8.5H30l3.2,8.5h-1.5L30.9,19.8z M28.1,18.6h2.5L29.3,15L28.1,18.6z
	 M36.8,21.8v-8.5h2.5c0.8,0,1.4,0.2,2,0.5s1,0.8,1.4,1.4s0.5,1.3,0.5,2.1v0.4c0,0.8-0.2,1.5-0.5,2.1s-0.8,1.1-1.4,1.4
	s-1.3,0.5-2,0.5h-2.5V21.8z M38.3,14.4v6.2h1c0.8,0,1.4-0.2,1.8-0.7s0.6-1.2,0.6-2.1v-0.5c0-0.9-0.2-1.6-0.6-2.1s-1-0.7-1.8-0.7
	L38.3,14.4L38.3,14.4z M52.3,18h-3.5v2.6h4.1v1.2h-5.6v-8.5h5.5v1.2h-4.1v2.4h3.5L52.3,18L52.3,18z M69,19.7l1.3-6.4h1.5l-2,8.5
	h-1.4l-1.6-6.2l-1.7,6.2h-1.4l-2-8.5h1.5l1.3,6.4l1.6-6.4h1.2L69,19.7z M77.1,21.8h-1.5v-8.5h1.5V21.8z M87.5,14.4h-2.7v7.3h-1.5
	v-7.3h-2.6v-1.2h6.8C87.5,13.2,87.5,14.4,87.5,14.4z M98.1,21.8h-1.5V18h-3.8v3.8h-1.5v-8.5h1.5v3.6h3.8v-3.6h1.5V21.8z M125.2,21.5
	c-0.5-0.2-0.9-0.5-1.2-0.9l1.3-1.5c0.4,0.6,0.9,0.9,1.5,0.9c0.3,0,0.6-0.1,0.8-0.3s0.3-0.5,0.3-0.9v-3.6h-2.9v-1.8h5.3v5.3
	c0,1.1-0.3,1.9-0.8,2.4c-0.5,0.5-1.4,0.8-2.4,0.8C126.3,21.8,125.7,21.7,125.2,21.5z M134.2,20.8c-0.7-0.7-1-1.6-1-2.9v-4.7h2.4v4.6
	c0,1.3,0.5,2,1.6,2c1.1,0,1.6-0.7,1.6-2v-4.6h2.3v4.7c0,1.2-0.3,2.2-1,2.9c-0.7,0.7-1.7,1-2.9,1S134.9,21.4,134.2,20.8z M144.1,13.2
	h2.4v6.5h4v1.9h-6.4V13.2z M152.8,13.2h2.4v8.4h-2.4V13.2z M164,20h-3.6l-0.7,1.6h-2.4l3.7-8.4h2.3l3.7,8.4h-2.5L164,20z
	 M163.3,18.2l-1.1-2.7l-1.1,2.7H163.3z M188.4,9c-2.3,0-4.2,1.9-4.2,4.2s1.9,4.2,4.2,4.2s4.2-1.9,4.2-4.2S190.7,9,188.4,9z
	 M183.3,17.6c-2.3,0-4.2,1.9-4.2,4.2s1.9,4.2,4.2,4.2s4.2-1.9,4.2-4.2S185.6,17.6,183.3,17.6z M193.3,17.6c-2.3,0-4.2,1.9-4.2,4.2
	s1.9,4.2,4.2,4.2c2.3,0,4.2-1.9,4.2-4.2S195.6,17.6,193.3,17.6z"/>
</svg>

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
|--time|-t|Time between outputs|`Int64`|5|
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
|--time|-t|Time between outputs|`Int64`|5|
|--start_chapter|-s| Chapter from where the program shall start|`Int64`|1|
|--final_chapter|-f| Chapter until where the program shall end|`Int64`|1|

#### Worflow

1. Shows the number of kanji (given by the book) and the *keyword*
2. Waits some seconds while the user should write on paper the respective kanji


#### Data Requirements
A CSV file per lesson is required with the name `KanjiBookPalabras#.csv` where **#** indicates the number of the lesson. The columns required on each file are:

| español |
| --- |
| campo de arroz |
| boca |
| ... |

---

#### Glosary

***keyword:*** Meaning associated to the kanji. Sometimes not the usual meaning and mostly condensed in one word but not necessarly
