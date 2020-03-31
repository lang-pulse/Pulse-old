start = 14
vars = ["vm->stack"]

for var in vars:
    print("<tr>")
    print(" <td>%d</td>" % start)
    print(" <td>%s</td>" % (var.split(",")[0]))
    print(" <td>%s</td>" % (var.split(",")[1]))
    print(" <td>True</td>")
    print("</tr>")
    start += 1
