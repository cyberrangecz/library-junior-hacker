# Cybersecurity game "Junior hacker training"

Linear game for [KYPO CRP](https://docs.crp.kypo.muni.cz/).

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
|attacker|kali|csirtmu.tiny1x2|
|server|debian-10|csirtmu.tiny1x2|
|client|debian-10|csirtmu.tiny1x2|
|router|debian-10|csirtmu.tiny1x2|


## License and Credits
See [licensing](https://gitlab.ics.muni.cz/muni-kypo-trainings/games/all-games-index#license) and how to [cite it](https://gitlab.ics.muni.cz/muni-kypo-trainings/games/all-games-index#how-to-cite-the-games).

[Cybersecurity Laboratory](https://cybersec.fi.muni.cz)\
Faculty of Informatics\
Masaryk University

**Leading author:** Miriam Gáliková

**Contributors/Consultants:** Valdemar Švábenský, Jan Vykopal
