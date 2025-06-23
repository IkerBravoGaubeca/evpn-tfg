# evpn-tfg
Este repositorio contiene todos los archivos utilizados para el desarrollo práctico del Trabajo de Fin de Grado (TFG) sobre la emulación de redes EVPN utilizando VNX y FRRouting.

# Estructura del repositorio

- escenario1/:
    evpnsimple.xml: Escenario simple con dos routers (B3 y D3) y dos hosts (H13 y H23) conectados mediante EVPN.
    confsimple/: Archivos de configuración del escenario simple.
        - frrB3.conf, frrD3.conf: Configuración de FRR para los routers del escenario simple.
        - setupb3.sh, setupd3.sh: Scripts usados para crear bridges, interfaces VXLAN y conectarlas a las interfaces locales.
- escenario2/: 
    evpn.xml: Escenario más complejo con cuatro routers (A, B, C, D) y cinco hosts conectados por VXLAN sobre BGP EVPN.
    conf/: Archivos de configuración del escenario complejo.
        - frrA.conf, frrB.conf, frrC.conf, frrD.conf: Configuración de FRR para los routers del escenario complejo.
        - setupa.sh, setupb.sh, setupc.sh, setupd.sh: Scripts usados para crear bridges, interfaces VXLAN y conectarlas a las interfaces locales.
