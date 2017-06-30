[![Build Status](https://travis-ci.org/orlissenberg/ansible-go.svg)](https://travis-ci.org/orlissenberg/ansible-go)

Ansible Go Role
=========

Install Go via Ansible.

Will add /usr/local/go/bin to the PATH in /etc/profile and (if available) in /etc/zsh/zlogin.

Requirements
------------

No requirements.

Role Variables
--------------

If you want to use another version, make sure to add the sha1 checksum file to the files folder. 

    go_version: 1.8.3

To uninstall the previous version:

    go_uninstall_previous: false

Group of the go directory /usr/local/go

    go_group: staff

Disable/enable package checksum validation:

    go_checksum: True

Dependencies
------------

No dependencies.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:


    ---

    - hosts: webservers
      gather_facts: yes
      become: yes

      roles:
        - ansible-go

License
-------

MIT
