# Cybersecurity game "Junior hacker training"
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)
[![License: CC BY 4.0](https://img.shields.io/badge/License-CC%20BY%204.0-orange.svg)](https://creativecommons.org/licenses/by/4.0/)

Linear game for [CyberRangeCZ Platform](https://docs.platform.cyberrange.cz/).

## Game Levels Summary
- connect to sandbox and read general info
- host scan with `nmap`
- manual password guessing at `SSH`
- explore filesystem and transfer files with `scp`
- zip password cracking with `fcrackzip`
- change user password with `passwd`

## Topology summary
|Host|Image|Flavor|
|-|-|-|
|attacker|kali|standard.small|
|server|debian-12-x86_64|standard.small|
|client|debian-12-x86_64|standard.small|
|router|debian-12-x86_64|standard.small|

## License

This repository uses a dual licensing approach:

* The code (Vagrant, Ansible, and custom code) is licensed under the terms of the MIT License (https://opensource.org/license/mit).
* The game design is licensed under a Creative Commons Attribution 4.0 International License (CC BY 4.0).

**Attribution:**

Based on the game design from:
junior-hacker (https://gitlab.ics.muni.cz/muni-kypo-trainings/games/junior-hacker)

**Cybersecurity Laboratory**
Faculty of Informatics
Masaryk University

**Leading author:** Miriam Gáliková

**Contributors/Consultants:** Valdemar Švábenský, Jan Vykopal
