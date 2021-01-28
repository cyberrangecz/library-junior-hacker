# Cybersecurity game "Junior hacker training"

This cybersecurity game allows a hands-on demonstration and practice of topics such as network scanning, SSH connections, and password cracking. It is suitable for undergraduate students in computing.

The sandbox for the game was generated using the [Cyber Sandbox Creator](https://gitlab.ics.muni.cz/muni-kypo-csc/cyber-sandbox-creator).

## Requirements

* A standard personal computer or laptop with Windows, Linux, or Mac OS X operating system.
* At least 4 GB of free RAM and 4 vCPU (virtual CPU) cores.
* At least 20 GB of free disk space.
* Internet connection.
* Install the prerequisites for the [Cyber Sandbox Creator](https://gitlab.ics.muni.cz/muni-kypo-csc/cyber-sandbox-creator/-/wikis/Installation), namely: Vagrant, VirtualBox, and have virtualization enabled.

## Instructions

1. Clone this repository locally.

2. Open a command-line interface in the repository's root folder.

3. Run the command `vagrant up`. This will instantiate the sandbox for the game. If you experience any technical issues at this stage, check out the [Cyber Sandbox Creator wiki](https://gitlab.ics.muni.cz/muni-kypo-csc/cyber-sandbox-creator/-/wikis/Known-Issues) for troubleshooting tips. If you need to define any Ansible variables, use `ANSIBLE_ARGS` when Ansible is executed, such as `ANSIBLE_ARGS='--extra-vars "student_id=12345"' vagrant up`.

4. Log into the attacker machine: either via VirtualBox GUI using the login `root` and password `toor`, or via the command `vagrant ssh attacker` and escalate your privileges to `root`.

5. Follow the assignments and the storyline in the `game_design.md` file.

## License

This project is licensed under the [MIT license](LICENSE) for the code (Vagrant and Ansible) and [CC BY 4.0](https://creativecommons.org/licenses/by/4.0) license for the game design.

## Credits and contact

**[Cybersecurity Laboratory](https://kypo.fi.muni.cz)**\
**Faculty of Informatics**\
**Masaryk University**

**Leading author:** Miriam Gáliková

**Contributors/Consultants:** Valdemar Švábenský, Jan Vykopal

Feel free to contact [Valdemar Švábenský](mailto:svabensky@ics.muni.cz?subject=Junior%20Hacker%20Cybersecurity%20Game) if you have any feedback or suggestions. Also, the hints, solutions, and flag values for the game are available on request.
