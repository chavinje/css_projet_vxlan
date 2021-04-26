#!/bin/bash
## [JCG] - Creation de Vxlan sur une machine physique

# Adapter l'interface physique de la machine physique
PHY_DEV="enp0s31f6"
#PHY_DEV="eno1"

# pour adapter le groupe multicast en fonction de l'équipe
# remplacer par votre numéro d'équipe
EQUIPE=0

for i in 10 20
do
  ip link add vxlan${i} type vxlan id ${i} group 239.${EQUIPE}.0.${i} dstport 4789 dev $PHY_DEV
  ip link set vxlan${i} up
done
