原项目不指定版本和pip，本fork更新了docker相关部署代码，可以一键部署

# MysqlHoneypot
Use MySQL honeypot to get wechat ID

待解决问题：

* 同一出口IP的不同攻击者的信息如何区分
* 读取的文件较大时，客户端会分段传输，如何完整获取
* ~~前端有点bug，不管了，能用就行了~~

# Dokcer 部署
1. 克隆本项目, 修改密码 MysqlHoneypot\webServer.py
```python
# 请自行更改密码
users = {
    "admin": generate_password_hash("密码")
}
```

2. 在本项目下面执行
```bash
docker-compose up -d
```
