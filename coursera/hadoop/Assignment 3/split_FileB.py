 def split_fileB(line):
    # split the input line into word, date and count_string
    key_value = line.split(",")
    count_string = key_value[1]
    [date, word] = key_value[0].split(" ")[0:2]
    return (word, date + " " + count_string)