# Les amateurs de Meursault

Ce projet vous permet de déployer rapidement via Docker, une application de rendu de données métriques d'un serveur Nodejs.

## Installation

Voici les étapes d'installation du projet.

### Prérequis
* [docker.com](https://www.docker.com/) - Docker permet de lancer des applications dans des conteneurs logiciels.
* [git-scm.com](https://git-scm.com/) - Logiciel de versioning. Permettant de récupérer le projet.

### Récupérer le projet
```shell
git clone https://github.com/YnovB3DevOps20192020/Les_amateurs-_de_Meursault.git
```
```shell
cd Les_amateurs-_de_Meursault
```

## Utilisation
Voici les étapes pour utiliser le projet.

### Démarer le conteneur docker
```shell
docker-compose up -d --build
```

### Accéder aux différentes applications
* [Serveur nodejs (http://localhost:3001/metrics)](http://localhost:3001/metrics) - Accéder à l'application nodejs et au données métrique brute.

* [Prometheus (http://localhost:9000)](http://localhost:9000) - Accéder à l'interface de Prometheus.

* [Grafana (http://localhost:3000)](http://localhost:3000) - Accéder à Grafana, l'application qui présente sous forme de dashboards et panneaux des données métriques.
  Les identifiants par défaut sont admin et admin.

### Utilisation de Grafana
Dans le menu de gauche, aller dans Dashboards > Manage et accéder au dashboard en cliquant sur Dashboard qui se trouve dans General.
Le dashboard sera ensuite accessible rapidement sur page d'accueil.

Le dashboard présentera les différents panneaux de données métriques.

Pour modifier l'échelle de temps des données métriques, cliquer sur le bouton en haut à droite, représenté par une horloge.

#### Les données métriques
Le dashboard présente 4 panneaux de données métriques.

Process CPU Seconds Total: Mesure l'utilisation totale du processeur par le serveur NodeJS.

Memory Usage: Mesure l'utilisation total de mémoire ram par le serveur NodeJS.

NodeJS Eventloop lag seconds: Mesure les lag du serveur NodeJS.

NodeJS Heap Space Size Used Bytes: Espace utilisé par le serveur NodeJS.

## Sauvegarde des données
Prometheus enregistre localement toutes les données métriques, elles sont alors accessible à nouveau après avoir fermer l'application.
