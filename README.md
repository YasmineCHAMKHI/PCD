# PCD
# Système de reconnaissance des activités humaines de la vie quotidienne  

## Description  
Application mobile destinée aux proches permettant de **surveiller en temps réel** les activités d’une personne dépendante ou âgée via des capteurs domotiques non‑intrusifs. L’IA analyse les données (mouvement, porte, température…) pour détecter automatiquement les activités quotidiennes et alerter en cas d’anomalie

## Fonctionnalités  
- **Gestion du profil** : création et modification des informations personnelles et préférences 
- **Suivi en temps réel** des activités via les données des capteurs  
- **Consultation de l’historique** filtrable par date
- **Consultation des statistiques** filtrable par date
- **Génération de rapports** personnalisés (PDF/CSV) pour analyses médicales ou partage

## Étapes de réalisation du projet

### 1. Conception IA (méthodologie CRISP‑DM)  
1. **Compréhension du métier** : définition des objectifs et contraintes 
2. **Compréhension des données** : exploration du jeu Milan (structure, qualité)  
3. **Préparation & annotation** : nettoyage, structuration et étiquetage des segments  
4. **Segmentation & extraction d’attributs** : fenêtres adaptatives, caractéristiques temporelles et capteurs 
5. **Modélisation** : comparaison de Naive Bayes, SVM, Decision Tree et Random Forest
6. **Évaluation & déploiement** : validation croisée, matrice de confusion et intégration du modèle dans le backend 

### 2. Développement de l’application mobile  
 **Conception architecturale** – Architecture trois‑tiers :  
   - *Frontend* (Flutter, MVC)  
   - *Backend* (Flask REST)  
   - *Base de données* (Firebase)   


   - *Interface de profile*
   - ![Image](https://github.com/user-attachments/assets/4b23cce2-d424-4343-98c2-e03ed1d896b9)                           ![Image](https://github.com/user-attachments/assets/10757671-dbe0-4131-916d-2c2538501a13)
   

---
