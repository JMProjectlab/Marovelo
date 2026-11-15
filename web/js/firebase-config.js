// Configuration de l'application web Firebase de Mar'o Vélo.
// Source : console Firebase → Paramètres du projet → Vos applications → Web.
//
// Renseignée le 11/10/2026 : le site est désormais branché sur le projet
// `kervelobriere`. Les comptes sont réels et les réservations partagées.
//
// L'identifiant de projet garde l'ancien nom de l'enseigne et ne bouge pas : un
// identifiant Firebase ne se renomme pas, ce n'est pas un nom de marque mais une
// adresse, et personne d'autre que nous ne la voit. Le renommer coûterait une
// migration des comptes et des réservations, pour rien.
//
// `estConfigure()` reste le garde-fou : si ces valeurs repassaient à
// « REMPLACER », le site retomberait sur le mode local sans casser — c'est un
// repli, pas une panne.
//
// `measurementId` n'est pas repris : Google Analytics n'est pas utilisé ici,
// et une app de réservation pour un loueur familial n'a pas besoin de pister
// ses visiteurs.
//
// Ces clés ne sont pas des secrets : elles partent dans le navigateur de chaque
// visiteur. Ce qui protège les données, ce sont les règles Firestore
// (`firestore.rules` à la racine du dépôt).
//
// Voir SETUP-FIREBASE.md pour la marche à suivre côté console.

export const firebaseConfig = {
  apiKey: "AIzaSyCJE0eObcJNe7O_6c8D1AwoObA4XcrjuVQ",
  authDomain: "kervelobriere.firebaseapp.com",
  projectId: "kervelobriere",
  storageBucket: "kervelobriere.firebasestorage.app",
  messagingSenderId: "1047303198240",
  appId: "1:1047303198240:web:3186fa2e29655cf0b80e45"
};

export const estConfigure = () => firebaseConfig.apiKey !== "REMPLACER";
