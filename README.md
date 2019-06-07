[![TODO board](https://imdone.io/api/1.0/projects/5c0752fbf6e892507d838180/badge)](https://imdone.io/app#/board/LFelipeGomez/JapaneseLearning)

# JapaneseLearning

This repository consist in various programs to help the learning of Japanese Kanjis.

## Programs
### KanjiLearning.jl

This program is designed to learning a specific level of Kanji (N5-N1) associating a keyword (spanish) to his respective kanji and an example (hiragana and kanji version).

#### Workflow

1. Shows the *keyword*
2. Waits some time (5s default) while the user tries to remember his respective kanji and example
3. Shows the correct kanji and example

#### Data Requirements

A CSV file is required with the next columns:

| español | kanji | ejemplo | ejemplokanji |
| --- | --- | --- | --- |
| negativo | 不 | ふとう | 不当 |
| hermano | 弟 | あにき | あに |
| ... | ... | ... | ... |
