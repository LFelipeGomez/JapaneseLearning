using DataFrames
using CSVFiles
using ArgParse


#----------START ARGPARSE----------

function ParseCommandline()
    ArgumentsSettings = ArgParseSettings()
    @add_arg_table ArgumentsSettings begin
        "--folder_path", "-p"
            help = "Path to the folder where the csv are"
            arg_type = String
            default = "../Datasets/KanjisNs/"
        "--level", "-N"
            help = "Level (N#) to be studied"
            arg_type = Int64
            default = 4
    end
    return parse_args(ArgumentsSettings)
end

parsed_args = ParseCommandline()

function main(parsed_args)
    println("Parsed args:")
    for (arg,val) in parsed_args
        println(" $arg => $val")
    end
end

main(parsed_args)

#----------END ARGPARSE-------------

#----------START DEFINITIONS---------

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

#------------END DEFINITIONS------------

#------------START EXECUTION------------

path = parsed_args["folder_path"] * "KanjisN" * string(parsed_args["level"]) * ".csv"
kanjis = DataFrame(load(path))
KanjiMemorize(kanjis)

#------------END EXECUTION---------------
