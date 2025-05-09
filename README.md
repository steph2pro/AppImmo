# mySchoolApp
application de presentation d'une ecole et college

## 🚀 Fonctionnalités

- 🎯 presentation de l'etablissement 
- 🗺️ presentation des resultats
- 📷 presentation des infrastructures
- 📊 page de contact.
- contact par whatsap

## 🛠️ Prérequis

Avant de commencer, assure-toi d’avoir installé :

- [Flutter](https://docs.flutter.dev/get-started/install) (version recommandée : X.X.X)
- [Android Studio](https://developer.android.com/studio) ou [VS Code](https://code.visualstudio.com/)
- Un appareil ou émulateur Android/iOS

## 🔧 Installation

Clone ce dépôt :

git clone https://github.com/steph2pro/mySchoolApp.git
cd NOM_DU_DEPOT
Installe les dépendances :
flutter pub get

Lance l'application sur un émulateur ou un appareil connecté :
flutter run

🧠 Architecture Logique
L’architecture logique décrit la structure du code (organisation en modules, responsabilités, couches).
Par exemple, j'utilises une architecture type Clean Architecture et elle as cette structure:

lib/
├── main.dart #Point de départ de l'app
├── src/
│   ├── core/  # Config globale, thème, routes
│   ├── features/ # Fonctionnalités métier organisées par domaine
│   ├── shared/ #Composants génériques réutilisables dans plusieurs features
│   ├── datasource/  # Accès aux données (API, BDD, etc.)

🖥️ Architecture Physique de l'application
✅ Composants principaux
Application mobile Flutter

Fonctionne hors ligne, sans connexion à Internet

Déployée sur Android (et éventuellement iOS)

Tout le contenu (textes, images, pages) est intégré localement dans l’application

Ressources embarquées

Images, textes, fichiers statiques se trouvent dans le dossier assets/

Aucun appel réseau, aucune API, aucune base de données

🔗 Communication
Aucune communication externe

Pas d’API, pas de backend distant

Aucune synchronisation de données

🧱 Schéma simplifié
+-------------------------+
|     App Flutter Mobile  |
|  (Android / iOS)        |
+-------------------------+
| - Écrans statiques      |
| - Données locales       |
| - Images / icônes       |
| - Navigation interne    |
+-------------------------+