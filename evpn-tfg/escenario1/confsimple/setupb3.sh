#!/bin/bash

ip link add br0 type bridge
ip link set dev br0 up

# Crear la interfaz VXLAN
ip link add vxlan11 type vxlan id 111 dstport 4789 dev eth1 local 10.141.163.9
ip link set dev vxlan11 up

brctl addif br0 vxlan11
brctl addif br0 eth2

ip link set dev eth2 up
