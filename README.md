## Topics

- Java
- Scala, Cats, AKKA
- SpringBoot, SpringCloud
- Docker, k8s
- DDD, Agile
- Go

## How to publish

```bash

## create a new post, don't forget to update 'draft` from `true` to `false`
$ hugo new posts/java-concurrent/jc1-basic-concept.md

## build
$ hugo

## local preview
$ hugo server

## deploy to github
$ ./deploy.sh 'optional commit message'
```

##  Hugo and Github Pages

1. Two git repo (both are `main` branch):
	- `blog-source`: git@github.com:nkcoder/blog-source.git
	- `nkcoder.github`: git@github.com:nkcoder/nkcoder.github.io.git

2. When run `hugo` command, it will generate `publich` directory, which is the content of the `nkcoder.github` repo.

3. Push `blog-source` and `public` to corresponding remote repo.

4. The script `deploy.sh` is a one-touch command.

## Migrate to new computer

```bash
$ git clone git@github.com:nkcoder/blog-source.git
$ cd blog-source
$ hugo
$ hugo server
$ cd public
$ git init
$ git add origin git@github.com:nkcoder/nkcoder.github.io.git
$ git push -u origin main
```

- [Build a Personal Website With Github Pages and Hugo](https://levelup.gitconnected.com/build-a-personal-website-with-github-pages-and-hugo-6c68592204c7)
