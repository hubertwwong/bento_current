# Notes

These are some simple playbooks to get a vagrant to work with some basic stuff installed.
Put the bootstrap script into vagrantfile to get it to setup enough of the VM to use ansible.





# COMMANDS

## run a playbook
ansible-playbook playbook.yml

## run a play in a playbook localhost
ansible-playbook -i "localhost," -c local helloworld.yml

## adhoc
ansible all -m shell -a 'echo hello world’

## ansible galaxy

ansible-galaxy install username.rolename

Roles default to /etc/ansible
I think you can add them to your role using the include directive after that.



# GOTCHAS

## space after colon
http://docs.ansible.com/ansible/YAMLSyntax.html#gotchas


## yaml need spaces
This gives you a ton of syntax errors.



# TODO

## localhost setp

http://ansible.pickle.io/post/86598332429/running-ansible-playbook-in-localhost




# LINKS

http://docs.ansible.com/ansible/intro_getting_started.html
http://docs.ansible.com/ansible/playbooks.html
http://docs.ansible.com/ansible/playbooks_intro.html

http://ansible.pickle.io/post/86598332429/running-ansible-playbook-in-localhost
a local host setup guide.

https://www.digitalocean.com/community/tutorials/how-to-use-ansible-roles-to-abstract-your-infrastructure-environment
how to use roles.

https://www.digitalocean.com/community/tags/ansible?type=tutorials
DO tutorials

https://github.com/ansible/ansible-examples
