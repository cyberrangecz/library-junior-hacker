# Cybersecurity game "Junior hacker training"

This cybersecurity game allows a hands-on demonstration of topics such as network scanning, SSH connections, and password cracking. It is suitable for undergraduate students in computing.

## Requirements

* A standard personal computer or laptop with Windows, Linux, or Mac OS X operating system.
* At least 4 GB of free RAM and 4 vCPU cores.
* At least 20 GB of free disk space.
* Internet connection.
* Install the prerequisites for the [Cyber Sandbox Creator tool](https://gitlab.ics.muni.cz/muni-kypo-csc/cyber-sandbox-creator/-/wikis/Installation), namely: Vagrant, Ansible, VirtualBox, and have virtualization enabled.

## Instructions

1. To instantiate the game, clone this repository, open a command-line interface in its root folder, and run the command `vagrant up`. This will set up virtual machines of attacker, server, and client. If you run across any technical issues at this stage, check out the [Cyber Sandbox Creator wiki](https://gitlab.ics.muni.cz/muni-kypo-csc/cyber-sandbox-creator/-/wikis/Known-Issues) for troubleshooting tips.

2. Log into the attacker machine: either via VirtualBox GUI using the login `root` and password `toor`, or via the command `vagrant ssh attacker` and escalate your privileges to `root`.

3. Follow the assignments and the storyline in the `game_design.md` file.

## License

This project is licensed under the [MIT license](LICENSE) for the code (Vagrant and Ansible) and [CC BY 4.0](https://creativecommons.org/licenses/by/4.0) license for the game design.

## Credits and contact

**[Cybersecurity Laboratory](https://kypo.fi.muni.cz)**\
**Faculty of Informatics**\
**Masaryk University**

**Leading author:** Miriam Gáliková

**Contributors/Consultants:** Valdemar Švábenský, Jan Vykopal

Feel free to contact [Valdemar Švábenský](mailto:svabensky@ics.muni.cz?subject=Junior%20Hacker%20Cybersecurity%20Game) if you have any feedback or suggestions. Also, the hints, solutions, and flag values for the game are available on request. 
