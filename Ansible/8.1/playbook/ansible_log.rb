2023-10-26 13:38:29,241 p=75022 u=root n=ansible | Using /home/k1235/devops-netology/devops-netology/Ansible/8.1/playbook/ansible.cfg as config file
2023-10-26 13:38:29,408 p=75022 u=root n=ansible | PLAY [Print os facts] *******************************************************************************************************************************************************
2023-10-26 13:38:29,414 p=75022 u=root n=ansible | TASK [Gathering Facts gather_subset=['!hardware', '!facter', '!ohai']] ******************************************************************************************************
2023-10-26 13:38:29,460 p=75022 u=root n=ansible | fatal: [centos7]: UNREACHABLE! => {"changed": false, "msg": "Failed to create temporary directory. In some cases, you may have been able to authenticate and did not have permissions on the target directory. Consider changing the remote tmp path in ansible.cfg to a path rooted in \"/tmp\", for more error information use -vvv. Failed command was: ( umask 77 && mkdir -p \"` echo ~/.ansible/tmp `\"&& mkdir \"` echo ~/.ansible/tmp/ansible-tmp-1698320309.449418-75030-44676010153839 `\" && echo ansible-tmp-1698320309.449418-75030-44676010153839=\"` echo ~/.ansible/tmp/ansible-tmp-1698320309.449418-75030-44676010153839 `\" ), exited with result 1", "unreachable": true}
2023-10-26 13:38:29,463 p=75022 u=root n=ansible | fatal: [ubuntu]: UNREACHABLE! => {"changed": false, "msg": "Failed to create temporary directory. In some cases, you may have been able to authenticate and did not have permissions on the target directory. Consider changing the remote tmp path in ansible.cfg to a path rooted in \"/tmp\", for more error information use -vvv. Failed command was: ( umask 77 && mkdir -p \"` echo ~/.ansible/tmp `\"&& mkdir \"` echo ~/.ansible/tmp/ansible-tmp-1698320309.4534314-75031-142459270748727 `\" && echo ansible-tmp-1698320309.4534314-75031-142459270748727=\"` echo ~/.ansible/tmp/ansible-tmp-1698320309.4534314-75031-142459270748727 `\" ), exited with result 1", "unreachable": true}
2023-10-26 13:38:29,463 p=75022 u=root n=ansible | PLAY RECAP ******************************************************************************************************************************************************************
2023-10-26 13:38:29,463 p=75022 u=root n=ansible | centos7                    : ok=0    changed=0    unreachable=1    failed=0    skipped=0    rescued=0    ignored=0   
2023-10-26 13:38:29,463 p=75022 u=root n=ansible | ubuntu                     : ok=0    changed=0    unreachable=1    failed=0    skipped=0    rescued=0    ignored=0   