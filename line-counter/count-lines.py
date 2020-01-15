import glob
import sys

global_lines = 0

def line_counter(file_list):
    global global_lines
    for file in file_list:
        lines = 0
        f = open(file, "r")
        data = f.read()
        for l in data.split("\n"):
            if len(l) > 0:
                lines += 1
                global_lines += 1
        f.close()
        
        if len(sys.argv) > 1:
            if sys.argv[1] == "all":
                print(file, "--", lines)

files_c = glob.glob("../src/*.c")
files_h = glob.glob("../includes/*.h")


line_counter(files_c)
line_counter(files_h)
print("Total lines in all files:", global_lines)
