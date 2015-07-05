Ansible Go Role
=========

Install Go via Ansible.

Requirements
------------

No requirements.

Role Variables
--------------

If you want to use another version, make sure to add the sha1 checksum file to the files folder. 

    go_version: 1.4.2

To uninstall the previous version:

    go_uninstall_previous: false

Dependencies
------------

No dependencies.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:


    ---

    - hosts: webservers
      gather_facts: yes
      sudo: no

      roles:
        - ansible-go

License
-------

MIT
