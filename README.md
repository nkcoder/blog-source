## Hugo blog

- topics: Java, Scala, SpringBoot, SpringCloud, AKKA, Docker, k8s, DDD, Go

## How to publish

```bash
## create new posts
$ hugo new posts/java-concurrent/jc1-basic-concept.md

## build
$ hugo

## local preview
$ hugo server

## deploy to github
$ ./deploy.sh 'optional commit message'
```

> Hugo与Github Pages托管

1. `blog_source`的`main`分支对应`git@github.com:nkcoder/blog-source.git`的`main`分支
2. 运行`hugo`构建命令后，会生成/更新`public`目录，即博客的静态内容。`public`目录中的内容对应的是github pages仓库，即`git@github.com:nkcoder/nkcoder.github.io.git`的main分支。
3. 将`blog_source`目录和`public`目录下的内容分别推送到各自的远程仓库即可。
4. `deploy.sh`脚本即用于完成上述任务
