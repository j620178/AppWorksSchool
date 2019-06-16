//Answer2
/*
 git status: 瀏覽本地端檔案workspace與staging area索引狀態(如modified)
 =================use cases=================
 littlema (master) Reflections $ git status
 On branch master
 Changes not staged for commit:
 (use "git add <file>..." to update what will be committed)
 (use "git checkout -- <file>..." to discard changes in working directory)
 
 modified:   lesson-1-reflection-prompts.txt
 
 no changes added to commit (use "git add" and/or "git commit -a")
 ===========================================

 git add: 將修改的檔案加入 staging area，準備加入版本
 =================use cases=================
 littlema (master *) Reflections $ git add lesson-1-reflection-prompts.txt
 littlema (master +) Reflections $ git status
 On branch master
 Changes to be committed:
 (use "git reset HEAD <file>..." to unstage)
 
 modified:   lesson-1-reflection-prompts.txt
 ===========================================

 git commit: 提交staging area的檔案，存入本地端repository，建立新版本
 =================use cases=================
 Add lessonContext
 # Please enter the commit message for your changes. Lines starting
 # with '#' will be ignored, and an empty message aborts the commit.
 #
 # On branch master
 # Changes to be committed:
 #    modified:   lesson-1-reflection-prompts.txt
 #
 # Untracked files:
 #    .bash_profile
 #
 ===========================================

 git log: 查詢已提交的Commit紀錄，如ID、時間、作者、Commit說明、歷史記錄等相關資訊
 =================use cases=================
 littlema (master *+) Reflections $ git commit
 [master f705221] Fix lesson1
 1 file changed, 2 insertions(+), 1 deletion(-)
 ===========================================

 git push [ Repo_name ] [ Branch_name ]: 由本地端的repository上傳到遠端repository，push後面分別為repository名稱與分支名稱
 =================use cases=================
 littlema (master) Reflections $ git push origin master
 Username for 'https://github.com': j620178
 Password for 'https://j620178@github.com':
 Enumerating objects: 12, done.
 Counting objects: 100% (12/12), done.
 Delta compression using up to 4 threads
 Compressing objects: 100% (12/12), done.
 Writing objects: 100% (12/12), 1.25 KiB | 1.25 MiB/s, done.
 Total 12 (delta 4), reused 0 (delta 0)
 remote: Resolving deltas: 100% (4/4), done.
 To https://github.com/j620178/Reflections.git
 * [new branch]      master -> master
 ===========================================
 
 git remote -v: 查詢檔案遠端URL位置
 =================use cases=================
 littlema (master) Reflections $ git remote -v
 origin    https://github.com/j620178/Reflections.git (fetch)
 origin    https://github.com/j620178/Reflections.git (push)
 ===========================================
 
 git branch: 查詢目前分支，*為目前分支，branch加參數可增加分支
 =================use cases=================
 <Step1.>
 littlema (master) Reflections $ git branch
 * master
 <Step2.>
 littlema (master) Reflections $ git branch class2
 <Step3.>
 littlema (master) Reflections $ git branch
 class2
 * master
 ===========================================
 
 fork: Clone一份別人git的專案，但是藉由GitHub伺服器上進行Clone。好處是自己的專案與被Clone的專案具有連結。原作者
 =================use cases=================
 1.於別人的專案中，點選Fork按鈕
 2.完成Fork後即會跳回自身已Fork的專案頁面中
 3.可點選Clone or Download，複製連結如：https://github.com/j620178/SwiftGuide.git
 4.於Terminal中輸入『git clone https://github.com/j620178/SwiftGuide.git』，即可完成本地端下載
 5.之後就可以branch新的分支，commit新內容並push回GitHub中
 ===========================================
*/

//Answer3
/*
 1.完成Github帳號申請後，可於Github頁面右上十字符號進入新增New Repository
 2.命名Repository name內容，並點選『New Repository』建立Repository
 3.複製頁面上之htpps的RemoteURL備用
 4.於Terminal內，輸入『cd Reflections』移動到建立git資料夾位置。並使用『git init』指令建立新的Repository
 5.輸入『git remote add origin https://github.com/j620178/Reflections.git』git remote add指令功能為其新增remote位置，後方的URL即為從Github取得，直接貼上即可。
 6.輸入『git add lesson-1-reflection-prompts.txt』lesson-1-reflection-prompts.txt為檔案名稱，可依需求自行更改。add後該檔案即會進入staging area
 7.輸入『git commit』，即可完成本地端新檔案版本提交
 8.輸入『git push origin master』，即可將檔案上傳至Github Repository中
 9.回到Github網頁，重新整理，即可於該Repository中，看到上傳之檔案。
*/
