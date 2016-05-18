就是一些常用的小脚本集合现在的不多就两个，以后想起了慢慢加

### etc目录
1. git-completion.bash
用于实现git的自动补全功能的，在`~/.bashrc`中加上以下语句，使用git时按tab就会有自动补全了
```bash
# 此处的/path/to/git-completion.bash换成对应的路径就好
if [ -f /path/to/git-completion.bash ]; then
    . /path/to/git-completion.bash
fi
```


### bin目录
1. pjson
用于让json打印出来漂亮一些
```bash
pjson file
# or
cat file | pjson
```

1. gftp
用于获取当前的ftp地址
```bash
gftp path/to/file
```
