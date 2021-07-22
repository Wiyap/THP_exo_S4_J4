
<h1> POO des champions, un morpion </h1>
<a href="https://www.thehackingproject.org)" ><img src="https://www.thehackingproject.org/assets/favicon/favicon-32x32-804b12d1c41c60fe721477b7c3b0a32811dc610580dd40ac92f1cc04cbd05ca4.png"> </a> PROJECT FROM THP
<br><br>
<img src="https://img.shields.io/badge/language-RUBY-red"> <br>
<br>

<img style="float:left" src="https://raw.githubusercontent.com/antcrn/test/master/Capture%20d%E2%80%99%C3%A9cran%20du%202021-07-22%2022-05-34.png" />
<br>
<br>

<pre>
git clone git@github.com:Wiyap/THP_exo_S4_J4.git
</pre>

make your bundle install :
<pre>
bundle install
</pre>


launch the program :
<pre>
ruby app.rb
</pre>

<hr>

<h2> Instructions </h2>

<h3>1. Introduction</h3>
Rien de tel que de coder un jeu pour solidifier ses bases en POO ! Nous allons donc créer un jeu de morpion, jeu hautement stratégique et follement passionnant s'il en est.

Pour ceux qui ne sont pas passé par la case morpion dans leur enfance (ou leur adolescence pour les moins hygiéniques), on vous précise 8 comportements attendus de la part du programme (par ordre d'importance) :

Le jeu ne se joue qu'à deux joueurs humains (on ne vous demande pas de coder d'intelligence artificielle aujourd'hui…);
Le programme doit commencer en demandant le prénom de chaque joueur ;
Le plateau de jeu est composé de 9 cases, chacune désignée par sa position verticale (A, B ou C) suivie de sa position horizontale (1, 2 ou 3). Exemples : la case en haut à droite s'appelle "A3" et celle en bas à droite "C3" ;
Au début de chaque tour de jeu, le programme affiche dans le terminal le plateau de jeu. Puis il demande au joueur dont c'est le tour où il souhaite jouer ;
Les joueurs jouent à tour de rôle jusqu'à que l'un d'eux gagne ou que le plateau de jeu soit rempli ;
Le programme doit détecter la fin de la partie. Si un joueur gagne, le jeu annonce son nom. S'il y a match nul, le programme doit en informer les deux joueurs ;
À la fin d'une partie, le programme doit proposer de lancer une nouvelle partie ;
Un effort sera à faire sur l'affichage du jeu dans le terminal (par ex : board affiché de façon stylée, compteur de parties, couleurs, etc.).
<h3>2. Le projet</h3>
On va pas te mentir : c'est un gros morceau auquel tu vas t'attaquer aujourd'hui. Il y aura BEAUCOUP de méthodes à écrire et elles seront réparties en plein de classes. Mais comme d'habitude dans The Hacking Project, ce qui va te permettre de t'en sortir, c'est avant tout la collaboration. Tu vas donc réaliser ce projet en pair programming et surtout ne pas hésiter à demander de l'aide à la communauté quand tu sens que tu bloques plus de 20-30 minutes sur un point.

⚠ Fonctionnalités à implémenter ⚠ : la liste est longue et rares seront les groupes qui arriveront à proposer un Morpion avec l'ensemble des fonctionnalités. Si jamais une fonctionnalité te semble trop difficile à implémenter, fais l'impasse et tente d'en implémenter une autre. Ne reste pas bloqué au risque de ne rien produire : on préfère un morpion qui ne propose pas de nouvelle partie plutôt qu'un morpion qui ne marche pas !

Pour t'aider à adopter une approche intelligente face à ce projet complexe, on va tout d'abord te donner plusieurs astuces et méthodes de travail à suivre. Ensuite, en fonction du niveau de ton groupe de pair-programming, on va te donner des pistes pour démarrer le projet : à toi de voir si tu veux partir d'une feuille blanche, avoir quelques indices ou carrément partir d'un repo déjà structuré.

Dernières consignes : on veut un programme 100% en POO (tout dans des classes)
