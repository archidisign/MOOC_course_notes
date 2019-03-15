def split_show_channel(line):
    show_channel = line.split(",")
    [show, channel] = show_views[0:2]
    return (show, channel)