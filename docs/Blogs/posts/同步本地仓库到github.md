---
title: 同步本地仓库到GitHub（通过SSH）
tags:
  - Github
categories: 
date: 2025-03-30T19:52:00+08:00
modify: 2025-03-30T19:52:00+08:00
dir: 
share: false
cdate: 2025-03-30
mdate: 2025-03-30
---

今天正式开始学习 CS61A，想着先给自己配置一个同步到Github的本地仓库，结果遇到了一些问题，以下是解决过程



### **完整解决方案：首次配置 SSH 并推送代码**

#### **第一步：生成 SSH 密钥**
1. 打开终端（PowerShell）执行：
```bash
ssh-keygen -t ed25519 -C "你的邮箱地址（如123@qq.com）"
```
- 遇到保存路径提示时 **直接按回车**（默认路径）
- 密码设置可以留空（直接回车两次）

2. 查看生成的密钥：
```bash
cat ~/.ssh/id_ed25519.pub  # 会显示类似 ssh-ed25519 AAA... 的内容
```

#### **第二步：将公钥添加到 GitHub**
1. 复制公钥内容（完整输出）
2. 登录 GitHub → 点击右上角头像 → Settings → SSH and GPG keys → New SSH key
3. Title 填写 "My PC"，Key 粘贴复制的公钥内容

#### **第三步：配置 SSH 连接（解决端口问题）**
1. 创建配置文件：
```bash
New-Item -Path "$env:USERPROFILE\.ssh\config" -ItemType File
```
2. 用记事本编辑该文件，输入以下内容：
```config
Host github.com
  Hostname ssh.github.com
  Port 443
  User git
  IdentityFile ~/.ssh/id_ed25519
```

#### **第四步：测试 SSH 连接**
```bash
ssh -T git@github.com
```
成功时会显示：
```text
Hi zlflly! You've successfully authenticated...
```

#### **第五步：切换仓库地址到 SSH**
```bash
git remote set-url origin git@github.com:zlflly/CS61A.git
```

#### **第六步：完成代码推送**
```bash
# 合并远程更改
git pull origin main --allow-unrelated-histories

# 解决可能的冲突后提交
git add .
git commit -m "merge initial commit"

# 最终推送
git push -u origin main
```

---

### **常见问题处理**

**如果仍然超时**：
1. 临时切换回 HTTPS 地址完成本次推送：
```bash
git remote set-url origin https://github.com/zlflly/CS61A.git
git pull origin main --allow-unrelated-histories
git push -u origin main
```

2. 推送成功后切换回 SSH：
```bash
git remote set-url origin git@github.com:zlflly/CS61A.git
```

---

### **操作验证清单**
| 步骤 | 验证方法 |
|-----|----------|
| 密钥生成 | `ls ~/.ssh` 应看到 id_ed25519 和 id_ed25519.pub |
| GitHub 密钥配置 | SSH 连接测试显示欢迎消息 |
| 地址切换 | `git remote -v` 显示 SSH 格式地址 |
| 端口配置 | 执行 `ssh -T git@github.com` 能成功连接 |

---

### **补充说明**
1. 如果使用公司/校园网络，可能需要管理员开放 443 端口
2. 建议完成首次推送后，执行以下命令设置默认分支：
```bash
git config --global init.defaultBranch main
```

完成这些步骤后，你将同时完成 SSH 配置和代码推送。如果遇到其他问题，请提供以下信息：
1. 执行 `ssh -vT git@github.com` 的输出
2. `git remote -v` 的结果
3. 密钥文件是否存在于 `C:\Users\你的用户名\.ssh\` 目录

### 这是我的命令行运行过程
```PowerShell
PS C:\Users\21583> cd "D:\User\Desktop\CS61A"
PS D:\User\Desktop\CS61A> git remote -v
origin  git@github.com:zlflly/CS61A.git (fetch)
origin  git@github.com:zlflly/CS61A.git (push)
PS D:\User\Desktop\CS61A> git pull origin main --allow-unrelated-histories
From github.com:zlflly/CS61A
 * branch            main       -> FETCH_HEAD
Already up to date.
PS D:\User\Desktop\CS61A> git add .
PS D:\User\Desktop\CS61A> git commit -m "Merge remote initial commit"
On branch main
nothing to commit, working tree clean
PS D:\User\Desktop\CS61A> git push -u origin main
Enumerating objects: 15, done.
Counting objects: 100% (15/15), done.
Delta compression using up to 22 threads
Compressing objects: 100% (11/11), done.
Writing objects: 100% (14/14), 1.29 KiB | 661.00 KiB/s, done.
Total 14 (delta 3), reused 0 (delta 0), pack-reused 0 (from 0)
remote: Resolving deltas: 100% (3/3), done.
To github.com:zlflly/CS61A.git
   7772a6f..4869e08  main -> main
branch 'main' set up to track 'origin/main'.
```