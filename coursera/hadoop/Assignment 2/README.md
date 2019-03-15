# Assignment 2 (2nd assignment of Week 4)

## Programming Steps

Exercise in Joining data with streaming using Python code
In Lesson 2 of the Introduction to Map/Reduce module the Join task was described. In this assignment, you are given a Python mapper and reducer to perform the Join described in the 3rd video of Lesson 2. The purpose of Part 1 of this assignment is to provide an example for Part 2. In Part 2 you will need to modify the provided Python code (or write your own from scratch) to perform a different Join and upload the output file(s).

Please read through all the instruction and the programming notes, especially if you are not a programmer. It is not a hard programming assignment, but is worth the effort to understand the nature of map/reduce framework.

PART 1
1. Follow the steps from the Wordcount assignment to set up the following files on Cloudera: join1_mapper.py, join1_reducer.py, join1_FileA.txt, and join1_FileB.txt (see the Code and Text Files section at the bottom)

Don’t forget to enter the following at the unix prompt to make it executable
```
> chmod +x join1_mapper.py 
> chmod +x join1_reducer.py
```

2. Follow the steps from the Wordcount assignment to set up the data in HDFS

3. Test the program in serial execution using the following Unix utilities and piping commands:

(‘cat’ prints out the text files standard output; ‘|’ pipes the standard output to the standard input of the join_mapper program, etc.. )
```

```
> cat join1_File*.txt | ./join1_mapper.py | sort | ./join1_reducer.py
```

To debug programs in serial execution one should use small datasets and possibly extra print statements in the program. Debugging with map/reduce jobs is harder but hopefully not necessary for this assignment. There are more descriptions of how to debug your code in the reading notes for the lesson.

4. Run the Hadoop streaming command:

(Note that your file paths may differ. Note the ‘\’ just means the command continues on next line. )

```
> hadoop jar /usr/lib/hadoop-mapreduce/hadoop-streaming.jar  -input /user/cloudera/input -output /user/cloudera/output_join  -mapper /home/cloudera/assignment2/join1_mapper.py  -reducer /home/cloudera/assignment2/join1_reducer.py
```

Note: You may need to do the following command to not get the `SafeModeException` error.
```
hdfs dfsadmin -safemode leave
```

PART 2: A new join problem
First generate some datasets using the scripts (see the Code and Text Files section at the bottom) as follows:

```
> sh make_data_join2.txt
```

(this is a script that produces 6 files:

python make_join2data.py y 1000 13 > join2_gennumA.txt

python make_join2data.py y 2000 17 > join2_gennumB.txt

…)

2. Use HDFS commands to copy the 6 files created in step 1 into one HDFS directory, just like step 2 in Part 1 and in the wordcount assignment.

Note: These datasets are pseudo-randomly generated so the output is the same for any environment. The files are not large, however they are big enough that it would be time consuming to solving the assignment by hand. One could put the data in a database but that would defeat the purpose of the assignment!

3. The datasets generated in step 1 contain the following information:

join2_gennum(star).txt consist of <TV show, count> (A TV show title and the number of viewers)

Example join2_gennum(star).txt:

```
Almost_News, 25
Hourly_Show,30
Hot_Cooking,7
Almost_News, 35
Postmodern_Family,8
Baked_News,15
Dumb_Games,60
…
```

join2_genchan*.txt consists of <TV show title, channel> (A TV show title and the channel it was on)*

Example join2_genchan(star).txt:

```
Almost_News, ABC
Hourly_Show, COM
Hot_Cooking, FNT
Postmodern_Family, NBC
Baked_News, FNT
Dumb_Games, ABC
…
```

4. Your Task: Implement the following join request in Map/Reduce:

What is the total number of viewers for shows on ABC?
The show-to-channel relationship is Many-to-Many. In other words, each show might appear on many channels, and each channel might broadcast many shows.

In pseudo-SQL it might be something like:

select sum( viewer count) from File A, File B where FileA.TV show = FileB.TV show and FileB.Channel='ABC' grouped by TV show

5. Upload the resulting output from the reducers, use numReduceTasks=1

The output will look like: <TVshow_title total_viewers>

Example Output:

```
Almost_News 60
Dumb_Games 60
…
```

Data Notes:
TV show titles do not have spaces
Channels have 3 letters
TV show titles can appear multiple times, with different counts
A TV show and channel combination might appear multiple times
TV shows could appear on multiple channels
The output should have no commas or punctuation, only 1 space between the TV show title and number
Programming Notes and Detailed Suggestions:
You should be able to use 1 map/reduce job. If you are not a programmer then you should review the join1 code and the wordcount code. You should consider starting with the join1_mapper and the join1_reducer code. I believe all the logic and functional examples you will need are in the wordcount and the join1 code.