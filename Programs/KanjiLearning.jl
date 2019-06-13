using DataFrames
using CSVFiles
using ArgParse

#----------START ARGPARSE----------

function ParseCommandline()
    ArgumentsSettings = ArgParseSettings()
    @add_arg_table ArgumentsSettings begin
        "--dataset_path", "-p"
            help = "Path to the folder where the csv are"
            arg_type = String
            default = "../Datasets/KanjisNs/"
        "--time", "-t"
            help = "Time between outputs"
            arg_type = Int64
            default = 5
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

function KanjiLearning(dataframe, time= 5)
    long = size(dataframe)[1]
    index = [x for x in 1:long]
    while length(index) != 0
        random = rand(index)
        filter!(e -> e≠random, index)
        println(dataframe[random,:español])
        sleep(time)
        println(dataframe[random,:kanji])
        println(dataframe[random,:ejemplo])
        sleep(time)
    end
end

#------------END DEFINITIONS------------

#------------START EXECUTION------------

path = parsed_args["dataset_path"] * "KanjisN4.csv"
dataframe = DataFrame(load(path))
KanjiLearning(dataframe)

#------------END EXECUTION---------------

# TODO: completar lista kanjis id:6
# - <https://github.com/LFelipeGomez/JapaneseLearning/issues/2>
# Luis Felipe Gómez López
# L.Felipe_Gomez@ciencias.unam.mx

#TODO Add ArgsParse
