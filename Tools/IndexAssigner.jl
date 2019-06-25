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

function IndexAssigner(folder_path, start_chapter, final_chapter)
    chapters = start_chapter:final_chapter
    for chapter in chapters
        file_path = folder_path * "/KanjiBookPalabras" * string(chapter) * ".csv"
        dataframe = DataFrame(load(file_path))
        if chapter == 1
            start_index = 1
        else
            previous_file_name = folder_path * "/KanjiBookPalabras" * string(chapter - 1) * ".csv"
            previous_dataframe = DataFrame(load(previous_file_name))
            start_index = previous_dataframe[:BookIndex][end] + 1
        end
        final_index = start_index + size(dataframe,1) - 1
        dataframe[:BookIndex] = start_index:final_index
        save(file_path,dataframe)
    end
end

#------------END DEFINITIONS------------

#------------START EXECUTION------------

start_chapter = parsed_args["start_chapter"]
final_chapter = parsed_args["final_chapter"]
folder_path = parsed_args["folder_path"]

IndexAssigner(folder_path, start_chapter ,final_chapter)

println("---Completed---")

#------------END EXECUTION---------------
