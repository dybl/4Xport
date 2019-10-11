import os

path = '.'
for f in os.listdir(path):
    os.rename(os.path.join(path, f), os.path.join(path, f.replace('', '7.')))
# 批量替换为给定字符串