# Dotfiles

These are my dotfiles, there are many like them, but these are mine. [rifelmans creed](http://en.wikipedia.org/wiki/Rifleman%27s_Creed)

I will document the aliases/commands that I have created so that there is a reference on how to use them and/or how they work. Stuff I copied and or borrowed from someone else should be documented elsewhere.

Though I have a Windows desktop (Win 7), most of my development and day to day work gets done on a Mac. So if you could please provide feedback on Win/Linux machines, I would greatly appreciate it and try and fix things to make them work on all boxes.

## git

Most of the things I mess around with git will be in the form of the git aliases. They are a pretty handy way of extending git, you can read more about them [here](http://git-scm.com/book/en/v2/Git-Basics-Git-Aliases).

### ppop

Calls a git command on a branch, without switching you from your current branch. In reality, what it does is that it will switch to the branch you specify, run the git command then checkout the last branch you where on.

**NOTE** the same limitations apply of not being able to switch between branches while certain changes or files are uncommitted or pending.

#### useage

**format**

`git ppop <branch-to-act-on> <command>`

`git ppop master status`

So, assuming we are on a `dev` branch. This will switch to `master`, print out its status, then switch back to `dev`

A better use case is, lets say you are on `dev`, want to rebase onto `master`, but also make sure `master` has the latest changes from `upstream`

#### old way
```
// assuming we are in dev branch
git checkout master
git pull
git checkout dev
git rebase master 
```

#### with ppop
```
// assumin we are in dev branch
git ppop master pull
git rebase master
```

## tig

These are some useful key bindings I've configured for [tig](https://github.com/jonas/tig).

> Text-mode interface for git

### c (case sensitive)
checkout the currently highlighted commit

### R (case sensitive)
`git reset hard` to the currently highlighted commit