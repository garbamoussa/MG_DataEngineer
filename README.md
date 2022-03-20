



Classe Traitement


Cette classe est utilisée pour extraire les articles pour chaque médicament. 

Cette classe contient 3 fonctions :
    
    create_graph() : Cette fonction crée un Dataframe afin de représenter le graphique. Nous choisissons de représenter le graphique sous forme de Dataframe car nous pouvons facilement le convertir en json et il est plus facile à manipuler.


    traitement_datase() : prétraitement du jeu de données afin d'éviter les doublons et de supprimer les lignes inutiles afin de gagner du temps si nous traitons des jeux de données plus importants.

    Extraction() : Pour chaque médicament, on extrait les articles qui le citent.
    
    
Les fonctions d'extraction et de prétraitement traitent un seul jeu de données à la fois. 



J'ai choisi de les construire ainsi afin de paralléliser l'exécution pour chaque jeu de données. En effet, le graphe est créé de telle manière que nous pouvons être remplis simultanément avec les publications médicales et les articles scientifiques. Nous appliquons ensuite 'set' à la colonne journal afin d'éviter de la compter deux fois (dans le cas où deux articles du même journal citent le même médicament le même jour).



Adhoc  fonction très simple qui récupère tous les journaux dans notre graphique et utilise Counter pour avoir le nombre d'occurrences pour chaque journal.




                                            ############# INSTALLATION DE LOGICIELS  ##############

1. INSTALLER PYTHON
2. INSTALLER DOCKER





############################################################################# LANCEMENT DU PROJET #########################################################


                                                     ##################### Docker ##################


1. Aller à la racine du projet
2. Lancer la commande "**docker build -t <nom_image> .**" pour  creer l'image
3. Une fois l'image cree vous pouvez  lacez la commade **docker  push** pour le  publier sur le docker hub
4. Demarrer le projet e lancant la commnade **docker run -it <nom_image>**
5. Une menu est proposé 
6. Tapez la commande 1 sur le terminal pour voir la donné en format json ou 2   pour voir le traitement ad_hoc


                                                   ########################  EN LOCALE ##################


pour lancer le projet en locale
1. Installer d'abord les requirements.txt en executant la commande pip install requiremets.txt
2. Une fois le requiremets installés exutez la commade "**python main.py**" pour lancer le projet
3. Une menu est proposé
6. Tapez la commande 1 sur le terminal pour voir la donéé json ou 2   pour voir le traitement ad_hoc
