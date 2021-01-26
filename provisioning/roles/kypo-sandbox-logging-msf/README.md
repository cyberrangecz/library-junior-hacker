# KYPO Sandbox Logging Msfconsole Commands

This role provides local Metasploit command logging.

## Requirements

* Metasploit 

* This role requires root access, so you either need to specify `become` directive as a global or while invoking the role.

    ```yml
    become: yes
    ```
    
* Also requires Ansible variables, therefore do not disable directive `gather_facts`.

## Role parameters

No parameters

## Example

```
- hosts:
      - routers
      - hosts
  become: true
  roles:
    - role: kypo-sandbox-logging-msf

```