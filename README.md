# mosdns-config
mosdns v5 国内国外域名分流的配置

# 步骤
- 安装 mosdns v5

- 生成目录架构所需文件 ./configfile.sh

- 下载 config.yaml 配置文件到指定目录

- 启动服务

# 目录结构

```bash
.
├── all_cn_cidr.txt
├── apple-cn.txt
├── cname.txt
├── config.yaml
├── direct-list.txt
├── gfw_domain_list.txt
├── google-cn.txt
├── hosts.txt
└── log
    └── log.txt
```

# mosdns 安装
```bash
docker run -d --restart=always --name mosdns -p 53:53/udp -p 53:53/tcp -v /etc/mosdns:/etc/mosdns irinesistiana/mosdns:latest
```

# mosdns 升级
```bash
docker pull irinesistiana/mosdns:latest
docker stop mosdns
docker rm mosdns
docker run -d --restart=always --name mosdns -p 53:53/udp -p 53:53/tcp -v /etc/mosdns:/etc/mosdns irinesistiana/mosdns:latest
```
