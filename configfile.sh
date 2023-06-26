wget https://ispip.clang.cn/all_cn_cidr.txt
wget https://raw.githubusercontent.com/Loyalsoldier/v2ray-rules-dat/release/apple-cn.txt
wget https://raw.githubusercontent.com/Loyalsoldier/v2ray-rules-dat/release/direct-list.txt
wget -O gfw_domain_list.txt https://raw.githubusercontent.com/Loyalsoldier/v2ray-rules-dat/release/gfw.txt
wget https://raw.githubusercontent.com/Loyalsoldier/v2ray-rules-dat/release/google-cn.txt
echo "# 格式：域名 重定向的域名" > cname.txt
cat <<EOF > hosts.txt
# 域名匹配规则
# A 记录：域名 IP
# 以 domain: 开头，域匹配 domain:yourdomain.com 192.168.1.1 192.168.0.1
# 以 full: 开头，完整匹配
# 以 keyword: 开头，关键字匹配

# 泛域名

# A 记录

EOF
