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

3. On Linux/Mac, run the Bash script `./start.sh <your student ID>`.\
   On Windows, run the Powershell script `.\start.ps1 <your student ID>`.\
   This will instantiate the sandbox for the game. The student ID should be a unique number at your institution.
	* This stage can take some time, please be patient :) The first setup might take up to an hour (depending on your Internet connection speed) to download the operating system boxes for Vagrant. Each subsequent setup should take from 10 to 20 minutes.
	* If you experience any technical issues at this stage, check out the [Cyber Sandbox Creator wiki](https://gitlab.ics.muni.cz/muni-kypo-csc/cyber-sandbox-creator/-/wikis/Known-Issues) for troubleshooting tips.

4. Log into the attacker machine: either via VirtualBox GUI using the login `root` and password `toor`, or via the command `vagrant ssh attacker` and escalate your privileges to `root`.

5. Follow the assignments and the storyline in the `game_design.md` file (or your institution's instance of CTFd or a similar platform).

## Information about data collection for research

We would like to ask for your consent to use anonymized data from solving the game tasks for academic research. After you create and access the game sandbox, we may collect the shell commands that you execute in the sandbox, as well the following metadata: timestamp of the command execution, working directory, username within the Vagrant box, IP address of the machine in the sandbox, and IP address of the hosting computer. After you finish playing, your personal data will be irreversibly anonymized and further used only for scientific and research purposes. By building the sandbox from this repository, you agree to these conditions.

If you require more information, you can:
* Read about our research on the website of [Cybersecurity Laboratory](https://kypo.fi.muni.cz).
* Investigate the contents of this open-source repository to check the data collection implementation for yourself.
* Contact us if you have any further questions (see the *Credits and contact* section below).

If for any reason you still feel uncomfortable with this, you can play the [plain version of the game](https://gitlab.ics.muni.cz/muni-kypo-trainings/games/junior-hacker/-/tree/version-without-command-logging) that does not contain any logging modules. However, it would help our work tremendously if you chose this version. Thank you :)

## License

This project is licensed under the [MIT license](LICENSE) for the code (Vagrant and Ansible) and [CC BY 4.0](https://creativecommons.org/licenses/by/4.0) license for the game design.

## Credits and contact

**[Cybersecurity Laboratory](https://kypo.fi.muni.cz)**\
**Faculty of Informatics**\
**Masaryk University**

**Leading author:** Miriam Gáliková

**Contributors/Consultants:** Valdemar Švábenský, Jan Vykopal

Feel free to contact [Valdemar Švábenský](mailto:svabensky@ics.muni.cz?subject=Junior%20Hacker%20Cybersecurity%20Game) if you have any feedback, questions, or suggestions.\
Also, the hints, solutions, and flag values for the game are available on request.
