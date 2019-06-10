[![TODO board](https://imdone.io/api/1.0/projects/5c0752fbf6e892507d838180/badge)](https://imdone.io/app#/board/LFelipeGomez/JapaneseLearning)

# JapaneseLearning

This repository consist in various programs to help the learning of Japanese Kanjis.

## Programs
### KanjiLearning.jl

This program is designed to learning a specific level of Kanji (N5-N1) associating a keyword (spanish) to his respective kanji and an example (hiragana and kanji version).

#### Workflow

1. Shows the *keyword*
2. Waits some time (5s default) while the user tries to remember the respective kanji and example
3. Shows the correct kanji and example

#### Data Requirements

A CSV file is required with the next columns:

| español | kanji | ejemplo | ejemplokanji |
| --- | --- | --- | --- |
| negativo | 不 | ふとう | 不当 |
| hermano | 弟 | あにき | あに |
| ... | ... | ... | ... |

### KanjiTest.jl

This program is designed to test and practice the kanjis learned previously (by `KanjiLearning.jl`).

#### Worflow

1. Shows the number of kanjis left to be correct answered
2. Shows a random kanji
3. The user type some word that includes that exactly that kanji
  1. If the Kanji is correct, the program prints just the meaning (spanish) and the kanji would be show again at some other point of the practice
  2. If the kanji is wrong, the program print the meaning (spanish), some word that includes that kanji and his pronunciation in hiragana. The kanji shall be show again at some further random point of the practice

#### Data requirements

A CSV file is required with the next columns:

| español | kanji | ejemplo | ejemplokanji |
| --- | --- | --- | --- |
| negativo | 不 | ふとう | 不当 |
| hermano | 弟 | あにき | あに |
| ... | ... | ... | ... |
