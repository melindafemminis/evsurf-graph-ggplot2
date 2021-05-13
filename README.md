# Graph with R and ggplot2

Graphique en petits multiples de l'évolution de la surface d'habitat et d'infrastructure par habitant pour 23 cantons suisse pour la période allant de 1979-85 à 2013-18.  

## Fichiers disponibles

- le fichier *script-surfhab.r* contient le script R permettant de recreer le graphique. 
- les données se trouvent dans le dosser *data*: on y trouve un fichier excel avec les données originales récupérées sur le site de l'Office Fédéral de la Statistique suisse, un fichier excel des données sans autres informations et le fichier csv utilisé par le *script-surfhab.r*. 
- le fichier *analyses.rmd* contient la mise en situation, le raisonnement menant aux différents choix faits lors de la création du graphique et une évaluation de l'efficacité de celui-ci.
- *graphique-pm.pdf* est le graphique

## Données
Les données viennent de l'**Office fédéral de la statistique** suisse.  
L'indicateur **surface d'habitat et d'infrastrcuture par habitant** est calculé à partir de 3 autres indicateurs: statistique de la superficie,  statistique de l’état annuel de la population et statistique de la population et des ménages STATPOP (dès 2011). La statistique de la surperficie prend plusieurs années à être mise à jours et c'est pour cela que l'indicateur utilisé pour ce projet n'est pas disponible annuellement. 

## Recréer le graphique

Pour recréer le graphique localement, suivre les étapes suivantes: 

1. Télécharger le repository
2. Ouvrir **script-surfhab.r* avec R studio
3. Vérifier la localisation du fichier csv
4. Lancer le script


Projet  créé pour le cours de *Visualisation et Analyse des Données Géographiques* donné par C. Kaiser à l'Université de Lausanne - semestre de printemps 2021. 
