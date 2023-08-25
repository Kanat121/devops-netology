# Домашнее задание к занятию 2. «Применение принципов IaaC в работе с виртуальными машинами»
# Задача 1
<!--Списко-->
* Сценарий выполнения задачи:.
1. создайте свой репозиторий на https://hub.docker.com;
2. выберите любой образ, который содержит веб-сервер Nginx; 
3. создайте свой fork образа;
4. реализуйте функциональность: запуск веб-сервера в фоне с индекс-страницей, содержащей HTML-код ниже:

'''
<html>
<head>
Hey, Netology
</head>
<body>
<h1>I’m DevOps Engineer!</h1>
</body>
</html>
'''
* Какой из принципов IaaC является основополагающим?
1. Идемпотетность
# Задача 2
<!--Списко-->
* Чем Ansible выгодно отличается от других систем управление конфигурациями?
1. Легкость описывания конфигурации. 
2. Не нужен агент
* Какой, на ваш взгляд, метод работы систем конфигурации более надёжный — push или pull?
1. Push
<!--Заголовки-->
# Задача 3

Установить на личный компьютер 
<!--Списко-->
* VirtualBox
* Vagrant
* Terraform
* Ansible

Приложите вывод команд установленных версий каждой из программ, оформленный в Markdown.

```
k1235@ka:~/repository$ VBoxManage -v
6.1.38_Ubuntur153438
```
```
k1235@ka:~/repository$ vagrant -v
Vagrant 2.2.19
```
```
k1235@ka:~/repository$ ansible --version
ansible 2.10.8
  config file = None
  configured module search path = ['/home/k1235/.ansible/plugins/modules', '/usr/share/ansible/plugins/modules']
  ansible python module location = /usr/lib/python3/dist-packages/ansible
  executable location = /usr/bin/ansible
  python version = 3.10.12 (main, Jun 11 2023, 05:26:28) [GCC 11.4.0]
k1235@ka:~/repository$ 
```
# Задача 4
Воспроизведите практическую часть лекции самостоятельно.
<!--Списко-->
* Создайте виртуальную машину.
* Зайдите внутрь ВМ, убедитесь, что Docker установлен с помощью команды
```
docker ps
```
![Alt text](<Screenshot from 2023-08-22 11-59-50.png>)
