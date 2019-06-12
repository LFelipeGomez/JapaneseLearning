using DataFrames
using CSVFiles

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

start_chapter = 1
last_chapter = 10
time = 4
path = "./KanjiBook"
KanjiBookLearning(start_chapter,last_chapter,time,path)

#TODO Add ArgsParse
