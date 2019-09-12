# Connect to your container via ssh

Your team container is reachable via ssh at your team port.
All info will be given to you at the hackathon.

For example team port 1234, DGX IP 10.10.10.10
```
ssh root@$10.10.10.10 -p 1234
```

For your convenience we created some [helper scripts](scripts/).
They are written for Ubuntu. If you're using Mac or Windows, you might need to adjust them. If you need help, just ask us.

To use the the scripts run [setup.sh](scripts/setup.sh) (which will install the necessary tools) and adjust [setupEnv.sh](scripts/setupEnv.sh) with the credentials given to you.

+ [connect.sh](scripts/connect.sh): connects to the DGX via ssh
+ [upload.sh](scripts/upload.sh):
uploads files or folders to your container relative to `/notebooks/data/`
Usage:
```
./upload.sh -l <LOCAL_PATH> -r <RELATIVE_REMOTE_PATH>
```