# Root-VPS Password Changer For VPS

1.Login into your vps <br>
2.Type sudo -i & paste below command <br>

```
sysctl -w net.ipv6.conf.all.disable_ipv6=1 && sysctl -w net.ipv6.conf.default.disable_ipv6=1 && apt install wget whois -y && wget https://raw.githubusercontent.com/vinstechmy/Root-VPS/main/root.sh && chmod +x root.sh && ./root.sh && rm root.sh
```
