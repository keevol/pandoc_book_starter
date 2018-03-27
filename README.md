# Intro
使用pandoc编写书的项目模板

使用MarkdownPP和pandoc构建。

# Gotchas

## image not found error

如果我们没有对md进行image路径的filter， 会报错：

```
➜  pandoc_book_starter git:(master) ✗ sh build.sh
File images/ipfs.jpeg not found in resource path
```

因为从当前workdir下， index.md为基准的相对路径与原来chapters下的md引用的image相对路径的`相对`不是一个。
