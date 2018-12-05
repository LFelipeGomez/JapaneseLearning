using DataFrames
using CSVFiles

kanjis = DataFrame(load("KanjisN4.csv"))

function KanjiTest(dataframe)
    long = size(dataframe)[1]
    index = [x for x in 1:long]
    while length(index) != 0
        random = rand(index)
        español = dataframe[random, :español]
        kanji = dataframe[random, :kanji]
        println("-----------------")
        println(español)
        respuesta = readline()
        if contains(respuesta, kanji)
            filter!(e -> e≠random, index)
            println("Good")
        else
            println(dataframe[random, :ejemplo])
            print(dataframe[random, :ejemplokanji])
        end
    end
end

function KanjiMemorize(dataframe)
    long = size(dataframe)[1]
    index = [x for x in 1:long]
    length_index = length(index)
    while length_index != 0
        random = rand(index)
        kanji = dataframe[random,:kanji]
        español = dataframe[random,:español]
        ejemplo = dataframe[random,:ejemplo]
        ejemplo_kanji = dataframe[random,:ejemplokanji]
        println(kanji)
        respuesta = readline()
        if contains(respuesta, kanji)
            println(español)
            filter!(e -> e≠random, index)
            length_index = length(index)
        else
            println(español)
            println("$ejemplo_kanji - $ejemplo")
            readline()
        end
        println("---------$length_index-----------")
    end
    return
end

KanjiMemorize(kanjis)
