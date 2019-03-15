def split_show_views(line):
    show_views = line.split(",")
    [show, views] = show_views[0:2]
    return (show, views)