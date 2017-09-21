Role Name
=========

Reformats the filesystems on a boot and root device in preparation of being mounted by the chroot-mount role.

Requirements
------------

None

Role Variables
--------------

- boot_device_name -- Boot device name, available on /dev/.
- root_device_name: -- Root device name, available on /dev/.
- http_proxy: -- Http proxy setting to enable outbound internet connection.
- https_proxy: -- Https proxy setting to enable outbound internet connection.
- no_proxy: -- No proxy setting to enable outbound internet connection.

Dependencies
------------

Example Playbook
----------------

- name: Mount Chroot
  hosts: localhost
  roles:
   - chroot-mount
  vars:
    boot_device_name: "sdc"
    root_device_name: "sdd"
    http_proxy: "gatekeeper.company.org"
    https_proxy: "gatekeeper.company.org"
    https_proxy: "localhost,127.0.0.1,.company.org"

License
-------

BSD

Author Information
------------------

Alex Ethier, the Mitre Corporation.
