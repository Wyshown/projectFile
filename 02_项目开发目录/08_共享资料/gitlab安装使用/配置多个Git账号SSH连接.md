### 1：应用场景
  在安装完个人的Gitlab后,创建仓库进行代码的拉推操作时，因为本地windows`~/.ssh`文件夹下已配置了github网站的ssh连接，无法正常对个人的Gitlab进行代码的提交操作，所以需要配置本地多个GIT账号SSH连接。				
  
  因为windows系统没有ssh-keygen命令，所以在window环境下生成秘钥需要其他软件，例如[puttyGen](https://www.chiark.greenend.org.uk/~sgtatham/putty/latest.html "https://www.chiark.greenend.org.uk/~sgtatham/putty/latest.html") 或者[GIT BASH](https://gitforwindows.org/ "https://gitforwindows.org/"),网上有关于这两种软件的安装教程很多，此处就不再赘述。本文使用的是GIT BASH进行秘钥生成，且git单账号配置非常容易，而对于多账号配置，由于本人踩了一个坑，所以才记录下来，以儆效尤。
	
### 2：GitLab的http方式提交
  git代码提交一般有两种方式，一为git的ssh提交方式，二为http的密码提交方式，对于gitlab而言，在http提交代码时要求输入的密码为 `个人访问令牌`,此令牌生成方式为 个人设置中的个人访问令牌
	   
### 3：Git多账号ssh连接[配置](https://gitlab.com/help/ssh/README "https://gitlab.com/help/ssh/README")
 * 3.1：查看当前计算机是否已生成ssh文件      	
 
 对于windows系统，秘钥文件一般位于`C：\USERS\个人计算机名`文件夹下的`.ssh`文件夹下，进入`C:\USERS\个人计算机名`路径下，若不存在`.ssh`文件夹，本地		
 就应该没有秘钥文件。			
 还可以通过cmd命令行的方式查看
 		
		type %userprofile%\.ssh\id_rsa.pub			
		
如果已经安装GIT BASH,可在GIT BASH中运行如下命令查看
		
		cat ~/.ssh/id_rsa.pub		
		
		
* 3.2：配置多GIT账号
	
生成github网站使用的秘钥对：
	
		ssh-keygen -t rsa -C xxxxxxxx@gmail.com
		
	
一路回车，默认的秘钥文件名称为id_rsa与id_rsa.pub，这两个文件会被存储在`C：\USERS\个人计算机名\.ssh`文件夹下

生成gitlab网站使用的秘钥对,GIT BASH进入`C：\USERS\个人计算机名\.ssh`文件夹下

		ssh-keygen -t rsa -C yyyyyyyyy@163.com			
		
在被询问秘钥名称时，输入id_rsa_gitlab，然后一路回车，会生成id_rsa_gitlab与id_rsa_gitlab.pub两个文件在`C：\USERS\个人计算机名\.ssh`文件夹下

使用notepadd或者类似的文本编辑工具将id_rsa_gitlab.pub内容复制到gitlab的ssh秘钥保存。			
或window的cmd复制		
		
		type %userprofile%\.ssh\id_rsa_gitlab.pub | clip			
		
或GIT BASH命令复制		

		cat ~/.ssh/id_rsa_gitlab.pub | clip
	
		


配置config文件		

在`C：\USERS\个人计算机名\.ssh\`文件下新建`config`文件，因为window系统下文件必须有后缀名，所以可以使用notepad新建然后另存为创建此文件。			
文件内容为：		
		
		# GitHub.com server
		Host git@github.com
		RSAAuthentication yes
		IdentityFile ~/.ssh/config/id_rsa
		
		# Private GitLab server
		Host gitlab.company.com  /**此处填写gitlab的ip,如果已配置域名，可填写域名*/
		RSAAuthentication yes
		IdentityFile ~/.ssh/config/id_rsa_gitlab
		

测试ssh连接，进入GIT BASH

手动开启ssh，如下：
		
		eval $(ssh-agent -s)
		
专用密钥添加到ssh-agent的高速缓存中，（如果没有进行上一步操作，而直接执行如下操作，可能会报错`Could not open a connection to your authentication agent.`）如下：

		ssh-add ~/.ssh/id_rsa_gitlab
		
以上两步操作非常重要，我就是在这踩的坑，因为没有将私钥文件加入ssh的agent，造成测试ssh连接一直不能成功，跳出要求输入密码的要求。			
进行连接测试
		
		ssh -Tv git@ip或域名
		
其中，v可显示debug日志,若连接成功，会有`Welcome to GitLab, username!`的提示			






`


	
	
	
	

 
	
