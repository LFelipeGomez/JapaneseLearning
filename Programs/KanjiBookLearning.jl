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
            default = "../Datasets/KanjiBook/"
        "--time", "-t"
            help = "Time between outputs"
            arg_type = Int64
            default = 5
        "--start_chapter", "-s"
            help = "Chapter from where the program shall start"
            arg_type = Int64
            default = 1
        "--final_chapter", "-f"
            help = "Chapter until where the program shall end"
            arg_type = Int64
            default = 1
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

function KanjiBookLearning(start_chapter=1,last_chapter=1, time=5, path="./KanjiBook")
    chapters = collect(start_chapter:last_chapter)
    dataframe = DataFrame(español = String[])
    for chapter in chapters
        chapter_number = string(chapter)
        chapter_name = "KanjiBookPalabras" * chapter_number * ".csv"
        palabras = DataFrame(load(path*"/" * chapter_name))
        append!(dataframe[:español], palabras[:español])
    end
    long = size(dataframe)[1]
    index = collect(1:long)
    while length(index) != 0
        random = rand(index)
        filter!(e -> e≠random, index)
        println(string(random)*" "*dataframe[random,:español])
        sleep(time)
    end
end

#------------END DEFINITIONS------------

#------------START EXECUTION------------

start_chapter = parsed_args["start_chapter"]
last_chapter = parsed_args["final_chapter"]
time = parsed_args["time"]
path = parsed_args["folder_path"]
KanjiBookLearning(start_chapter,last_chapter,time,path)

#------------END EXECUTION---------------
