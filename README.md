# TIER computer vision hackathon

Hello and welcome to the TIER computer vision hackathon.

This repository is meant to guide you through the technical setup. If anything is unclear or you have other questions. Please reach out to one of the TIER employees at the event.

## Donkey car setup

Please follow the instructions [here](donkeyCar/setup.md)

## NVIDIA DGX Station

Each team has their own docker container with root permissions and one GPU.

There are a couple of python3 packages pre-installed [list](nvidiaDGXStation/preinstalledPackages.md).

To install other python3 packages [ssh](./nvidiaDGXStation/ssh.md) into the DGX and run `pip3 install <PACKAGE_NAME>`

[Tensorflow object detection API](https://github.com/tensorflow/models/tree/master/research/object_detection) is pre-installed and ready to go.

You have two options to work with the DGX
1. Connect via [ssh](./nvidiaDGXStation/ssh.md)
2. Run [jupyter notebook](./nvidiaDGXStation/jupyter.md)

