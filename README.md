# Hypothetical Haycorns

This is the source code for my Hypothetical Hycorns blog.

## Set Up Development Environment

1. Install [devbox](https://www.jetpack.io/devbox).
2. Install [direnv](https://direnv.net) and [hook it into your shell](https://direnv.net/docs/hook.html).

## Run Development Server

```shell
devbox run dev
```

## Build Website

```shell
devbox run build
```

## Add Theme

```shell
devbox run theme add
```

## Update Theme

```shell
devbox run theme update
```

## Remove Theme

```shell
devbox run theme remove
```

## Add Blog Post

```shell
hugo new posts/name-of-post.md
```

## Change the date of a blog post to today's date

```shell
devbox run todate content/posts/<filename>.md
```
