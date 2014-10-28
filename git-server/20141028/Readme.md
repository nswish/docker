1. 创建用户

   useradd -m git

2. 创建空的版本库

   git init --bare sample.git

3. 修改登录shell

   git:x:1001:1001:,,,:/home/git:/bin/bash => git:x:1001:1001:,,,:/home/git:/usr/bin/git-shell

4. 管理公钥

   /home/git/.ssh/authorized_keys

5. 克隆远程仓库

   git clone git@server:/sample.git

6. git服务开启

   git-daemon --export-all --verbose /home/git/qn.git
