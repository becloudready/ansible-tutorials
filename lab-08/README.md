# Lab 08 - Deploy Apache NiFi with Docker

This lab provisions a single-node Apache NiFi instance by running the official Docker image on your target host.

## Prerequisites
- An inventory entry for the machine that should run NiFi. Assign the host to a `nifi` group, for example:
  ```ini
  [nifi]
  nifi-node ansible_host=10.0.0.10 ansible_user=ec2-user
  ```
- Python 3 and network access to download Docker packages on the managed host.
- Install the required Ansible collection on the control node:
  ```bash
  ansible-galaxy collection install community.docker
  ```

## Usage
```bash
cd ansible/lab-08/
ansible-playbook -i ../inventory/ansible-nodes deploy-nifi.yml \
  -e "nifi_admin_password=SomeSecurePassword"
```

The playbook will install Docker, start the service, pull the latest `apache/nifi` container image, and expose NiFi over HTTPS on port `8443`. Use the credentials provided through `nifi_admin_username` and `nifi_admin_password` to sign in.

### Customisation
The defaults for the container live in `roles/nifi_single_node/defaults/main.yml`. Override them with `-e` or group variables to adjust the exposed port, container name, or data directory.
