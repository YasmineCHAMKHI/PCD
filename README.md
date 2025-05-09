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
1. **Conception architecturale** – Architecture trois‑tiers :  
   - *Frontend* (Flutter, MVC)  
   - *Backend* (Flask REST)  
   - *Base de données* (Firebase)   
2. **Différentes interfaces développées** :
   - *Interfaces de démarrage et de bienvenue*
   - ![Image](https://github.com/user-attachments/assets/e0e94b7d-c6f7-4c18-94b5-80ed9c607301)                          ![Image](https://github.com/user-attachments/assets/b688caf0-ab16-40a0-a544-e8cd66ab252d)
  

   - *Interfaces de connexion et d'inscription*
   - ![Image](https://github.com/user-attachments/assets/b7e4f440-fe63-458f-8a93-e2ebf41f85c0)                          ![Image](https://github.com/user-attachments/assets/a73cb4a5-1cfc-4f44-9db5-8ca565b1968d)


   - *Interface d'acceuil*
   - ![Image](https://github.com/user-attachments/assets/71b13b80-cc69-4c5a-ba99-c5f7dde568b3)                          ![Image](https://github.com/user-attachments/assets/c4773445-f57f-4beb-af67-b8a4fd2d0258)

  
   - *Interfaces de visualisation*
   - ![Image](https://github.com/user-attachments/assets/030134f7-c35c-4dcf-b9a4-7d0fcaa88159)  ![Image](https://github.com/user-attachments/assets/2d9001e9-6b46-47ee-83ea-5e053f79ada8)   ![Image](https://github.com/user-attachments/assets/7b57ab6c-e5ec-43d7-b56f-2f5a59282109)


   - *Interface de profile*
   - ![Image](https://github.com/user-attachments/assets/4b23cce2-d424-4343-98c2-e03ed1d896b9)                           ![Image](https://github.com/user-attachments/assets/10757671-dbe0-4131-916d-2c2538501a13)
   

---
