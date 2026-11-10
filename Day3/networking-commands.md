# Linux Networking Command Reference

## Network Information
- ifconfig
- ip addr
- netstat -rn
- ip route

## Connectivity
- ping -c 4 google.com
- ping -c 4 127.0.0.1

## DNS
- nslookup google.com
- dig google.com
- host google.com

## HTTP / HTTPS
- curl -I https://google.com
- curl -v https://google.com

## Port Checking
- lsof -i :8080
- ss -tuln

## Important Ports
| Port | Service |
|---|---|
| 22 | SSH |
| 53 | DNS |
| 80 | HTTP |
| 443 | HTTPS |
| 3306 | MySQL |
| 5432 | PostgreSQL |
| 8080 | Alternative HTTP |