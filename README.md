# opmanager
ManageEngine Eventlog Analyzer on docker

To quickly get started running use the following command:
```bash
docker run --detach --publish 8400:8400 babim/eventlog:latest
```
```
volume:
/opt/ManageEngine
port:
8400 513/tcp 514/tcp 513/udp 514/udp
```

run manual with CMD /usr/sbin/init and download, install apps
change to CMD default after install apps