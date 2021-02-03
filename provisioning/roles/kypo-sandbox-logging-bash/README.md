KYPO Sandbox Logging Commands
=========

This role provides local terminal command logging.


## Requirements

* Bash

* This role requires root access, so you either need to specify `become` directive as a global or while invoking the role.

    ```yml
    become: yes
    ```

* Also requires Ansible variables, therefore do not disable directive `gather_facts`. 

## Role parameters

No parameters

## Example Playbook

```
- hosts:
      - routers
      - hosts
  become: true
  roles:
    - role: kypo-sandbox-logging-bash

```