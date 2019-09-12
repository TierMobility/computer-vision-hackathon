# NVIDIA DGX station host address
export HOST=
# Team container user name
export CONTAINER_USER=root
# Container root user password
export CONTAINER_ROOT_PASSWORD=
# Team id
export TEAM_ID=

if [ ! -n "$HOST" ] || [ ! -n "$CONTAINER_ROOT_PASSWORD" ] || [ ! -n "$TEAM_ID" ]
then
    echo "ERROR: You need to setup HOST, CONTAINER_ROOT_PASSWORD and TEAM_ID in setupEnv.sh"
fi
