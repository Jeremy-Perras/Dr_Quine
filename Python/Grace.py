# One comment.
with open("Grace_kid.py", "w") as file2:
    s = '# One comment.\nwith open("Grace_kid.py", "w") as file2:\n    s = %r\n    file2.write(s %% s)\n'
    file2.write(s % s)
