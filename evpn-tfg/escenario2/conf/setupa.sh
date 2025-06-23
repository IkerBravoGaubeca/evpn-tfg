#!/bin/bash
# Crear bridges
ip link add br1001 type bridge
ip link set br1001 up

ip link add br1002 type bridge
ip link set br1002 up
# Crear interfaces VXLAN
ip link add vxlan1001 type vxlan id 1001 dstport 4789 dev eth1 local 10.0.0.1
ip link set vxlan1001 up

ip link add vxlan1002 type vxlan id 1002 dstport 4789 dev eth1 local 10.0.0.1
ip link set vxlan1002 up
# Asociar interfaces físicas y VXLANs a los bridges
brctl addif br1001 vxlan1001
brctl addif br1001 eth2

brctl addif br1002 vxlan1002
brctl addif br1002 eth3

