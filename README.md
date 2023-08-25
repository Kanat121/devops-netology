# Домашнее задание к занятию 3. «Введение. Экосистема. Архитектура. Жизненный цикл Docker-контейнера»
# Задача 1
<!--Списко-->
* Сценарий выполнения задачи:.
1. создайте свой репозиторий на https://hub.docker.com;
2. выберите любой образ, который содержит веб-сервер Nginx; 
3. создайте свой fork образа;
4. реализуйте функциональность: запуск веб-сервера в фоне с индекс-страницей, содержащей HTML-код ниже:

```
<html>
<head>
Hey, Netology
</head>
<body>
<h1>Im DevOps Engineer!</h1>
</body>
</html>
```
Ответ
[Ссылка на hub.docker.com](https://hub.docker.com/r/k1235/nginx)

# Задача 2
<!--Списко-->
* Посмотрите на сценарий ниже и ответьте на вопрос: «Подходит ли в этом сценарии использование Docker-контейнеров или лучше подойдёт виртуальная машина, физическая машина? Может быть, возможны разные варианты?»

Детально опишите и обоснуйте свой выбор.
Сценарий:
  ## 1. Высоконагруженное монолитное Java веб-приложение;
      Приложение монолитное и данном случае лучше использовать ВМ.
  ## 2. Nodejs веб-приложение;
      Я думаю в данном случае лучше docker так как выгода будет в экономии ресурсов а так же скорость  развертывания.
  ## 3. Мобильное приложение c версиями для Android и iOS;
      Под android я думаю лучше docker  а вот под ios думаю из за ограничении не пойдет.
  ## 4.Шина данных на базе Apache Kafka;
      Думаю docker 
  ## 5. Elasticsearch-кластер для реализации логирования продуктивного веб-приложения — три ноды elasticsearch, два logstash и две ноды kibana;
      Docker 
  ## 6.Мониторинг-стек на базе Prometheus и Grafana;
      Я думаю здесь нужен ВМ так как моиторинг хранит много данных.
  ## 7. MongoDB как основное хранилище данных для Java-приложения;
      Для баз данных требуется высокая произволительность ВМ или физический сервер.
  ## 8.Gitlab-сервер для реализации CI/CD-процессов и приватный (закрытый) Docker Registry.
      Я думаю луше ВМ так как для репозиторий нужно много места на диске.      

      

# Задача 3
## 1.Запустите первый контейнер из образа centos c любым тэгом в фоновом режиме, подключив папку /data из текущей рабочей директории на хостовой машине в /data контейнера;
```
k1235@kk005:~/data$ docker run -d  -it -v ${PWD}:/data centos:latest 
2a26818984980d87f351d8b1dc721dc6499c8e14aca1700e4fc266d009fd373b
k1235@kk005:~/data$ docker ps
CONTAINER ID   IMAGE           COMMAND       CREATED         STATUS         PORTS     NAMES
2a2681898498   centos:latest   "/bin/bash"   5 seconds ago   Up 5 seconds             clever_ardinghelli
k1235@kk005:~/data$ 
```
## 2. Запустите второй контейнер из образа debian в фоновом режиме, подключив папку /data из текущей рабочей директории на хостовой машине в /data контейнера.
```
k1235@kk005:~/data$ docker run -d  -it -v ${PWD}:/data debian:latest 
Unable to find image 'debian:latest' locally
latest: Pulling from library/debian
de4cac68b616: Pull complete 
Digest: sha256:b91baba9c2cae5edbe3b0ff50ae8f05157e3ae6f018372dcfc3aba224acb392b
Status: Downloaded newer image for debian:latest
1f0fea3ad6d5958ded8e5155067ac7cf2da9e6fdc2ee81df30c9d11aa94fc7c1
k1235@kk005:~/data$ docker ps
CONTAINER ID   IMAGE           COMMAND   CREATED         STATUS         PORTS     NAMES
1f0fea3ad6d5   debian:latest   "bash"    6 seconds ago   Up 5 seconds             trusting_cori
k1235@kk005:~/data$ 
```
## 3. Подключитесь к первому контейнеру с помощью docker exec и создайте текстовый файл любого содержания в /data.
```
root@1f0fea3ad6d5:/data# ls
test
```
## 4.Добавьте ещё один файл в папку /data на хостовой машине.
 ```
 root@1f0fea3ad6d5:/data# ls
test  test2
```
## 5.Подключитесь во второй контейнер и отобразите листинг и содержание файлов в /data контейнера.
 ```
 k1235@kk005:~/data$ docker exec -it 9078dbf4b3ed bash
[root@9078dbf4b3ed /]# ls
bin  data  dev	etc  home  lib	lib64  lost+found  media  mnt  opt  proc  root	run  sbin  srv	sys  tmp  usr  var
[root@9078dbf4b3ed /]# cd data/
[root@9078dbf4b3ed data]# ls
test  test2
[root@9078dbf4b3ed data]# 
```
