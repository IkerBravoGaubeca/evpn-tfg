#!/bin/bash
# Crear bridge para VNI 1001
ip link add br1001 type bridge
ip link set br1001 up
# Crear interfaz VXLAN
ip link add vxlan1001 type vxlan id 1001 dstport 4789 dev eth1 local 10.0.0.10
ip link set vxlan1001 up
# Asociar interfaz
brctl addif br1001 vxlan1001
brctl addif br1001 eth2

