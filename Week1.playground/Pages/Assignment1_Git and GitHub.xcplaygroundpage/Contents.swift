//Answer2
/*
 git status: 瀏覽本地端檔案 workspace 與 staging area 索引狀態(如 modified )
 =================use cases=================
 littlema (master) Reflections $ git status
 On branch master
 Changes not staged for commit:
 (use "git add <file>..." to update what will be committed)
 (use "git checkout -- <file>..." to discard changes in working directory)
 
 modified:   lesson-1-reflection-prompts.txt
 
 no changes added to commit (use "git add" and/or "git commit -a")
 ===========================================
 
 git add: 將修改的檔案加入 staging area ，準備加入版本
 =================use cases=================
 littlema (master *) Reflections $ git add lesson-1-reflection-prompts.txt
 littlema (master +) Reflections $ git status
 On branch master
 Changes to be committed:
 (use "git reset HEAD <file>..." to unstage)
 
 modified:   lesson-1-reflection-prompts.txt
 ===========================================
 
 git commit: 提交 staging area 的檔案，存入本地端 repository ，建立新版本
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
 
 git log: 查詢已提交的 Commit 紀錄，如 ID 、時間、作者、 Commit 說明、歷史記錄等相關資訊
 =================use cases=================
 littlema (master) AppWorksSchool $ git log
 commit 9c0b5382493ea371cde57ed569023883de219c77 (HEAD -> master, origin/master)
 Author: littlema <j620178@gmail.com>
 Date:   Sun Jun 16 10:36:58 2019 +0800
 
 Add first version
 ===========================================
 
 git push [ Repo_name ] [ Branch_name ]: 由本地端的 repository 上傳到遠端 repository ， push 後面分別為 repository 名稱與分支名稱
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
 
 git remote -v: 查詢檔案遠端 URL 位置
 =================use cases=================
 littlema (master) Reflections $ git remote -v
 origin    https://github.com/j620178/Reflections.git (fetch)
 origin    https://github.com/j620178/Reflections.git (push)
 ===========================================
 
 git branch: 查詢目前分支，*為目前分支， branch 加參數可增加分支
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
 
 fork: Clone 一份別人 git 的專案，但是藉由 GitHub 伺服器上進行 Clone 。好處是自己的專案與被 Clone 原作者的專案具有連結。
 1.於別人的專案中，點選Fork按鈕
 2.完成Fork後即會跳回自身已Fork的專案頁面中
 3.可點選Clone or Download，複製連結如：https://github.com/j620178/Reflections.git
 4.於Terminal中輸入『git clone https://github.com/j620178/Reflections.git』，即可完成本地端下載
 5.之後就可以branch新的分支，commit新內容並push回GitHub中
 =================use cases=================
 littlema Git $ git clone https://github.com/j620178/Reflections.git
 Cloning into 'Reflections'...
 remote: Enumerating objects: 12, done.
 remote: Counting objects: 100% (12/12), done.
 remote: Compressing objects: 100% (8/8), done.
 remote: Total 12 (delta 4), reused 12 (delta 4), pack-reused 0
 Unpacking objects: 100% (12/12), done.
 ===========================================
 */

//Answer3
/*
 1.完成 Github 帳號申請後，可於 Github 頁面右上十字符號進入新增 New Repository
 2.命名 Repository name 內容，並點選 『New Repository』 建立 Repository
 3.複製頁面上之 htpps 的 RemoteURL 備用
 4.於Terminal內，輸入 『cd Reflections』 移動到建立git資料夾位置。並使用 『git init』 指令建立新的 Repository
 5.輸入 『git remote add origin https://github.com/j620178/Reflections.git』 git remote add 指令功能為其新增 remote 位置，後方的URL即為從 Github 取得，直接貼上即可。
 6.輸入 『git add lesson-1-reflection-prompts.txt』 lesson-1-reflection-prompts.txt 為檔案名稱，可依需求自行更改。 add 後該檔案即會進入 staging area
 7.輸入 『git commit』 ，即可完成本地端新檔案版本提交
 8.輸入 『git push origin master』 ，即可將檔案上傳至 Github Repository 中
 9.回到Github網頁，重新整理，即可於該 Repository 中，看到上傳之檔案。
 */
