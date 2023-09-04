/*
#1. Please create a public GitHub repository named “Remote-Assignments” for uploading your homework. Please send your repository link to us through Discord direct message and we will check your assignments through your repository every week. We need you to structure your folders as below:
- Remote-Assignments
- Week 1 : https://github.com/boxingbat/Remote-Assignments/tree/main/Week1
- Week 2 : https://github.com/boxingbat/Remote-Assignments/tree/main/Week2/Week2.playground
- Week 3 : https://github.com/boxingbat/Remote-Assignments/tree/main/Week3/Week3.playground
- Week 4 : https://github.com/boxingbat/Remote-Assignments/tree/main/Week4/Week4.playground

#2. Here are some Git and GitHub commands we usually use in software development. Please explain the meanings and use cases of them.
##● git status
 -> clerify which brench we are working right now
 -> it will show the data/document that is modified, untracked, or just added into the temporary storage
 -> ex.
 位於分支 main
 您的分支與上游分支 'origin/main' 一致。

 尚未暫存以備提交的變更：
   （使用 "git add <檔案>..." 更新要提交的內容）
   （使用 "git restore <檔案>..." 捨棄工作區的改動）
     修改：     .DS_Store
     修改：     Week1/.DS_Store
     修改：     Week1/Week 1.playground/Pages/Part1.xcplaygroundpage/Contents.swift
     修改：     Week1/Week 1.playground/Pages/Part2.xcplaygroundpage/Contents.swift
     修改：     Week1/Week 1.playground/contents.xcplayground

 未追蹤的檔案:
   （使用 "git add <檔案>..." 以包含要提交的內容）
     Week1/Week 1.playground/playground.xcworkspace/
     Week1/Week 1.playground/xcuserdata/
     Week2/.DS_Store
     Week3/.DS_Store
     Week4/.DS_Store

 修改尚未加入提交（使用 "git add" 和/或 "git commit -a"）
 
 
##● git add
 -> adding documet to staging area (ex add . => add all the modified documents)
 
 
##● git reset
 -> back to previous version (we can appoint the especial verison by calling the commit no.)
 -> ex. git reset e12d8ef^^ (each ^ means one step/version backward)
 -> git reset --soft: data is remained in both staging area and working directory
 -> git reset --mixed(defult): data is moved back to working directory , but the changes are no longer staged
 -> git reset --hard: it will be compeletly moved in both working directory and staging area
 
##● git commit
 -> making the document in the staging  area become a fromal commit , which would be an important message looking any modification in the future
 -> ex.  git commit -m " " (put the title/description you need in " ")
##● git log
 
 
 -> showing all the commit you have done
 -> ex.
 commit 7bfd0c833964a7b710a55a4799ee0e49c3dea722 (HEAD -> main, origin/main)
 Author: Mike <boxingbat>
 Date:   Thu Aug 31 15:53:01 2023 +0800

     folder update

 commit 7cd62bb92054a22ef4d5f343ecfc4f5f75e6aa30
 Author: Mike <boxingbat>
 Date:   Thu Aug 31 15:47:28 2023 +0800

     update folder structure

 commit e7d142e935b8257c83019ecf03b6b235a49ec743
 Author: Mike <boxingbat>
 Date:   Thu Aug 31 15:41:22 2023 +0800

     first commit
 
 
##● git branch
 -> branch is split from main for several development requirements,
 -> ex. git branch => showing all the branch we have , if there is no any other branch ,it would only show "main"
 -> ex.
 main
 branch1
 branch2
 -> ex. git branch branch1 => create a new branch called branch1
 -> ex. git checkout branch1 => swich into branch1
 -> ex. git branch -d branch1 => delete branch1
 
 ##● git merge
 
 -> to maerge the branch in to master
 -> ex. git merge <commit>
 
##● git push [ repo_name ] [ branch_name ]
 -> updload all the commits/document to github repo, you can only type "git  push" if the repo connecting and main/branch is already set
##● git remote
 -> show the repositories we set ,the defulat should be "orgin"
##● fork
 -> make a indipendant copy for you , which will be save in your own github
 -> ex. click the bottom in upper right corner
 -> git clone " the URL you just fork "
 
##● (Advanced) git rebase
-> when we use git merge ,git will only combine the latest version on the branch to the master , the old version/data will stay on the branch
-> git rebase will transfer all the record from branch to master , that's the reason why there would be more conflict issue by using git rebase than git merge
-> ex. $ git rebase -i HEAD~~
 
##● (Advanced) git cherry-pick
-> pick the specify commit you need
 ->ex.  git cherry-pick fd23e1c 6a498ec f4f4442
          add user name
 
##● (Advanced) git reflog
-> show all the detials of git, not only commit (git log will only show you the commits)
 
##● (Advanced) git tag
-> tag would be used in important update , like named the version, mark some special update.

#3. Please describe how to establish a GitHub repo and how to upload the local projects to GitHub. Try to explain your answers with as much detail as possible.
 1. use github to create a new repo
 2. following the intrduciton on git hub
 create a new repository on the command line
 mdkir newfolder
 git init
 git add README.md
 git commit -m "first commit"
 git branch -M main
 git remote add origin (input URL)
 git push -u origin main

 push an existing repository from the command line
 git remote add origin (input URL)
 git branch -M main
 git push -u origin main
*/
