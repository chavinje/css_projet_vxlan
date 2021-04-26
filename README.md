# Demonstration de Vxlan

## le but est de montrer le fonctionnement de Vxlan entre deux machines physiques

                              │
VM-1 : VXLAN 10 : 10.10.0.12  │
                              │ portable : 192.168.1.12  ◄───┐
VM-2 : VXLAN 20 : 10.20.0.12  │                              │
                              │                              │
                                                             │
                                                             │
                              │                              │
VM-3 : VXLAN 10 : 10.10.0.16  │                              │
                              │ fixe : 192.168.1.16  ◄───────┘
VM-4 : VXLAN 20 : 10.20.0.16  │
                              │

## Pré-requis

* Deux machines physiques différentes qui fonctionnent sous Linux
* Oracle virtualbox
* Oracle guest addition
* Hashicorp Vagrant

## La mise en place

* sur les deux machines lancer le script create_vxlan.sh en tant que root
* sur chaque machine faire un vagrant up (machine-1 et machine-2)