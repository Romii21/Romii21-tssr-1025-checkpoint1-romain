# addUsers_pseudoCode

## Script de création de compte :


### Vérification de présence d'arguments :

Si le nombre d'argument est égal à 0.
Alors

  * Afficher : Les arguments ne sont pas présents = Le script s'arrete
  * Quitter le script

Fin si

### Vérification de l'éxistance d'un compte avant de le créer :

Pour chaque argment présenter
Faire

Si l'utilisateur existe
Alors

  * Afficher : L'utilisateur existe déja

Sinon

  * Créer l'utilisateur

   Si la création c'est bien passé
   Alors

    * Afficher : L'utilsateur a été créé

   Sinon

    * Afficher : Erreur de création

   Fin si
 Fin si
Fin Pour
