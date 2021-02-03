# KYPO Sandbox Forward to MAN

This role provides forwarding to MAN.

## Requirements

No requirements

## Role parameters

Mandatory parameters
* `kslf_sandbox_name` - Sandbox name
* `kslf_man_ip` - IP address of MAN 
* `kslf_pool_id` - Pool id
* `kslf_sandbox_id` - Sandbox id

Optional parameters
* `kslf_syslog_target_port` - Syslog target port

## Example Playbook

```
- hosts:
      - routers
      - hosts
  become: true
  roles:
    - role: kypo-sandbox-logging-forward
      kslf_sandbox_name: "{{ kypo_global_sandbox_name }}" 
      kslf_man_ip: "{{ hostvars['man'].man_ip_address }}"
      kslf_pool_id: "{{ kypo_global_pool_id }}"
      kslf_sandbox_id: "{{ kypo_global_sandbox_allocation_unit_id }}"

```

## Caution
Please make sure you have synchronized time of the VMs with the desired remote system, e.g. your local computer.  

License
-------

MIT
