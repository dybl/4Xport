global count       #用于批量生成txt
count = 1
for i in range(3):
    filename = './test/' + str(count) + '.txt'         #批量生成的文件名
    for j in range(5):
        f = open(filename,'a')
        f.write(str(j))
        f.close()
    count = count +1
