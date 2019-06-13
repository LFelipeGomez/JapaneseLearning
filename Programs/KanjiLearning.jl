using DataFrames
using CSVFiles
using ArgParse

#----------START ARGPARSE----------

ArgumentsSettings = ArgParseSettings()
@add_arg_table ArgumentsSettings begin

end


#----------END ARGPARSE-------------

dataframe = DataFrame(load("./Datasets/KanjisN4.csv"))
verbos_g1 = DataFrame(load("VerbosG1.csv"))

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

KanjiLearning(dataframe)

# TODO: completar lista kanjis id:6
# - <https://github.com/LFelipeGomez/JapaneseLearning/issues/2>
# Luis Felipe Gómez López
# L.Felipe_Gomez@ciencias.unam.mx

#TODO Add ArgsParse
